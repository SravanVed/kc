/*
 * Copyright 2005-2010 The Kuali Foundation
 *
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.osedu.org/licenses/ECL-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.iacuc;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.kuali.kra.iacuc.actions.IacucProtocolStatus;
import org.kuali.kra.iacuc.actions.assignCmt.IacucProtocolAssignCmtBean;
import org.kuali.kra.iacuc.actions.assignCmt.IacucProtocolAssignCmtRule;
import org.kuali.kra.iacuc.actions.assignCmt.IacucProtocolAssignCmtRuleImpl;
import org.kuali.kra.iacuc.actions.decision.IacucCommitteeDecision;
import org.kuali.kra.iacuc.actions.decision.IacucCommitteeDecisionRule;
import org.kuali.kra.iacuc.actions.modifysubmission.IacucProtocolModifySubmissionBean;
import org.kuali.kra.iacuc.actions.modifysubmission.IacucProtocolModifySubmissionRule;
import org.kuali.kra.iacuc.actions.modifysubmission.IacucProtocolModifySubmissionRuleImpl;
import org.kuali.kra.iacuc.actions.submit.IacucProtocolSubmitActionRule;
import org.kuali.kra.iacuc.noteattachment.SubmitIacucProtocolAttachmentProtocolRuleImpl;
import org.kuali.kra.iacuc.personnel.IacucProtocolAttachmentPersonnelRule;
import org.kuali.kra.iacuc.personnel.IacucProtocolPersonnelAuditRule;
import org.kuali.kra.iacuc.personnel.IacucProtocolUnitRule;
import org.kuali.kra.iacuc.personnel.SaveIacucProtocolPersonnelEvent;
import org.kuali.kra.iacuc.procedures.IacucProtocolStudyGroupBean;
import org.kuali.kra.iacuc.procedures.IacucProtocolStudyGroupDetailBean;
import org.kuali.kra.iacuc.protocol.funding.IacucProtocolFundingSourceAuditRule;
import org.kuali.kra.iacuc.protocol.funding.IacucProtocolFundingSourceRule;
import org.kuali.kra.iacuc.protocol.location.IacucProtocolLocationRule;
import org.kuali.kra.iacuc.protocol.reference.IacucProtocolReferenceRule;
import org.kuali.kra.iacuc.protocol.research.IacucProtocolResearchAreaAuditRule;
import org.kuali.kra.iacuc.species.IacucProtocolSpecies;
import org.kuali.kra.iacuc.species.exception.IacucProtocolException;
import org.kuali.kra.iacuc.species.exception.rule.AddProtocolExceptionEvent;
import org.kuali.kra.iacuc.species.exception.rule.AddProtocolExceptionRule;
import org.kuali.kra.iacuc.species.exception.rule.ProtocolExceptionRule;
import org.kuali.kra.iacuc.species.rule.AddProtocolSpeciesEvent;
import org.kuali.kra.iacuc.species.rule.AddProtocolSpeciesRule;
import org.kuali.kra.iacuc.species.rule.ProtocolSpeciesRule;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.kra.protocol.ProtocolDocument;
import org.kuali.kra.protocol.ProtocolDocumentRule;
import org.kuali.kra.protocol.actions.submit.ProtocolSubmitActionRule;
import org.kuali.kra.protocol.noteattachment.SubmitProtocolAttachmentProtocolRuleImpl;
import org.kuali.kra.protocol.personnel.ProtocolAttachmentPersonnelRule;
import org.kuali.kra.protocol.personnel.ProtocolPersonnelAuditRule;
import org.kuali.kra.protocol.personnel.ProtocolUnitRule;
import org.kuali.kra.protocol.protocol.funding.ProtocolFundingSourceAuditRule;
import org.kuali.kra.protocol.protocol.funding.ProtocolFundingSourceRule;
import org.kuali.kra.protocol.protocol.location.ProtocolLocationRule;
import org.kuali.kra.protocol.protocol.research.ProtocolResearchAreaAuditRule;
import org.kuali.kra.rule.event.KraDocumentEventBaseExtension;
import org.kuali.rice.krad.document.Document;

/**
 * Main Business Rule class for <code>{@link IacucProtocolDocument}</code>. Responsible for delegating rules to independent rule classes.
 *
 * @author Kuali Nervous System Team (kualidev@oncourse.iu.edu)
 */
public class IacucProtocolDocumentRule extends ProtocolDocumentRule<IacucCommitteeDecision> implements AddProtocolSpeciesRule, 
                                                                               AddProtocolExceptionRule, 
                                                                               IacucProtocolAssignCmtRule,
                                                                               IacucProtocolModifySubmissionRule {

    private static final String NEW_PROTOCOL_SPECIES_PATH = "iacucProtocolSpeciesHelper.newIacucProtocolSpecies";
    private static final String PROTOCOL_EXCEPTION = "Exception";
    private static final String PROTOCOL_PROCEDURE = "Procedure";

    @Override
    protected boolean processCustomSaveDocumentBusinessRules(Document document) {
        boolean valid = super.processCustomSaveDocumentBusinessRules(document);
        if(valid) {
            valid &= processProtocolSpeciesRules((IacucProtocolDocument) document);
        }
        return valid;
    }

    /**
     * This method is to validate protocol species defined and its references.
     * Protocol species are first defined in species/groups and these species/groups are
     * used in exception and procedure tabs. We need to make sure the dependency exist if user
     * tries to remove/modify existing species/groups once exception and procedures are defined.
     * @param document
     * @return
     */
    public boolean processProtocolSpeciesRules(IacucProtocolDocument document) {
        boolean valid = true;
        List<IacucProtocolException> protocolExceptions = document.getIacucProtocol().getIacucProtocolExceptions();
        List<IacucProtocolSpecies> speciesList = document.getIacucProtocol().getIacucProtocolSpeciesList();
        List<IacucProtocolStudyGroupBean> protocolStudyGroups = document.getIacucProtocol().getIacucProtocolStudyGroups();
        Set<Integer> distinctProtocolSpecies = getDistinctSpeciesList(speciesList);
        if(!isProtocolExceptionValid(protocolExceptions, distinctProtocolSpecies)) {
            reportError(NEW_PROTOCOL_SPECIES_PATH, KeyConstants.IACUC_PROTOCOL_SPECIES_DEPENDENCY_NOT_EXISTS, new String[] {PROTOCOL_EXCEPTION});
            valid = false;
        }
        if(!isProtocolProcedureValid(protocolStudyGroups, distinctProtocolSpecies)) {
            reportError(NEW_PROTOCOL_SPECIES_PATH, KeyConstants.IACUC_PROTOCOL_SPECIES_DEPENDENCY_NOT_EXISTS, new String[] {PROTOCOL_PROCEDURE});
            valid = false;
        }
        return valid;
    }

    /**
     * This method is to check if list species used in exception are valid
     * @param protocolExceptions
     * @param protocolSpecies
     * @return
     */
    protected boolean isProtocolExceptionValid(List<IacucProtocolException> protocolExceptions, Set<Integer> protocolSpecies) {
        Set<Integer> exceptionSpecies = new HashSet<Integer>();
        for(IacucProtocolException protocolException : protocolExceptions) {
            exceptionSpecies.add(protocolException.getSpeciesCode());
        }
        exceptionSpecies.removeAll(protocolSpecies);
        return exceptionSpecies.size() == 0;
    }

    /**
     * This method is to check if list species used for procedures are valid
     * @param protocolStudyGroups
     * @param protocolSpecies
     * @return
     */
    protected boolean isProtocolProcedureValid(List<IacucProtocolStudyGroupBean> protocolStudyGroups, Set<Integer> protocolSpecies) {
        Set<Integer> procedureSpecies = new HashSet<Integer>();
        for(IacucProtocolStudyGroupBean studyGroupBean : protocolStudyGroups) {
            for(IacucProtocolStudyGroupDetailBean studyGroupDetailBean : studyGroupBean.getIacucProtocolStudyGroupDetailBeans()) {
                procedureSpecies.add(studyGroupDetailBean.getSpeciesCode());
            }
        }
        procedureSpecies.removeAll(protocolSpecies);
        return procedureSpecies.size() == 0;
    }
    
    /**
     * This method is to get a disctinct list of species configured.
     * @param speciesList
     * @return
     */
    protected Set<Integer> getDistinctSpeciesList(List<IacucProtocolSpecies> speciesList) {
        Set<Integer> distinctSpecies = new HashSet<Integer>();
        for(IacucProtocolSpecies protocolSpecies : speciesList) {
            distinctSpecies.add(protocolSpecies.getSpeciesCode());
        }
        return distinctSpecies;
    }
    
    @Override
    protected String getInProgressProtocolStatusCodeHook() {
        return IacucProtocolStatus.IN_PROGRESS;
    }

    @Override
    protected ProtocolResearchAreaAuditRule getNewProtocolResearchAreaAuditRuleInstanceHook() {
        return new IacucProtocolResearchAreaAuditRule();
    }

    @Override
    public boolean processAddProtocolSpeciesBusinessRules(AddProtocolSpeciesEvent addProtocolSpeciesEvent) {
        return new ProtocolSpeciesRule().processAddProtocolSpeciesBusinessRules(addProtocolSpeciesEvent);
    }

    @Override
    public boolean processAddProtocolExceptionBusinessRules(AddProtocolExceptionEvent addProtocolExceptionEvent) {
        return new ProtocolExceptionRule().processAddProtocolExceptionBusinessRules(addProtocolExceptionEvent);
    }
    

    @Override
    protected IacucProtocolReferenceRule getNewProtocolReferenceRuleInstanceHook() {
        return new IacucProtocolReferenceRule();
    }

    @Override
    protected KraDocumentEventBaseExtension getSaveProtocolPersonnelEventHook(ProtocolDocument document) {
        return new SaveIacucProtocolPersonnelEvent(Constants.EMPTY_STRING, document);
    }

    @Override
    protected ProtocolPersonnelAuditRule getNewProtocolPersonnelAuditRuleInstanceHook() {
        return new IacucProtocolPersonnelAuditRule();
    }

    @Override
    protected ProtocolUnitRule getNewProtocolUnitRuleInstanceHook() {
        return new IacucProtocolUnitRule();
    }

    @Override
    protected ProtocolSubmitActionRule newProtocolSubmitActionRuleInstanceHook() {
        return new IacucProtocolSubmitActionRule();
    }

    @Override
    protected ProtocolLocationRule getNewProtocolLocationRuleInstanceHook() {
        return new IacucProtocolLocationRule();
    }

    @Override
    protected ProtocolFundingSourceAuditRule getNewProtocolFundingSourceAuditRuleInstanceHook() {
        return new IacucProtocolFundingSourceAuditRule();
    }

    @Override
    protected ProtocolFundingSourceRule getNewProtocolFundingSourceRuleInstanceHook() {
        return new IacucProtocolFundingSourceRule();
    }
    

    @Override
    public boolean processAssignToCommittee(ProtocolDocument document, IacucProtocolAssignCmtBean actionBean) {
        return new IacucProtocolAssignCmtRuleImpl().processAssignToCommittee(document, actionBean);
    }    

    @Override
    public ProtocolAttachmentPersonnelRule getProtocolAttachmentPersonnelRuleInstanceHook() {
        return new IacucProtocolAttachmentPersonnelRule();
    }

    @Override
    protected SubmitProtocolAttachmentProtocolRuleImpl newSubmitProtocolAttachmentProtocolRuleImplInstanceHook() {
        return new SubmitIacucProtocolAttachmentProtocolRuleImpl();
    }    

    @Override
    public boolean processModifySubmissionRule(ProtocolDocument document, IacucProtocolModifySubmissionBean actionBean) {
        return new IacucProtocolModifySubmissionRuleImpl().processModifySubmissionRule(document, actionBean);
    }

    @Override
    protected IacucCommitteeDecisionRule newCommitteeDecisionRuleInstanceHook() {
        return new IacucCommitteeDecisionRule();
    }
}

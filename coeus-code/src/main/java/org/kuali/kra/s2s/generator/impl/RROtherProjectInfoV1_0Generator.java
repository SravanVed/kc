/*
 * Copyright 2005-2014 The Kuali Foundation.
 * 
 * Licensed under the Educational Community License, Version 1.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.s2s.generator.impl;

import gov.grants.apply.forms.rrOtherProjectInfoV10.RROtherProjectInfoDocument;
import gov.grants.apply.forms.rrOtherProjectInfoV10.RROtherProjectInfoDocument.RROtherProjectInfo;
import gov.grants.apply.forms.rrOtherProjectInfoV10.RROtherProjectInfoDocument.RROtherProjectInfo.*;
import gov.grants.apply.system.attachmentsV10.AttachedFileDataType;
import gov.grants.apply.system.globalLibraryV10.YesNoDataType;
import gov.grants.apply.system.globalLibraryV10.YesNoDataType.Enum;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.xmlbeans.XmlObject;
import org.kuali.coeus.common.api.question.AnswerContract;
import org.kuali.coeus.common.api.question.AnswerHeaderContract;
import org.kuali.coeus.common.framework.org.Organization;
import org.kuali.coeus.common.specialreview.impl.bo.SpecialReviewExemption;
import org.kuali.coeus.propdev.impl.core.ProposalDevelopmentDocument;
import org.kuali.coeus.propdev.impl.specialreview.ProposalSpecialReview;
import org.kuali.coeus.propdev.api.attachment.NarrativeContract;
import org.kuali.kra.s2s.util.S2SConstants;

import java.util.ArrayList;
import java.util.List;

/**
 * Class for generating the XML object for grants.gov RROtherProjectInfoV1.0. Form is generated using XMLBean classes and is based
 * on RROtherProjectInfo schema.
 * 
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class RROtherProjectInfoV1_0Generator extends RROtherProjectInfoBaseGenerator {

    private static final Log LOG = LogFactory.getLog(RROtherProjectInfoV1_0Generator.class);
    List<? extends AnswerHeaderContract> answerHeaders;


    /**
     * 
     * This method gives information about RROtherProjectInfo of proposal special reviews based on the data in the proposal
     * development document.
     * 
     * @return rrOtherProjectInfoDocument {@link XmlObject} of type RRKeyPersonExpandedDocument.
     */
    private RROtherProjectInfoDocument getRROtherProjectInfo() {

        LOG.info("Inside RROtherProjectInfo");
        RROtherProjectInfoDocument rrOtherProjectInfoDocument = RROtherProjectInfoDocument.Factory.newInstance();
        RROtherProjectInfo rrOtherProjectInfo = RROtherProjectInfo.Factory.newInstance();
        Organization organization = pdDoc.getDevelopmentProposal().getApplicantOrganization().getOrganization();
        rrOtherProjectInfo.setFormVersion(S2SConstants.FORMVERSION_1_0);

        answerHeaders = getPropDevQuestionAnswerService().getQuestionnaireAnswerHeaders(pdDoc.getDevelopmentProposal().getProposalNumber());
        rrOtherProjectInfo.setHumanSubjectsIndicator(YesNoDataType.NO);
        rrOtherProjectInfo.setVertebrateAnimalsIndicator(YesNoDataType.NO);
        for (ProposalSpecialReview proposalSpecialReview : pdDoc.getDevelopmentProposal().getPropSpecialReviews()) {
            if (proposalSpecialReview.getSpecialReviewTypeCode() != null) {
                switch (Integer.parseInt(proposalSpecialReview.getSpecialReviewTypeCode())) {
                    case HUMAN_SUBJECT_SUPPLEMENT:
                        rrOtherProjectInfo.setHumanSubjectsIndicator(YesNoDataType.YES);
                        HumanSubjectsSupplement huSubjectsSupplement = HumanSubjectsSupplement.Factory.newInstance();
                        HumanSubjectsSupplement.ExemptionNumbers exemptionNumbers = HumanSubjectsSupplement.ExemptionNumbers.Factory
                                .newInstance();
                        HumanSubjectsSupplement.HumanSubjectIRBReviewDate huSubjectIRBReviewDate = HumanSubjectsSupplement.HumanSubjectIRBReviewDate.Factory
                                .newInstance();
                        if (proposalSpecialReview.getApprovalTypeCode() != null
                                && Integer.parseInt(proposalSpecialReview.getApprovalTypeCode()) == APPROVAL_TYPE_EXCEMPT) {
                            if (proposalSpecialReview.getExemptionTypeCodes() != null) {
                            	List<HumanSubjectsSupplement.ExemptionNumbers.ExemptionNumber.Enum> exemptionNumberList=new ArrayList<HumanSubjectsSupplement.ExemptionNumbers.ExemptionNumber.Enum>();
                            	HumanSubjectsSupplement.ExemptionNumbers.ExemptionNumber.Enum exemptionNumberEnum = null;
                                for (SpecialReviewExemption exemption : proposalSpecialReview.getSpecialReviewExemptions()) {
                                	exemptionNumberEnum = HumanSubjectsSupplement.ExemptionNumbers.ExemptionNumber.Enum.forInt(Integer.parseInt(exemption.getExemptionTypeCode()));
                                	exemptionNumberList.add(exemptionNumberEnum);
                                }
                                exemptionNumbers.setExemptionNumberArray(exemptionNumberList.toArray(new HumanSubjectsSupplement.ExemptionNumbers.ExemptionNumber.Enum[1]));
                                huSubjectsSupplement.setExemptionNumbers(exemptionNumbers);
                            }
                        }
                        if (SPECIAL_REVIEW_HUMAN_SUBJECTS.equals(proposalSpecialReview.getApprovalTypeCode())) {
                            huSubjectsSupplement.setHumanSubjectIRBReviewIndicator(YesNoDataType.YES);
                        }
                        else {
                            huSubjectsSupplement.setHumanSubjectIRBReviewIndicator(YesNoDataType.NO);
                            if (proposalSpecialReview.getApprovalDate() != null) {
                                huSubjectIRBReviewDate.setCalendarValue(s2sUtilService.convertDateToCalendar(proposalSpecialReview
                                        .getApprovalDate()));
                                huSubjectIRBReviewDate.setHumanSubjectIRBReviewIndicator(YesNoDataType.NO);
                                huSubjectsSupplement.setHumanSubjectIRBReviewDate(huSubjectIRBReviewDate);
                            }
                        }
                        if (organization != null && organization.getHumanSubAssurance() != null) {
                            huSubjectsSupplement.setHumanSubjectAssuranceNumber(organization.getHumanSubAssurance().substring(3));
                        }

                        rrOtherProjectInfo.setHumanSubjectsSupplement(huSubjectsSupplement);
                        break;

                    case VERTEBRATE_ANIMALS_SUPPLEMENT:
                        rrOtherProjectInfo.setVertebrateAnimalsIndicator(YesNoDataType.YES);
                        VertebrateAnimalsSupplement vertebrateAnimalsSupplement = VertebrateAnimalsSupplement.Factory.newInstance();
                        VertebrateAnimalsSupplement.VertebrateAnimalsIACUCApprovalDateReviewDate veApprovalDateReviewDate = VertebrateAnimalsSupplement.VertebrateAnimalsIACUCApprovalDateReviewDate.Factory
                                .newInstance();

                        if (SPECIAL_REVIEW_ANIMAL_USAGE.equals(proposalSpecialReview.getApprovalTypeCode())) {
                            vertebrateAnimalsSupplement.setVertebrateAnimalsIACUCReviewIndicator(YesNoDataType.YES);
                        }
                        else {
                            vertebrateAnimalsSupplement.setVertebrateAnimalsIACUCReviewIndicator(YesNoDataType.NO);
                            if (proposalSpecialReview.getApprovalDate() != null) {
                                veApprovalDateReviewDate.setCalendarValue(s2sUtilService
                                        .convertDateToCalendar(proposalSpecialReview.getApprovalDate()));
                                veApprovalDateReviewDate.setVertebrateAnimalsIACUCReviewIndicator(YesNoDataType.NO);
                                vertebrateAnimalsSupplement
                                        .setVertebrateAnimalsIACUCApprovalDateReviewDate(veApprovalDateReviewDate);
                            }
                        }
                        if (organization != null && organization.getHumanSubAssurance() != null) {
                            vertebrateAnimalsSupplement.setAssuranceNumber(organization.getHumanSubAssurance().substring(3));
                        }
                        rrOtherProjectInfo.setVertebrateAnimalsSupplement(vertebrateAnimalsSupplement);
                        break;
                    default:
                        break;
                }
            }
        }

        Enum answer = YesNoDataType.NO;
        String answerExplanation = "";
        /**
         * ProprietaryInformationIndicator is of YnQ type
         */
        EnvironmentalImpact environmentalImpact = EnvironmentalImpact.Factory.newInstance();
        InternationalActivities internationalActivities = InternationalActivities.Factory.newInstance();
        // Set default values for mandatory fields
        rrOtherProjectInfo.setProprietaryInformationIndicator(YesNoDataType.NO);
        environmentalImpact.setEnvironmentalImpactIndicator(YesNoDataType.NO);
        internationalActivities.setInternationalActivitiesIndicator(YesNoDataType.NO);
        String propertyInformationAnswer = getAnswer(PROPRIETARY_INFORMATION_INDICATOR, answerHeaders);
        if (propertyInformationAnswer != null && !propertyInformationAnswer.equals(NOT_ANSWERED)) {
            answer = S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(propertyInformationAnswer) ? YesNoDataType.YES : YesNoDataType.NO;
            rrOtherProjectInfo.setProprietaryInformationIndicator(answer);
        } else {
            rrOtherProjectInfo.setProprietaryInformationIndicator(null);
        }
        /**
         * EnvironmentalImpact is of YnQ type
         */
        String environmentalImpactAnswer = getAnswer(ENVIRONMENTAL_IMPACT_YNQ, answerHeaders);
       
        answer = S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(environmentalImpactAnswer) ? YesNoDataType.YES : YesNoDataType.NO;
        answerExplanation = getChildQuestionAnswer(ENVIRONMENTAL_IMPACT_YNQ, EXPLANATION, answerHeaders);
        if (environmentalImpactAnswer != null && !environmentalImpactAnswer.equals(NOT_ANSWERED)) {
            environmentalImpact.setEnvironmentalImpactIndicator(answer);              
            if (YesNoDataType.YES.equals(answer) && answerExplanation != null) {           
                EnvironmentalImpact.EnvironmentalImpactExplanation environmentalImpactExplanation = EnvironmentalImpact.EnvironmentalImpactExplanation.Factory
                    .newInstance();
                environmentalImpactExplanation.setStringValue(answerExplanation);
                environmentalImpactExplanation.setEnvironmentalImpactIndicator(answer);
                environmentalImpact.setEnvironmentalImpactExplanation(environmentalImpactExplanation);
            } else {
                environmentalImpact.setEnvironmentalImpactIndicator(YesNoDataType.NO);
            }
            if (YesNoDataType.YES.equals(answer) && answerExplanation == null) {
                environmentalImpact.setEnvironmentalImpactExplanation(null);
            }
        } else {
            environmentalImpact.setEnvironmentalImpactIndicator(null);
        }  
        if (answer.equals(YesNoDataType.YES)) {
            answerExplanation = getChildQuestionAnswer(ENVIRONMENTAL_EXEMPTION_YNQ, EXPLANATION, answerHeaders);
            String ynqAnswer = getAnswer(ENVIRONMENTAL_EXEMPTION_YNQ, answerHeaders);
            String environmentalExemptionAnswer = getAnswer(ENVIRONMENTAL_IMPACT_YNQ, answerHeaders);
            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(ynqAnswer)) {
                answer = YesNoDataType.YES;
            } else {
                answer = YesNoDataType.NO;
            }
            EnvironmentalImpact.EnvironmentalExemption environmentalExemption = EnvironmentalImpact.EnvironmentalExemption.Factory
                .newInstance();
            if (ynqAnswer != null && !ynqAnswer.equals(NOT_ANSWERED)) {
                if (!S2SConstants.PROPOSAL_YNQ_ANSWER_NA.equals(ynqAnswer)) {
                    // Answer not equal to X (not-applicable)
                    
                    environmentalExemption.setEnvironmentalExemptionIndicator(answer);
                    if (answerExplanation != null) {
                        EnvironmentalImpact.EnvironmentalExemption.EnvironmentalExemptionExplanation environmentalExemptionExplanation 
                            = EnvironmentalImpact.EnvironmentalExemption.EnvironmentalExemptionExplanation.Factory
                                .newInstance();
                        environmentalExemptionExplanation.setEnvironmentalExemptionIndicator(answer);
                        environmentalExemptionExplanation.setStringValue(answerExplanation);
                        environmentalExemption.setEnvironmentalExemptionExplanation(environmentalExemptionExplanation);
                    }
                    if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(ynqAnswer) && answerExplanation == null) {
                        environmentalExemption.setEnvironmentalExemptionExplanation(null);
                    }
                    environmentalImpact.setEnvironmentalExemption(environmentalExemption);
                }
            } else {
                environmentalExemption.setEnvironmentalExemptionIndicator(null);
            }
        }
        if(environmentalImpactAnswer == null || environmentalImpactAnswer.equals(NOT_ANSWERED)) {
            environmentalImpact = EnvironmentalImpact.Factory.newInstance();
        }
        rrOtherProjectInfo.setEnvironmentalImpact(environmentalImpact);
        /**
         * InternationalActivities is of YnQ type
         */
        String internationalActivitiesAnswer = getAnswer(INTERNATIONAL_ACTIVITIES_YNQ, answerHeaders);
        answer = S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(internationalActivitiesAnswer) ? YesNoDataType.YES : YesNoDataType.NO;
        answerExplanation = getAnswer(INTERNATIONAL_ACTIVITIES_EXPL, answerHeaders);
        if (internationalActivitiesAnswer != null && !internationalActivities.equals(NOT_ANSWERED)){
            internationalActivities.setInternationalActivitiesIndicator(answer);
        } else {
            internationalActivities.setInternationalActivitiesIndicator(null);
        }        
        if (answerExplanation != null && !answerExplanation.equals(NOT_ANSWERED)) {
            InternationalActivities.ActivitiesPartnershipsCountries activitiesPartnershipsCountries = 
                InternationalActivities.ActivitiesPartnershipsCountries.Factory.newInstance();
            
            activitiesPartnershipsCountries.setInternationalActivitiesIndicator(answer);
            activitiesPartnershipsCountries.setStringValue(answerExplanation);
            internationalActivities.setActivitiesPartnershipsCountries(activitiesPartnershipsCountries);
            if (getChildQuestionAnswer(INTERNATIONAL_ACTIVITIES_YNQ,EXPLANATION, answerHeaders) != null) {
                internationalActivities.setInternationalActivitiesExplanation(getChildQuestionAnswer(INTERNATIONAL_ACTIVITIES_YNQ,EXPLANATION, answerHeaders));
            }
        }
        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(internationalActivitiesAnswer) && answerExplanation == null) {
            internationalActivities.setActivitiesPartnershipsCountries(null);
        }
        if(internationalActivitiesAnswer == null){
            internationalActivities = InternationalActivities.Factory.newInstance();
        }
        rrOtherProjectInfo.setInternationalActivities(internationalActivities);
        /**
         * Attachments
         */
        AttachedFileDataType attachedFileDataType;
        ProjectNarrativeAttachments projectNarrativeAttachments = ProjectNarrativeAttachments.Factory.newInstance();
        AbstractAttachments abstractAttachments = AbstractAttachments.Factory.newInstance();
        for (NarrativeContract narrative : pdDoc.getDevelopmentProposal().getNarratives()) {
            if (narrative.getNarrativeType().getCode() != null) {
                if (Integer.parseInt(narrative.getNarrativeType().getCode()) == EQUIPMENT_ATTACHMENT) {
                    // EQUIPMENT
                    attachedFileDataType = getAttachedFileType(narrative);
                    if(attachedFileDataType == null){
                        continue;
                    }
                    EquipmentAttachments equipmentAttachments = EquipmentAttachments.Factory.newInstance();
                    equipmentAttachments.setEquipmentAttachment(attachedFileDataType);
                    rrOtherProjectInfo.setEquipmentAttachments(equipmentAttachments);
                }
                else if (Integer.parseInt(narrative.getNarrativeType().getCode()) == FACILITIES_ATTACHMENT) {
                    // facilities
                    attachedFileDataType = getAttachedFileType(narrative);
                    if(attachedFileDataType == null){
                        continue;
                    }
                    FacilitiesAttachments facilitiesAttachments = FacilitiesAttachments.Factory.newInstance();
                    facilitiesAttachments.setFacilitiesAttachment(attachedFileDataType);
                    rrOtherProjectInfo.setFacilitiesAttachments(facilitiesAttachments);
                }
                else if (Integer.parseInt(narrative.getNarrativeType().getCode()) == NARRATIVE_ATTACHMENT) {
                    // NARRATIVE
                    attachedFileDataType = getAttachedFileType(narrative);
                    if(attachedFileDataType != null){
                        projectNarrativeAttachments.setProjectNarrativeAttachment(attachedFileDataType);
                    }
                }
                else if (Integer.parseInt(narrative.getNarrativeType().getCode()) == BIBLIOGRAPHY_ATTACHMENT) {
                    // BIBLIOGRAPHY
                    attachedFileDataType = getAttachedFileType(narrative);
                    if(attachedFileDataType == null){
                        continue;
                    }
                    BibliographyAttachments bibliographyAttachments = BibliographyAttachments.Factory.newInstance();
                    bibliographyAttachments.setBibliographyAttachment(attachedFileDataType);
                    rrOtherProjectInfo.setBibliographyAttachments(bibliographyAttachments);
                }
                else if (Integer.parseInt(narrative.getNarrativeType().getCode()) == ABSTRACT_PROJECT_SUMMARY_ATTACHMENT) {
                    // ABSTRACT - PROJECT SUMMARY
                    attachedFileDataType = getAttachedFileType(narrative);
                    if(attachedFileDataType != null){
                        abstractAttachments.setAbstractAttachment(attachedFileDataType);
                    }
                }
            }
        }
        rrOtherProjectInfo.setProjectNarrativeAttachments(projectNarrativeAttachments);
        rrOtherProjectInfo.setAbstractAttachments(abstractAttachments);

        OtherAttachments otherAttachments = OtherAttachments.Factory.newInstance();
        otherAttachments.setOtherAttachmentArray(getAttachedFileDataTypes());
        rrOtherProjectInfo.setOtherAttachments(otherAttachments);
        
        rrOtherProjectInfoDocument.setRROtherProjectInfo(rrOtherProjectInfo);
        return rrOtherProjectInfoDocument;
    }

    /**
     * 
     * This method is used to get List of Other attachments from NarrativeAttachment
     * 
     * @return attachedFileDataTypes(AttachedFileDataType[]) Array of other attachments based on narrative type code.
     */
    private AttachedFileDataType[] getAttachedFileDataTypes() {
        LOG.info("Getting AttachedFileDataType ");
        List<AttachedFileDataType> attachedFileDataTypeList = new ArrayList<AttachedFileDataType>();
        AttachedFileDataType attachedFileDataType = null;
        for (NarrativeContract narrative : pdDoc.getDevelopmentProposal().getNarratives()) {
            if (narrative.getNarrativeType().getCode() != null
                    && (Integer.parseInt(narrative.getNarrativeType().getCode()) == OTHER_ATTACHMENT || Integer.parseInt(narrative.getNarrativeType().getCode()) == SUPPLIMENTARY_ATTACHMENT)) {
            	attachedFileDataType = getAttachedFileType(narrative);
            	if(attachedFileDataType != null){
            		attachedFileDataTypeList.add(attachedFileDataType);
            	}
                LOG.info("Attachmentcount" + attachedFileDataTypeList.size());
            }
        }
        return attachedFileDataTypeList.toArray(new AttachedFileDataType[0]);
    }

    /**
     * This method creates {@link XmlObject} of type {@link RROtherProjectInfoDocument} by populating data from the given
     * {@link ProposalDevelopmentDocument}
     * 
     * @param proposalDevelopmentDocument for which the {@link XmlObject} needs to be created
     * @return {@link XmlObject} which is generated using the given {@link ProposalDevelopmentDocument}
     * @see org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(ProposalDevelopmentDocument)
     */
    public XmlObject getFormObject(ProposalDevelopmentDocument proposalDevelopmentDocument) {
        this.pdDoc = proposalDevelopmentDocument;
        return getRROtherProjectInfo();
    }
}

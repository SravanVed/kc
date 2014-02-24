/*
 * Copyright 2005-2013 The Kuali Foundation.
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

import gov.grants.apply.forms.phs398ChecklistV11.PHS398ChecklistDocument;
import gov.grants.apply.forms.phs398ChecklistV11.PHS398ChecklistDocument.PHS398Checklist;
import gov.grants.apply.forms.phs398ChecklistV11.PHS398ChecklistDocument.PHS398Checklist.ApplicationType;
import gov.grants.apply.forms.phs398ChecklistV11.PHS398ChecklistDocument.PHS398Checklist.CertificationExplanation;
import gov.grants.apply.forms.phs398ChecklistV11.PHS398ChecklistDocument.PHS398Checklist.IncomeBudgetPeriod;
import gov.grants.apply.system.attachmentsV10.AttachedFileDataType;
import gov.grants.apply.system.globalLibraryV20.HumanNameDataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.xmlbeans.XmlObject;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.kra.bo.Rolodex;
import org.kuali.kra.budget.core.Budget;
import org.kuali.kra.budget.distributionincome.BudgetProjectIncome;
import org.kuali.kra.budget.document.BudgetDocument;
import org.kuali.kra.proposaldevelopment.bo.Narrative;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.questionnaire.answer.Answer;
import org.kuali.kra.questionnaire.answer.AnswerHeader;
import org.kuali.kra.s2s.S2SException;
import org.kuali.kra.s2s.util.S2SConstants;
import org.kuali.rice.krad.service.BusinessObjectService;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * 
 * This class is used to generate XML Document object for grants.gov
 * PHS398ChecklistV1.1. This form is generated using XMLBean API's generated by
 * compiling PHS398ChecklistV1.1 schema.
 * 
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class PHS398ChecklistV1_1Generator extends PHS398ChecklistBaseGenerator {
	private static final Log LOG = LogFactory
			.getLog(PHS398ChecklistV1_1Generator.class);
	List<AnswerHeader> answerHeaders;

	/**
	 * 
	 * This method returns PHS398ChecklistDocument object based on proposal
	 * development document which contains the PHS398ChecklistDocument
	 * informations
	 * ApplicationType,FederalID,ChangeOfPDPI,FormerPDName,ChangeOfInstitution,
	 * FormerInstitutionName,InventionsAndPatents, ProgramIncome and
	 * CertificationExplanation for a particular proposal
	 * 
	 * @return phsChecklistDocument {@link XmlObject} of type
	 *         PHS398ChecklistDocument.
	 */
	private PHS398ChecklistDocument getPHS398Checklist() {
		PHS398ChecklistDocument phsChecklistDocument = PHS398ChecklistDocument.Factory
				.newInstance();
		PHS398Checklist phsChecklist = PHS398Checklist.Factory.newInstance();
		phsChecklist.setFormVersion(S2SConstants.FORMVERSION_1_1);
		ApplicationType.Enum applicationEnum = null;
		answerHeaders = getQuestionnaireAnswers(pdDoc.getDevelopmentProposal(), true);
		if (pdDoc.getDevelopmentProposal().getProposalTypeCode() != null
				&& Integer.parseInt(pdDoc.getDevelopmentProposal()
						.getProposalTypeCode()) < PROPOSAL_TYPE_CODE_6) {
			// Check <6 to ensure that if proposalType='TASk ORDER", it must not
			// set. THis is because enum ApplicationType has no
			// entry for TASK ORDER
			applicationEnum = ApplicationType.Enum.forInt(Integer
					.parseInt(pdDoc.getDevelopmentProposal()
							.getProposalTypeCode()));
		}
		phsChecklist.setApplicationType(applicationEnum);

		String federalId = s2sUtilService.getFederalId(pdDoc);
		if (federalId != null) {
			phsChecklist.setFederalID(federalId);
		}
		
		String pIChange = getAnswer(PROPOSAL_YNQ_QUESTION_114);
        String pIChangeExplanation = getAnswer(PROPOSAL_YNQ_QUESTION_115);        
        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(pIChange)) {
            phsChecklist.setIsChangeOfPDPI(YesNoDataType.Y_YES);
            if (pIChangeExplanation != null) {
                BusinessObjectService businessObjectService = KcServiceLocator.getService(BusinessObjectService.class);
                Rolodex rolodex = businessObjectService.findBySinglePrimaryKey(Rolodex.class, pIChangeExplanation); 
                HumanNameDataType formerPDName = globLibV20Generator
                        .getHumanNameDataType(rolodex);
                if (formerPDName != null
                        && formerPDName.getFirstName() != null
                        && formerPDName.getLastName() != null) {
                    phsChecklist.setFormerPDName(formerPDName);
                }
            }
        } else {
            phsChecklist.setIsChangeOfPDPI(YesNoDataType.N_NO);
        }
        
		String institutionChange = getAnswer(PROPOSAL_YNQ_QUESTION_116);
        String institutionChangeExplanation = getAnswer(PROPOSAL_YNQ_QUESTION_117);
        
        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(institutionChange)) {
            phsChecklist.setIsChangeOfInstitution(YesNoDataType.Y_YES);
            if (institutionChangeExplanation != null) {
                phsChecklist.setFormerInstitutionName(institutionChangeExplanation);
            }
        } else {
            phsChecklist.setIsChangeOfInstitution(YesNoDataType.N_NO);
        }
        
        String renewalApplication = getAnswer(PROPOSAL_YNQ_QUESTION_118);
        boolean hasSubQuestionExplanation = false;
        if (renewalApplication != null && !renewalApplication.equals(NOT_ANSWERED)) {
            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(renewalApplication)) {
                String inventionsConceived = getAnswer(PROPOSAL_YNQ_QUESTION_119);           
                if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(inventionsConceived)) {
                    phsChecklist.setIsInventionsAndPatents(YesNoDataType.Y_YES);
                    String reportedPreviously = getAnswer(PROPOSAL_YNQ_QUESTION_120);
                    if (reportedPreviously != null && !reportedPreviously.equals(NOT_ANSWERED)) {
                        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(reportedPreviously)) {
                            phsChecklist.setIsPreviouslyReported(YesNoDataType.Y_YES);
                        } else {
                            phsChecklist.setIsPreviouslyReported(YesNoDataType.N_NO);
                        }
                        hasSubQuestionExplanation = true;
                    }
                } else {
                    phsChecklist.setIsInventionsAndPatents(YesNoDataType.Y_YES);
                    if (hasSubQuestionExplanation) {
                        phsChecklist.setIsPreviouslyReported(YesNoDataType.N_NO);
                    }
                }
            } else {
                phsChecklist.setIsInventionsAndPatents(YesNoDataType.N_NO);
                if (hasSubQuestionExplanation) {
                    phsChecklist.setIsPreviouslyReported(YesNoDataType.N_NO);
                }
            }
        }

		Budget budget = null;
		try {
			BudgetDocument budgetDocument = s2sBudgetCalculatorService
					.getFinalBudgetVersion(pdDoc);
			budget = budgetDocument == null ? null : budgetDocument.getBudget();
		} catch (S2SException e) {
			LOG.error(e.getMessage(), e);
			return phsChecklistDocument;
		}

		if (budget != null && budget.getBudgetProjectIncomes().size() > 0) {
			setProjectIncome(phsChecklist, budget);
		} else {
			phsChecklist.setProgramIncome(YesNoDataType.N_NO);
		}
		AttachedFileDataType attachedFileDataType = null;
		for (Narrative narrative : pdDoc.getDevelopmentProposal()
				.getNarratives()) {
			if (narrative.getNarrativeTypeCode() != null
					&& Integer.parseInt(narrative.getNarrativeTypeCode()) == CERTIFICATIONS_ATTACHMENT_CODE) {
				attachedFileDataType = getAttachedFileType(narrative);
				if(attachedFileDataType != null){
					CertificationExplanation certExplanation = CertificationExplanation.Factory.newInstance();
					certExplanation.setCertifications(attachedFileDataType);
					phsChecklist.setCertificationExplanation(certExplanation);
				}
			}
		}
		phsChecklistDocument.setPHS398Checklist(phsChecklist);
		return phsChecklistDocument;
	}
	
	/**
     * 
     * This method is used to get the answer for a particular Questionnaire question
     * question based on the question id.
     * 
     * @param questionId
     *            the question id to be passed.              
     * @return returns the answer for a particular
     *         question based on the question id passed.
     */
    private String getAnswer(String questionId) {
        String answer = null;
        if (answerHeaders != null && !answerHeaders.isEmpty()) {
            for (AnswerHeader answerHeader : answerHeaders) {
                List<Answer> answerDetails = answerHeader.getAnswers();
                for (Answer answers : answerDetails) {
                    if (questionId.equals(answers.getQuestion().getQuestionId())) {
                        answer = answers.getAnswer();
                        return answer;
                    }
                }
            }
        }
        return answer;        
    }

	/**
	 * @param phsChecklist
	 * @param budget
	 */
	private void setProjectIncome(PHS398Checklist phsChecklist, Budget budget) {
		Map<Integer, IncomeBudgetPeriod> incomeBudgetPeriodMap = new TreeMap<Integer, IncomeBudgetPeriod>();
		BigDecimal anticipatedAmount;
		for (BudgetProjectIncome projectIncome : budget
				.getBudgetProjectIncomes()) {
			Integer budgetPeriodNumber = projectIncome.getBudgetPeriodNumber();
			IncomeBudgetPeriod incomeBudgPeriod = incomeBudgetPeriodMap
					.get(budgetPeriodNumber);
			if (incomeBudgPeriod == null) {
				incomeBudgPeriod = IncomeBudgetPeriod.Factory.newInstance();
				incomeBudgPeriod.setBudgetPeriod(budgetPeriodNumber.intValue());
				anticipatedAmount = BigDecimal.ZERO;
			} else {
				anticipatedAmount = incomeBudgPeriod.getAnticipatedAmount();
			}
			anticipatedAmount = anticipatedAmount.add(projectIncome.getProjectIncome().bigDecimalValue());
			incomeBudgPeriod.setAnticipatedAmount(anticipatedAmount);
			String description = getProjectIncomeDescription(projectIncome);
			if (description != null) {
				if (incomeBudgPeriod.getSource() != null) {
					incomeBudgPeriod.setSource(incomeBudgPeriod.getSource()
							+ ";" + description);
				} else {
					incomeBudgPeriod.setSource(description);
				}
			}
			incomeBudgetPeriodMap.put(budgetPeriodNumber, incomeBudgPeriod);
		}
		Collection<IncomeBudgetPeriod> incomeBudgetPeriodCollection = incomeBudgetPeriodMap
				.values();
		phsChecklist.setIncomeBudgetPeriodArray(incomeBudgetPeriodCollection
				.toArray(new IncomeBudgetPeriod[0]));
	}
	/*
	 * This method will get the project income description
	 */
	protected String getProjectIncomeDescription(BudgetProjectIncome projectIncome) {
		String description = null;
		if (projectIncome.getDescription() != null) {
			if (projectIncome.getDescription().length() > PROJECT_INCOME_DESCRIPTION_MAX_LENGTH) {
				description = projectIncome.getDescription().substring(0,
						PROJECT_INCOME_DESCRIPTION_MAX_LENGTH);
			} else {
				description = projectIncome.getDescription();
			}
		}
		return description;
	}
	/**
	 * This method creates {@link XmlObject} of type
	 * {@link PHS398ChecklistDocument} by populating data from the given
	 * {@link ProposalDevelopmentDocument}
	 * 
	 * @param proposalDevelopmentDocument
	 *            for which the {@link XmlObject} needs to be created
	 * @return {@link XmlObject} which is generated using the given
	 *         {@link ProposalDevelopmentDocument}
	 * @see org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(ProposalDevelopmentDocument)
	 */
	public XmlObject getFormObject(
			ProposalDevelopmentDocument proposalDevelopmentDocument) {
		this.pdDoc = proposalDevelopmentDocument;
		return getPHS398Checklist();
	}

	/**
	 * This method typecasts the given {@link XmlObject} to the required
	 * generator type and returns back the document of that generator type.
	 * 
	 * @param xmlObject
	 *            which needs to be converted to the document type of the
	 *            required generator
	 * @return {@link XmlObject} document of the required generator type
	 * @see org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject
	 */
	public XmlObject getFormObject(XmlObject xmlObject) {
		PHS398Checklist phsChecklist = (PHS398Checklist) xmlObject;
		PHS398ChecklistDocument phsChecklistDocument = PHS398ChecklistDocument.Factory
				.newInstance();
		phsChecklistDocument.setPHS398Checklist(phsChecklist);
		return phsChecklistDocument;
	}

}

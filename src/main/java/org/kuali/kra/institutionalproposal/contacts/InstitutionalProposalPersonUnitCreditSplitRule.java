/*
 * Copyright 2006-2008 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
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
package org.kuali.kra.institutionalproposal.contacts;


/**
 * This class...
 */
public interface InstitutionalProposalPersonUnitCreditSplitRule {

    String PROPOSAL_CREDIT_SPLIT_LIST_ERROR_KEY = "document.institutionalProposalList[0].projectPersons.institutionalProposalPersonCreditSplits";
    String PROPOSAL_PERSON_CREDIT_SPLIT_ERROR_MSG_KEY = "error.award.person.credit.split.error";
    
    /**
     * Check if the {@link InvestigatorCreditType} requires totals add to 100
     * @param event
     * @return
     */
    boolean checkInstitutionalProposalPersonUnitCreditSplitTotals(InstitutionalProposalPersonUnitCreditSplitRuleEvent event);
}

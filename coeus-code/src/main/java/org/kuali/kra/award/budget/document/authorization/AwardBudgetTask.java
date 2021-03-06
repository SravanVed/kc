/*
 * Copyright 2005-2014 The Kuali Foundation
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
package org.kuali.kra.award.budget.document.authorization;

import org.kuali.coeus.sys.framework.auth.task.Task;
import org.kuali.kra.award.budget.document.AwardBudgetDocument;
import org.kuali.kra.infrastructure.TaskGroupName;

public class AwardBudgetTask extends Task {
    
    private AwardBudgetDocument awardBudgetDocument;
    public AwardBudgetTask(String taskName, AwardBudgetDocument awardbudgetDocument) {
        super(TaskGroupName.AWARD_BUDGET, taskName);
        this.awardBudgetDocument = awardbudgetDocument;
    }
    /**
     * Gets the awardBudgetDocument attribute. 
     * @return Returns the awardBudgetDocument.
     */
    public AwardBudgetDocument getAwardBudgetDocument() {
        return awardBudgetDocument;
    }
    /**
     * Sets the awardBudgetDocument attribute value.
     * @param awardBudgetDocument The awardBudgetDocument to set.
     */
    public void setAwardBudgetDocument(AwardBudgetDocument awardBudgetDocument) {
        this.awardBudgetDocument = awardBudgetDocument;
    }

}

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
package org.kuali.coeus.propdev.impl.attachment.institute;

public interface ReplaceInstituteAttachmentRule extends AddInstituteAttachmentRule {

    /**
     * Rule invoked upon replacing an institute attachment within a
     * <code>{@link org.kuali.coeus.propdev.impl.core.ProposalDevelopmentDocument}</code>

     * @param event The <code>{@link ReplaceInstituteAttachmentEvent}</code> that triggered this rule to run.
     * @return true if the business rules pass, false otherwise.
     */
    public boolean processReplaceInstituteAttachmentBusinessRules(ReplaceInstituteAttachmentEvent event);
    
}

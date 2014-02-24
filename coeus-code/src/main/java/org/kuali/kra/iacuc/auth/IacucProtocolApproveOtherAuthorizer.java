/*
 * Copyright 2005-2010 The Kuali Foundation
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
package org.kuali.kra.iacuc.auth;

import org.kuali.coeus.sys.framework.workflow.KcWorkflowService;
import org.kuali.kra.iacuc.IacucProtocolDocument;

public class IacucProtocolApproveOtherAuthorizer  extends IacucProtocolAuthorizer {

    private KcWorkflowService kraWorkflowService;

    /**
     * {@inheritDoc}
     * @see org.kuali.kra.protocol.auth.ProtocolAuthorizerBase#isAuthorized(java.lang.String, org.kuali.kra.protocol.auth.ProtocolTaskBase)
     */
    public boolean isAuthorized(String userId, IacucProtocolTask task) {
        IacucProtocolDocument protocolDocument = (IacucProtocolDocument) task.getProtocol().getProtocolDocument();

        return kraWorkflowService.isUserActionRequested(protocolDocument, userId) && 
               kraWorkflowService.isUserAdHocRequestRecipient(protocolDocument, userId, null) && 
               !kraWorkflowService.isUserRouteRespRequestRecipient(protocolDocument, userId, null);
    }

    public KcWorkflowService getKraWorkflowService() {
        return kraWorkflowService;
    }

    public void setKraWorkflowService(KcWorkflowService kraWorkflowService) {
        this.kraWorkflowService = kraWorkflowService;
    }
}

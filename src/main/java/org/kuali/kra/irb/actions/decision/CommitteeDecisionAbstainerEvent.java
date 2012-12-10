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
package org.kuali.kra.irb.actions.decision;

import org.apache.commons.logging.Log;
import org.kuali.kra.irb.ProtocolDocument;
import org.kuali.kra.protocol.actions.decision.CommitteeDecisionAbstainerEventBase;

/**
 * 
 * This class...
 */
@SuppressWarnings({ "unchecked", "rawtypes" })
public class CommitteeDecisionAbstainerEvent extends CommitteeDecisionAbstainerEventBase {
    
    private static final org.apache.commons.logging.Log LOG = org.apache.commons.logging.LogFactory.getLog(CommitteeDecisionAbstainerEvent.class);
    
    public CommitteeDecisionAbstainerEvent(ProtocolDocument document, CommitteeDecision decision) {
        super(document, decision);
    }


    @Override
    protected Log getLOGHook() {
        return LOG;
    }
    
// TODO ********************** commented out during IRB backfit ************************    
//    private CommitteeDecision actionBean;
//    
//    /**
//     * 
//     * Constructs a CommitteeDecisionAbstainerEvent.java.
//     * @param document
//     * @param decision
//     */
//    public CommitteeDecisionAbstainerEvent(ProtocolDocument document, CommitteeDecision decision) {
//        super("Recording Committee Decision " + getDocumentId(document), "", document);
//        this.actionBean = decision;
//    }
//
//    @Override
//    protected void logEvent() {
//        StringBuffer logMessage = new StringBuffer(StringUtils.substringAfterLast(this.getClass().getName(), "."));
//        logMessage.append(" with ");
//
//        // vary logging detail as needed
//        if (this.actionBean == null) {
//            logMessage.append("null actionBean");
//        } else {
//            logMessage.append(actionBean.toString());
//        }
//
//        LOG.debug(logMessage);
//
//    }
//
//    public Class<ExecuteCommitteeDecisionAbstainerRule> getRuleInterfaceClass() {
//        return ExecuteCommitteeDecisionAbstainerRule.class;
//    }
//
//    public boolean invokeRuleMethod(BusinessRule rule) {
//        return ((ExecuteCommitteeDecisionAbstainerRule) rule).proccessCommitteeDecisionAbstainerRule((ProtocolDocument) this.getDocument(),
//                this.actionBean);
//    }

}

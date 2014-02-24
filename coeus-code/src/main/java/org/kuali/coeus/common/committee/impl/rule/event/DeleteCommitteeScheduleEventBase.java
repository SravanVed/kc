/*
 * Copyright 2005-2013 The Kuali Foundation
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
package org.kuali.coeus.common.committee.impl.rule.event;

import org.kuali.coeus.common.committee.impl.bo.CommitteeScheduleBase;
import org.kuali.coeus.common.committee.impl.document.CommitteeDocumentBase;
import org.kuali.coeus.common.committee.impl.rules.DeleteCommitteeScheduleRuleBase;
import org.kuali.coeus.common.committee.impl.web.struts.form.schedule.ScheduleData;
import org.kuali.coeus.sys.framework.rule.KcBusinessRule;
import org.kuali.rice.krad.document.Document;

import java.util.List;

/**
 * 
 * This class is the rule event for deleting committee schedule.
 */
public abstract class DeleteCommitteeScheduleEventBase extends CommitteeScheduleEventBase<DeleteCommitteeScheduleRuleBase> {
    
    private static final String MSG = "deleting CommitteeScheduleBase ";
    
    /**
     * 
     * Constructs a DeleteCommitteeScheduleEventBase.java.
     * @param errorPathPrefix
     * @param document
     * @param scheduleData
     * @param committeeSchedules
     * @param type
     */
    public DeleteCommitteeScheduleEventBase(String errorPathPrefix, CommitteeDocumentBase document, ScheduleData scheduleData, List<CommitteeScheduleBase> committeeSchedules, ErrorType type) {
        super(MSG + getDocumentId(document), errorPathPrefix, document, scheduleData, committeeSchedules, type);
    }
    
    /**
     * 
     * Constructs a DeleteCommitteeScheduleEventBase.java.
     * @param errorPathPrefix
     * @param document
     * @param scheduleData
     * @param committeeSchedules
     * @param type
     */
    public DeleteCommitteeScheduleEventBase(String errorPathPrefix, Document document, ScheduleData scheduleData,
            List<CommitteeScheduleBase> committeeSchedules, ErrorType type) {
        this(errorPathPrefix, (CommitteeDocumentBase) document, scheduleData, committeeSchedules, type);
    }
    
    @SuppressWarnings("unchecked")
    @Override
    public KcBusinessRule getRule() {
        return getNewDeleteCommitteeScheduleRuleInstanceHook();
    }

    protected abstract DeleteCommitteeScheduleRuleBase getNewDeleteCommitteeScheduleRuleInstanceHook();
    
}

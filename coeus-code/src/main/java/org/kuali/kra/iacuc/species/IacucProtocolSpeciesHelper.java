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
package org.kuali.kra.iacuc.species;

import org.kuali.coeus.sys.framework.auth.task.TaskAuthorizationService;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.kra.iacuc.IacucProtocol;
import org.kuali.kra.iacuc.IacucProtocolForm;
import org.kuali.kra.iacuc.auth.IacucProtocolTask;
import org.kuali.kra.infrastructure.TaskName;
import org.kuali.kra.protocol.auth.ProtocolTaskBase;
import org.kuali.rice.krad.util.GlobalVariables;

import java.io.Serializable;

public class IacucProtocolSpeciesHelper implements Serializable{

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = -2090976351003068814L;

    protected IacucProtocolForm form;
    
    protected IacucProtocolSpecies newIacucProtocolSpecies;

    public IacucProtocolSpeciesHelper(IacucProtocolForm form) {
        setForm(form); 
        setNewIacucProtocolSpecies(new IacucProtocolSpecies());
    }    
    
    public void prepareView() {
    }
    
    public IacucProtocolForm getForm() {
        return form;
    }

    public void setForm(IacucProtocolForm form) {
        this.form = form;
    }

    public boolean isModifyProtocolSpecies() {
        final ProtocolTaskBase task = new IacucProtocolTask(TaskName.MODIFY_IACUC_PROTOCOL_SPECIES, (IacucProtocol) form.getProtocolDocument().getProtocol());
        return getTaskAuthorizationService().isAuthorized(GlobalVariables.getUserSession().getPrincipalId(), task);
    }

    public IacucProtocolSpecies getNewIacucProtocolSpecies() {
        return newIacucProtocolSpecies;
    }

    public void setNewIacucProtocolSpecies(IacucProtocolSpecies newIacucProtocolSpecies) {
        this.newIacucProtocolSpecies = newIacucProtocolSpecies;
    }

    protected TaskAuthorizationService getTaskAuthorizationService() {
        return KcServiceLocator.getService(TaskAuthorizationService.class);
    }

}

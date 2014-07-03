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
package org.kuali.kra.s2s.service.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.xmlbeans.XmlOptions;
import org.kuali.kra.s2s.S2SException;
import org.kuali.kra.s2s.formmapping.FormMappingInfo;
import org.kuali.kra.s2s.formmapping.FormMappingService;
import org.kuali.kra.s2s.generator.S2SFormGenerator;
import org.kuali.kra.s2s.service.S2SFormGeneratorService;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * 
 * This class is used as a service implementation that is used to create instances of opportunity form generator classes. It
 * provides an abstraction level over the different generator class implementations.
 * 
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
@Component("s2SFormGeneratorService")
public class S2SFormGeneratorServiceImpl implements S2SFormGeneratorService {
    private static final Log LOG = LogFactory.getLog(S2SFormGeneratorServiceImpl.class);

    @Autowired
    @Qualifier("formMappingService")
    private FormMappingService formMappingService;

    @Autowired
    private ApplicationContext applicationContext;

    /**
     *
     * This method is used to create and return a form generator instance. Based on the namespace provided as parameter, it
     * instantiates the respective generator class and returns it.
     * 
     * @param namespace name space of the generator.
     * @return S2SFormGenerator form generator instances corresponding to the name space.
     * @throws S2SException if generator could not be loaded
     * @throws org.kuali.kra.s2s.S2SException if form generator for given namespace is not available
     */
    public final S2SFormGenerator getS2SGenerator(String proposalNumber,String namespace) throws S2SException {
        FormMappingInfo formInfo = formMappingService.getFormInfo(proposalNumber,namespace);
        S2SFormGenerator formGenerator = (S2SFormGenerator) applicationContext.getBean(formInfo.getGeneratorName());
        if (formGenerator == null) {
            throw new S2SException("Generator not found with name: " + formInfo.getGeneratorName());
        }

        return formGenerator;
    }


    public XmlOptions getXmlOptionsPrefixes() {
        XmlOptions xmlOptions = new XmlOptions();
        Map<String, String> prefixMap = new HashMap<String, String>();
        prefixMap.put(
                "http://apply.grants.gov/system/MetaGrantApplication", "");
        prefixMap.put(
                "http://apply.grants.gov/forms/RR_SubawardBudget-V1.0",
                "RR_SubawardBudget");
        prefixMap.put(
                "http://apply.grants.gov/forms/RR_SubawardBudget-V1.1",
                "RR_SubawardBudget");
        prefixMap.put(
                "http://apply.grants.gov/forms/RR_SubawardBudget-V1.2",
                "RR_SubawardBudget");
        

        xmlOptions.setSaveSuggestedPrefixes(prefixMap);
        return xmlOptions;
    }

    public FormMappingService getFormMappingService() {
        return formMappingService;
    }

    public void setFormMappingService(FormMappingService formMappingService) {
        this.formMappingService = formMappingService;
    }

    public ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
}

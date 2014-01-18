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
package org.kuali.kra.test.infrastructure;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.junit.runner.notification.RunListener;
import org.kuali.kra.test.infrastructure.lifecycle.KcIntegrationTestMainLifecycle;
import org.kuali.rice.coreservice.api.parameter.Parameter;
import org.kuali.rice.coreservice.framework.CoreFrameworkServiceLocator;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;
import org.kuali.rice.kns.util.KNSGlobalVariables;
import org.kuali.rice.krad.UserSession;
import org.kuali.rice.krad.util.GlobalVariables;
import org.kuali.rice.krad.util.MessageMap;

import java.lang.reflect.Method;
import java.util.HashMap;

/**
 * This class serves as a base test class for all KC unit tests. It handles ensuring all of the necessary lifecycles are properly
 * launched, started and stopped.
 */
@RunWith(KcIntegrationTestRunner.class)
public class KcIntegrationTestBase implements KcIntegrationTestMethodAware {
    // non static Log to allow it to be named after the runtime class
    protected final Log LOG = LogFactory.getLog(this.getClass());

    private static final KcIntegrationTestMainLifecycle LIFECYCLE = new KcIntegrationTestMainLifecycle();
    private static final RunListener RUN_LISTENER = new KcIntegrationTestRunListener(LIFECYCLE);
    private static final String DEFAULT_USER = "quickstart";
    private static final String MEM_STAT_FORMAT = "[%1$-7s] total: %2$10d, free: %3$10d";

    private long startTime;
    private long totalMem;
    private long freeMem;
    
    private Method method;
    
    /**
     * This method executes before each unit test and ensures the necessary lifecycles have been started
     * @throws Exception 
     */
    @Before
    public final void baseBeforeTest() {
        logBeforeRun();
        LIFECYCLE.startPerTest(true);
        GlobalVariables.setMessageMap(new MessageMap());
        KNSGlobalVariables.setAuditErrorMap(new HashMap());
        GlobalVariables.setUserSession(new UserSession(DEFAULT_USER));
    }

    /**
     * This method executes after each unit test and makes sure the necessary lifecycles have been stopped
     */
    @After
    public final void baseAfterTest() {
        GlobalVariables.setMessageMap(new MessageMap());
        KNSGlobalVariables.setAuditErrorMap(new HashMap());
        GlobalVariables.setUserSession(null);
        LIFECYCLE.stopPerTest();
        logAfterRun();
    }
    
    @BeforeClass
    public static void baseBeforeClass() {
        if (!LIFECYCLE.isPerSuiteStarted()) {
            LIFECYCLE.startPerSuite();
        }
        LIFECYCLE.startPerClass();
    }
    
    @AfterClass
    public static void baseAfterClass() {
        LIFECYCLE.stopPerClass();
    }

    /**
     * This method returns the <code>RunListener</code> needed to ensure the KC persistent lifecycles shut down properly
     * @return the RunListener responsible for shutting down all KC persistent lifecycles
     */
    static RunListener getRunListener() {
        return RUN_LISTENER;
    }

    /**
     * This method is called by the <code>KcIntegrationTestRunner</code> and passes the method being called so the required lifecycles can
     * be determined.
     * 
     * @param method the <code>Method</code> being called by the current test
     * 
     * @see KcIntegrationTestMethodAware#setTestMethod(java.lang.reflect.Method)
     */
    public final void setTestMethod(Method method) {
        this.method = method;
    }
    
    private void logBeforeRun() {
        if (LOG.isInfoEnabled()) {
            statsBegin();
            LOG.info("##############################################################");
            LOG.info("# Starting test " + getFullTestName() + "...");
            LOG.info("##############################################################");
        }
    }

    private void logAfterRun() {
        if (LOG.isInfoEnabled()) {
            LOG.info("##############################################################");
            LOG.info("# ...finished test " + getFullTestName());
            for (String stat : statsEnd()) {
                LOG.info("# " + stat);
            }
            LOG.info("##############################################################");
        }
    }
    
    private void statsBegin() {
        startTime = System.currentTimeMillis();
        totalMem = Runtime.getRuntime().totalMemory();
        freeMem = Runtime.getRuntime().freeMemory();
    }

    private String[] statsEnd() {
        long currentTime = System.currentTimeMillis();
        long currentTotalMem = Runtime.getRuntime().totalMemory();
        long currentFreeMem = Runtime.getRuntime().freeMemory();
        return new String[]{
                String.format(MEM_STAT_FORMAT, "MemPre", totalMem, freeMem),
                String.format(MEM_STAT_FORMAT, "MemPost", currentTotalMem, currentFreeMem),
                String.format(MEM_STAT_FORMAT, "MemDiff", totalMem-currentTotalMem, freeMem-currentFreeMem),
                String.format("[ElapsedTime] %1$d ms", currentTime-startTime)
        };
    }
    
    protected String getFullTestName() {
        return getClass().getSimpleName() + "." + (method != null ? method.getName() : "UNKNOWN");
    }

    protected void updateParameterForTesting(Class componentClass, String parameterName, String newValue) {
        final ParameterService parameterService = CoreFrameworkServiceLocator.getParameterService();

        Parameter parameter = parameterService.getParameter(componentClass, parameterName);
        Parameter.Builder parameterForUpdate = Parameter.Builder.create(parameter);
        parameterForUpdate.setValue(newValue);
        parameterService.updateParameter(parameterForUpdate.build());
    }
}

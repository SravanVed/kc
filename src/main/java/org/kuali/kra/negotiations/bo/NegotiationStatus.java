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
package org.kuali.kra.negotiations.bo;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;

import org.kuali.kra.bo.KraPersistableBusinessObjectBase;

/**
 * 
 * This class handles the various statuses of a negotiation.
 */
public class NegotiationStatus extends NegotiationsGroupingBase implements Serializable {
    
    public static final String CODE_IN_PROGRESS = "IP";
    public static final String CODE_COMPLETED = "COM";
    public static final String CODE_SUSPENDED = "SP";

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = -12710508760973677L;

    /**
     * 
     * Constructs a NegotiationStatus.java.
     */
    public NegotiationStatus() {
        super();
    }
}
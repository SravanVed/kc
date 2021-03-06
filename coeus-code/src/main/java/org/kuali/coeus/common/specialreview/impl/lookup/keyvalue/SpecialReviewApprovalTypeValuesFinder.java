/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.coeus.common.specialreview.impl.lookup.keyvalue;

import org.kuali.coeus.sys.framework.keyvalue.PrefixValuesFinder;
import org.kuali.coeus.sys.framework.keyvalue.SortedValuesFinder;
import org.kuali.kra.bo.SpecialReviewApprovalType;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.keyvalues.KeyValuesFinder;
import org.kuali.rice.krad.keyvalues.PersistableBusinessObjectValuesFinder;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;

import java.util.List;

/**
 * See {@link #getKeyValues()}.
 */
public class SpecialReviewApprovalTypeValuesFinder extends UifKeyValuesFinderBase {
    
    private final KeyValuesFinder finder;
    
    /**
     * Creates the SpecialReviewApprovalTypeValuesFinder setting any internal dependencies to defaults
     */
    public SpecialReviewApprovalTypeValuesFinder() {
        PersistableBusinessObjectValuesFinder boFinder = new PersistableBusinessObjectValuesFinder();
        boFinder.setBusinessObjectClass(SpecialReviewApprovalType.class);
        boFinder.setKeyAttributeName("approvalTypeCode");
        boFinder.setLabelAttributeName("description");
        this.finder = new PrefixValuesFinder(new SortedValuesFinder(boFinder));
    }
    
    /**
     * Creates the SpecialReviewApprovalTypeValuesFinder setting the wrapped finder.
     * @param aFinder the finder
     * @throws NullPointerException if the finder is null
     */
    SpecialReviewApprovalTypeValuesFinder(final KeyValuesFinder aFinder) {
        if (aFinder == null) {
            throw new NullPointerException("the finder is null");
        }
        
        this.finder = aFinder;
    }
    
    /**
     * Gets the keyvalue pair for {@link SpecialReviewApprovalType SpecialReviewApprovalType}.
     * The key is the exemptionTypeCode and the value is the description.
     * 
     * @return a list of {@link KeyValue KeyValue}
     */
    @Override
    public List<KeyValue> getKeyValues() {
        @SuppressWarnings("unchecked")
        final List<KeyValue> exemptionTypes = this.finder.getKeyValues();
        return exemptionTypes;
    }
}

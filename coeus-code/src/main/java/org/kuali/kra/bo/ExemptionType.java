/*
 * Copyright 2005-2013 The Kuali Foundation
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
package org.kuali.kra.bo;

import org.kuali.coeus.sys.framework.model.KcPersistableBusinessObjectBase;

import javax.persistence.*;

@Entity
@Table(name = "EXEMPTION_TYPE")
public class ExemptionType extends KcPersistableBusinessObjectBase implements Comparable<ExemptionType> {

    @Id
    @Column(name = "EXEMPTION_TYPE_CODE")
    private String exemptionTypeCode;

    @Column(name = "DESCRIPTION")
    private String description;

    @Column(name = "DETAILED_DESCRIPTION")
    @Lob
    private String detailedDescription;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getExemptionTypeCode() {
        return exemptionTypeCode;
    }

    public void setExemptionTypeCode(String exemptionTypeCode) {
        this.exemptionTypeCode = exemptionTypeCode;
    }

    public String getDetailedDescription() {
        return detailedDescription;
    }

    public void setDetailedDescription(String detailedDescription) {
        this.detailedDescription = detailedDescription;
    }

    public int compareTo(ExemptionType o) {
        return this.description.compareTo(o.description);
    }
}

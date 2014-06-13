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
package org.kuali.kra.bo;

import java.sql.Date;
import javax.persistence.*;

import org.kuali.coeus.common.budget.framework.rate.AbstractBudgetRate;
import org.kuali.coeus.common.budget.framework.rate.RateClass;
import org.kuali.coeus.common.budget.framework.rate.RateType;
import org.kuali.coeus.common.framework.unit.Unit;
import org.kuali.coeus.sys.api.model.ScaleTwoDecimal;
import org.kuali.coeus.sys.framework.model.KcPersistableBusinessObjectBase;
import org.kuali.coeus.sys.framework.persistence.BooleanNFConverter;
import org.kuali.coeus.sys.framework.persistence.ScaleTwoDecimalConverter;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.rice.core.api.mo.common.active.MutableInactivatable;

@MappedSuperclass
public abstract class AbstractInstituteRate extends KcPersistableBusinessObjectBase implements Comparable<AbstractInstituteRate>, AbstractInstituteRateKey, MutableInactivatable {

    private static final long serialVersionUID = -2136003574701633349L;

    @Id
    @Column(name = "FISCAL_YEAR")
    private String fiscalYear;

    @Id
    @Column(name = "ON_OFF_CAMPUS_FLAG")
    @Convert(converter = BooleanNFConverter.class)
    private Boolean onOffCampusFlag;

    @Id
    @Column(name = "RATE_CLASS_CODE")
    private String rateClassCode;

    @Id
    @Column(name = "RATE_TYPE_CODE")
    private String rateTypeCode;

    @Id
    @Column(name = "START_DATE")
    private Date startDate;

    @Transient
    private String unitNumber;

    @Column(name = "INSTITUTE_RATE")
    @Convert(converter = ScaleTwoDecimalConverter.class)
    private ScaleTwoDecimal instituteRate;

    @Transient
    private ScaleTwoDecimal externalApplicableRate;

    @ManyToOne(fetch = FetchType.LAZY, cascade = { CascadeType.REFRESH })
    @JoinColumn(insertable = false, updatable = false)
    private RateClass rateClass;

    @ManyToOne(fetch = FetchType.LAZY, cascade = { CascadeType.REFRESH })
    @JoinColumns({ @JoinColumn(name = "RATE_CLASS_CODE", referencedColumnName = "RATE_CLASS_CODE", insertable = false, updatable = false), @JoinColumn(name = "RATE_TYPE_CODE", referencedColumnName = "RATE_TYPE_CODE", insertable = false, updatable = false) })
    private RateType rateType;

    @Transient
    private Unit unit;

    @Transient
    private Boolean active = Boolean.TRUE;

    @Transient
    private boolean nonEditableRateFlag;

    public final boolean isActive() {
        return active;
    }

    public final void setActive(boolean active) {
        this.active = active;
    }

    public RateClass getRateClass() {
        return rateClass;
    }

    public void setRateClass(RateClass rateClass) {
        this.rateClass = rateClass;
    }

    public RateType getRateType() {
        return rateType;
    }

    public void setRateType(RateType rateType) {
        this.rateType = rateType;
    }

    public String getFiscalYear() {
        return fiscalYear;
    }

    public void setFiscalYear(String fiscalYear) {
        this.fiscalYear = fiscalYear;
    }

    public Boolean getOnOffCampusFlag() {
        return onOffCampusFlag;
    }

    public void setOnOffCampusFlag(Boolean onOffCampusFlag) {
        this.onOffCampusFlag = onOffCampusFlag;
    }

    public String getRateClassCode() {
        return rateClassCode;
    }

    public void setRateClassCode(String rateClassCode) {
        this.rateClassCode = rateClassCode;
    }

    public String getRateTypeCode() {
        return rateTypeCode;
    }

    public void setRateTypeCode(String rateTypeCode) {
        this.rateTypeCode = rateTypeCode;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getUnitNumber() {
        return unitNumber;
    }

    public void setUnitNumber(String unitNumber) {
        this.unitNumber = unitNumber;
    }

    public ScaleTwoDecimal getInstituteRate() {
        return instituteRate;
    }

    public void setInstituteRate(ScaleTwoDecimal rate) {
        this.instituteRate = rate;
    }

    public String getRateClassType() {
        return rateClass.getRateClassTypeCode();
    }

    public int compareTo(AbstractInstituteRate abstractInstituteRate) {
        int result = getRateType().getDescription().compareTo(abstractInstituteRate.getRateType().getDescription());
        result = result != 0 ? result : getFiscalYear().compareTo(abstractInstituteRate.getFiscalYear());
        result = result != 0 ? result : getOnOffCampusFlag().compareTo(abstractInstituteRate.getOnOffCampusFlag());
        return result;
    }

    public Unit getUnit() {
        return unit;
    }

    public void setUnit(Unit unit) {
        this.unit = unit;
    }

    public String getRateKeyAsString() {
        return new StringBuilder(getRateClassCode()).append(getRateTypeCode()).append(getLocationFlagAsString(getOnOffCampusFlag().booleanValue())).append(getStartDate()).toString();
    }

    protected AbstractBudgetRate createBudgetRate() {
        throw new UnsupportedOperationException("Cannot create BudgetRate.");
    }

    private String getLocationFlagAsString(boolean campusFlag) {
        return campusFlag ? Constants.ON_CAMUS_FLAG : Constants.OFF_CAMUS_FLAG;
    }

    /**
     * Gets the nonEditableRateFlag attribute. 
     * @return Returns the nonEditableRateFlag.
     */
    public boolean getNonEditableRateFlag() {
        return nonEditableRateFlag;
    }

    /**
     * Sets the nonEditableRateFlag attribute value.
     * @param nonEditableRateFlag The nonEditableRateFlag to set.
     */
    public void setNonEditableRateFlag(boolean nonEditableRateFlag) {
        this.nonEditableRateFlag = nonEditableRateFlag;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((active == null) ? 0 : active.hashCode());
        result = prime * result + ((fiscalYear == null) ? 0 : fiscalYear.hashCode());
        result = prime * result + ((instituteRate == null) ? 0 : instituteRate.hashCode());
        result = prime * result + ((onOffCampusFlag == null) ? 0 : onOffCampusFlag.hashCode());
        result = prime * result + ((rateClass == null) ? 0 : rateClass.hashCode());
        result = prime * result + ((rateClassCode == null) ? 0 : rateClassCode.hashCode());
        result = prime * result + ((rateType == null) ? 0 : rateType.hashCode());
        result = prime * result + ((rateTypeCode == null) ? 0 : rateTypeCode.hashCode());
        result = prime * result + ((startDate == null) ? 0 : startDate.hashCode());
        result = prime * result + ((unit == null) ? 0 : unit.hashCode());
        result = prime * result + ((unitNumber == null) ? 0 : unitNumber.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        AbstractInstituteRate other = (AbstractInstituteRate) obj;
        if (active == null) {
            if (other.active != null)
                return false;
        } else if (!active.equals(other.active))
            return false;
        if (fiscalYear == null) {
            if (other.fiscalYear != null)
                return false;
        } else if (!fiscalYear.equals(other.fiscalYear))
            return false;
        if (instituteRate == null) {
            if (other.instituteRate != null)
                return false;
        } else if (!instituteRate.equals(other.instituteRate))
            return false;
        if (onOffCampusFlag == null) {
            if (other.onOffCampusFlag != null)
                return false;
        } else if (!onOffCampusFlag.equals(other.onOffCampusFlag))
            return false;
        if (rateClass == null) {
            if (other.rateClass != null)
                return false;
        } else if (!rateClass.equals(other.rateClass))
            return false;
        if (rateClassCode == null) {
            if (other.rateClassCode != null)
                return false;
        } else if (!rateClassCode.equals(other.rateClassCode))
            return false;
        if (rateType == null) {
            if (other.rateType != null)
                return false;
        } else if (!rateType.equals(other.rateType))
            return false;
        if (rateTypeCode == null) {
            if (other.rateTypeCode != null)
                return false;
        } else if (!rateTypeCode.equals(other.rateTypeCode))
            return false;
        if (startDate == null) {
            if (other.startDate != null)
                return false;
        } else if (!startDate.equals(other.startDate))
            return false;
        if (unit == null) {
            if (other.unit != null)
                return false;
        } else if (!unit.equals(other.unit))
            return false;
        if (unitNumber == null) {
            if (other.unitNumber != null)
                return false;
        } else if (!unitNumber.equals(other.unitNumber))
            return false;
        return true;
    }

    /**
     * Gets the externalApplicableRate attribute. 
     * @return Returns the externalApplicableRate.
     */
    public ScaleTwoDecimal getExternalApplicableRate() {
        return externalApplicableRate == null ? getInstituteRate() : externalApplicableRate;
    }

    /**
     * Sets the externalApplicableRate attribute value.
     * @param externalApplicableRate The externalApplicableRate to set.
     */
    public void setExternalApplicableRate(ScaleTwoDecimal externalApplicableRate) {
        this.externalApplicableRate = externalApplicableRate;
    }
}

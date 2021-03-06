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
package org.kuali.coeus.propdev.impl.budget.subaward;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts.upload.FormFile;
import org.kuali.coeus.propdev.api.budget.subaward.BudgetSubAwardsContract;
import org.kuali.coeus.common.framework.org.Organization;
import org.kuali.kra.budget.core.BudgetAssociate;
import org.kuali.coeus.propdev.impl.hierarchy.HierarchyMaintainable;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 * 
 * This class maintains the attributes needed for a subaward budget line.
 */
public class BudgetSubAwards extends BudgetAssociate implements HierarchyMaintainable, Comparable<BudgetSubAwards>, BudgetSubAwardsContract {


    private static final long serialVersionUID = -857485535655759499L;

    private String proposalNumber;

    private Integer subAwardNumber;

    private Integer budgetVersionNumber;

    private String comments;

    private String organizationId;
    
    private String organizationName;
    
    private Organization organization;

    private Integer subAwardStatusCode;

    private byte[] subAwardXfdFileData;

    private String subAwardXfdFileName;

    private String subAwardXmlFileData;

    private String translationComments;

    private Timestamp xfdUpdateTimestamp;

    private String xfdUpdateUser;

    private Timestamp xmlUpdateTimestamp;

    private String xmlUpdateUser;

    private String namespace;

    private String formName;

    private List<BudgetSubAwardAttachment> budgetSubAwardAttachments;

    private List<BudgetSubAwardFiles> budgetSubAwardFiles;
    
    private List<BudgetSubAwardPeriodDetail> budgetSubAwardPeriodDetails;

    private String hierarchyProposalNumber;

    private boolean hiddenInHierarchy;
    
    private transient boolean edit = false;
    private transient FormFile newSubAwardFile;
    private transient boolean newSubAwardFileError = false;

    public BudgetSubAwards() {
        budgetSubAwardAttachments = new ArrayList<BudgetSubAwardAttachment>();
        budgetSubAwardFiles = new ArrayList<BudgetSubAwardFiles>();
        budgetSubAwardPeriodDetails = new ArrayList<BudgetSubAwardPeriodDetail>();
    }

    @Override
    public String getProposalNumber() {
        return proposalNumber;
    }

    public void setProposalNumber(String proposalNumber) {
        this.proposalNumber = proposalNumber;
    }

    @Override
    public Integer getSubAwardNumber() {
        return subAwardNumber;
    }

    public void setSubAwardNumber(Integer subAwardNumber) {
        this.subAwardNumber = subAwardNumber;
    }

    @Override
    public Integer getBudgetVersionNumber() {
        return budgetVersionNumber;
    }

    public void setBudgetVersionNumber(Integer budgetVersionNumber) {
        this.budgetVersionNumber = budgetVersionNumber;
    }

    @Override
    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    @Override
    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    @Override
    public Integer getSubAwardStatusCode() {
        return subAwardStatusCode;
    }

    public void setSubAwardStatusCode(Integer subAwardStatusCode) {
        this.subAwardStatusCode = subAwardStatusCode;
    }

    @Override
    public String getSubAwardXfdFileName() {
        return subAwardXfdFileName;
    }

    public void setSubAwardXfdFileName(String subAwardXfdFileName) {
        this.subAwardXfdFileName = subAwardXfdFileName;
    }

    @Override
    public String getTranslationComments() {
        return translationComments;
    }

    public void setTranslationComments(String translationComments) {
        this.translationComments = translationComments;
    }

    @Override
    public Timestamp getXfdUpdateTimestamp() {
        return xfdUpdateTimestamp;
    }

    public void setXfdUpdateTimestamp(Timestamp xfdUpdateTimestamp) {
        this.xfdUpdateTimestamp = xfdUpdateTimestamp;
    }

    @Override
    public String getXfdUpdateUser() {
        return xfdUpdateUser;
    }

    public void setXfdUpdateUser(String xfdUpdateUser) {
        this.xfdUpdateUser = xfdUpdateUser;
    }

    @Override
    public Timestamp getXmlUpdateTimestamp() {
        return xmlUpdateTimestamp;
    }

    public void setXmlUpdateTimestamp(Timestamp xmlUpdateTimestamp) {
        this.xmlUpdateTimestamp = xmlUpdateTimestamp;
    }

    @Override
    public String getXmlUpdateUser() {
        return xmlUpdateUser;
    }

    public void setXmlUpdateUser(String xmlUpdateUser) {
        this.xmlUpdateUser = xmlUpdateUser;
    }

    /**
     * Gets the budgetSubAwardAttachments attribute. 
     * @return Returns the budgetSubAwardAttachments.
     */
    @Override
    public List<BudgetSubAwardAttachment> getBudgetSubAwardAttachments() {
        if (budgetSubAwardAttachments == null) {
            budgetSubAwardAttachments = new ArrayList<BudgetSubAwardAttachment>();
        }
        return budgetSubAwardAttachments;
    }

    public String getAttachmentContentIds() {
        final String SEPARATOR = "; ";
        StringBuilder sb = new StringBuilder();
        for (BudgetSubAwardAttachment attachment : getBudgetSubAwardAttachments()) {
            sb.append(attachment.getName());
            sb.append(SEPARATOR);
        }
        sb.deleteCharAt(sb.length() - 2);
        return sb.toString();
    }

    /**
     * Sets the budgetSubAwardAttachments attribute value.
     * @param budgetSubAwardAttachments The budgetSubAwardAttachments to set.
     */
    public void setBudgetSubAwardAttachments(List<BudgetSubAwardAttachment> budgetSubAwardAttachments) {
        this.budgetSubAwardAttachments = budgetSubAwardAttachments;
    }

    @Override
    public byte[] getSubAwardXfdFileData() {
        return subAwardXfdFileData;
    }

    public void setSubAwardXfdFileData(byte[] subAwardXfdFileData) {
        this.subAwardXfdFileData = subAwardXfdFileData;
    }

    @Override
    public String getSubAwardXmlFileData() {
        return subAwardXmlFileData;
    }

    public void setSubAwardXmlFileData(String subAwardXmlFileData) {
        this.subAwardXmlFileData = subAwardXmlFileData;
    }

    /**
     * Gets the budgetSubAwardFiles attribute. 
     * @return Returns the budgetSubAwardFiles.
     */
    @Override
    public List<BudgetSubAwardFiles> getBudgetSubAwardFiles() {
        return budgetSubAwardFiles;
    }

    /**
     * Sets the budgetSubAwardFiles attribute value.
     * @param budgetSubAwardFiles The budgetSubAwardFiles to set.
     */
    public void setBudgetSubAwardFiles(List<BudgetSubAwardFiles> budgetSubAwardFiles) {
        this.budgetSubAwardFiles = budgetSubAwardFiles;
    }

    /**
     * Gets the hierarchyProposalNumber attribute. 
     * @return Returns the hierarchyProposalNumber.
     */
    @Override
    public String getHierarchyProposalNumber() {
        return hierarchyProposalNumber;
    }

    /**
     * Sets the hierarchyProposalNumber attribute value.
     * @param hierarchyProposalNumber The hierarchyProposalNumber to set.
     */
    public void setHierarchyProposalNumber(String hierarchyProposalNumber) {
        this.hierarchyProposalNumber = hierarchyProposalNumber;
    }

    /**
     * Gets the hiddenInHierarchy attribute. 
     * @return Returns the hiddenInHierarchy.
     */
    @Override
    public boolean isHiddenInHierarchy() {
        return hiddenInHierarchy;
    }

    /**
     * Sets the hiddenInHierarchy attribute value.
     * @param hiddenInHierarchy The hiddenInHierarchy to set.
     */
    public void setHiddenInHierarchy(boolean hiddenInHierarchy) {
        this.hiddenInHierarchy = hiddenInHierarchy;
    }

    /**
     * Gets the namespace attribute. 
     * @return Returns the namespace.
     */
    @Override
    public String getNamespace() {
        return namespace;
    }

    /**
     * Sets the namespace attribute value.
     * @param namespace The namespace to set.
     */
    public void setNamespace(String namespace) {
        this.namespace = namespace;
    }

    /**
     * Gets the formName attribute. 
     * @return Returns the formName.
     */
    @Override
    public String getFormName() {
        return formName;
    }

    /**
     * Sets the formName attribute value.
     * @param formaName The formName to set.
     */
    public void setFormName(String formaName) {
        this.formName = formaName;
    }

    public boolean getEdit() {
        return edit;
    }

    public void setEdit(boolean edit) {
        this.edit = edit;
    }

    public FormFile getNewSubAwardFile() {
        return newSubAwardFile;
    }

    public void setNewSubAwardFile(FormFile newSubAwardFile) {
        this.newSubAwardFile = newSubAwardFile;
    }

    public boolean getNewSubAwardFileError() {
        return newSubAwardFileError;
    }

    public void setNewSubAwardFileError(boolean pNewSubAwardFileError) {
        this.newSubAwardFileError = pNewSubAwardFileError;
    }

    @Override
    public int compareTo(BudgetSubAwards o) {
        int retVal = -1;
        if (o != null) {
            retVal = ObjectUtils.compare(getOrganizationName(), o.getOrganizationName());
            if (retVal == 0) {
                retVal = ObjectUtils.compare(getComments(), o.getComments());
                if (retVal == 0) {
                    retVal = ObjectUtils.compare(getSubAwardXfdFileName(), o.getSubAwardXfdFileName());
                    if (retVal == 0) {
                        retVal = ObjectUtils.compare(getSubAwardNumber(), o.getSubAwardNumber());
                    }
                }
            }
        }
        return retVal;
    }

    @Override
    public List<BudgetSubAwardPeriodDetail> getBudgetSubAwardPeriodDetails() {
        return budgetSubAwardPeriodDetails;
    }

    public void setBudgetSubAwardPeriodDetails(List<BudgetSubAwardPeriodDetail> budgetSubAwardPeriodDetails) {
        this.budgetSubAwardPeriodDetails = budgetSubAwardPeriodDetails;
    }

    @Override
    public String getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(String organizationId) {
        if (!StringUtils.equals(this.organizationId, organizationId)) {
            this.organizationId = organizationId;
            refreshReferenceObject("organization");
            if (getOrganization() != null) {
                setOrganizationName(getOrganization().getOrganizationName());
            }
        }
    }

    public Organization getOrganization() {
        return organization;
    }

    public void setOrganization(Organization organization) {
        this.organization = organization;
    }
    
    public void computePeriodDetails() {
        for (BudgetSubAwardPeriodDetail detail : getBudgetSubAwardPeriodDetails()) {
            detail.computeTotal();
        }
    }
    
    public boolean hasModifiedAmounts() {
        for (BudgetSubAwardPeriodDetail detail : getBudgetSubAwardPeriodDetails()) {
            if (detail.isAmountsModified()) {
                return true;
            }
        }
        return false;
    }

}
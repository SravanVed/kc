/*
 * Copyright 2005-2013 The Kuali Foundation.
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
package org.kuali.kra.s2s.performancesite;

import gov.grants.apply.forms.performanceSite20V20.PerformanceSite20Document;
import gov.grants.apply.forms.performanceSite20V20.SiteLocationDataType;
import gov.grants.apply.forms.performanceSite20V20.PerformanceSite20Document.PerformanceSite20;
import gov.grants.apply.system.attachmentsV10.AttachedFileDataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType;

import java.util.List;

import org.apache.xmlbeans.XmlObject;
import org.kuali.coeus.common.api.org.OrganizationContract;
import org.kuali.coeus.common.api.org.OrganizationYnqContract;
import org.kuali.coeus.common.api.rolodex.RolodexContract;
import org.kuali.coeus.common.api.rolodex.RolodexService;
import org.kuali.coeus.propdev.api.location.CongressionalDistrictContract;
import org.kuali.coeus.propdev.api.location.ProposalSiteContract;
import org.kuali.coeus.propdev.impl.core.ProposalDevelopmentDocument;
import org.kuali.kra.s2s.generator.FormGenerator;
import org.kuali.kra.s2s.generator.S2SBaseFormGenerator;
import org.kuali.kra.s2s.util.S2SConstants;
import org.kuali.kra.s2s.validator.S2SErrorHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

/**
 * 
 * This class is used to generate XML Document object for grants.gov
 * PerformanceSiteV2.0. This form is generated using XMLBean API's generated by
 * compiling PerformanceSiteV2.0 schema.
 * 
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
@FormGenerator("PerformanceSiteV2_0Generator")
public class PerformanceSiteV2_0Generator extends S2SBaseFormGenerator {

	private static final String QUESTION_ID_FOR_INDIVIDUAL_YNQ = "30";
    private static final int PERFORMING_ORG_LOCATION_TYPE_CODE = 2;
    private static final int OTHER_ORG_LOCATION_TYPE_CODE = 3;
    private static final int PERFORMANCE_SITE_LOCATION_TYPE_CODE = 4;

    @Autowired
    @Qualifier("rolodexService")
    private RolodexService rolodexService;

	private XmlObject getPerformanceSite() {
		PerformanceSite20Document performanceSite14Document = PerformanceSite20Document.Factory
				.newInstance();
		PerformanceSite20 performanceSite14 = PerformanceSite20.Factory
				.newInstance();
		performanceSite14.setFormVersion(S2SConstants.FORMVERSION_2_0);
		setOtherSites(performanceSite14);
		AttachedFileDataType attachedFile = getAttachedFileDataType("40");
		if(attachedFile!=null){
		    performanceSite14.setAttachedFile(attachedFile);
		}
		performanceSite14Document.setPerformanceSite20(performanceSite14);
		return performanceSite14Document;
	}


	private void setSiteLocationDataType(
			SiteLocationDataType siteLocationDataType, OrganizationContract organization) {
		if (organization.getOrganizationYnqs() != null
				&& !organization.getOrganizationYnqs().isEmpty()) {
			for (OrganizationYnqContract organizationYnq : organization
					.getOrganizationYnqs()) {
				if (organizationYnq.getQuestionId().equals(
						QUESTION_ID_FOR_INDIVIDUAL_YNQ)) {
					YesNoDataType.Enum answer = organizationYnq.getAnswer()
							.equals("Y") ? YesNoDataType.Y_YES
							: YesNoDataType.N_NO;
					siteLocationDataType.setIndividual(answer);
				}
			}
		}
	}

    private void setOtherSites(PerformanceSite20  performanceSite) {
        List<? extends ProposalSiteContract> proposalSites = pdDoc.getDevelopmentProposal().getProposalSites();
        if (proposalSites != null) {
            OrganizationContract organization = null;
            RolodexContract rolodex = null;
            SiteLocationDataType siteLocationDataType = null;
            for (ProposalSiteContract proposalSite : proposalSites) {
                switch(proposalSite.getLocationTypeCode()){
                    case(PERFORMING_ORG_LOCATION_TYPE_CODE):
                        siteLocationDataType = performanceSite.addNewPrimarySite();
                        organization = proposalSite.getOrganization();
                        setSiteLocationDataType(siteLocationDataType, organization);
                        rolodex = rolodexService.getRolodex(organization.getContactAddressId());
                        break;
                    case(OTHER_ORG_LOCATION_TYPE_CODE):
                        organization = proposalSite.getOrganization();
                        rolodex = rolodexService.getRolodex(organization.getContactAddressId());
                        siteLocationDataType = performanceSite.addNewOtherSite();
                        break;
                    case(PERFORMANCE_SITE_LOCATION_TYPE_CODE):
                        organization = proposalSite.getOrganization();
                        rolodex = proposalSite.getRolodex();
                        siteLocationDataType = performanceSite.addNewOtherSite();
                        break;
                }
                if(siteLocationDataType!=null){
                    siteLocationDataType.setOrganizationName(proposalSite.getLocationName());
                    siteLocationDataType.setAddress(globLibV20Generator.getAddressDataType(rolodex));
                    if (organization!=null && organization.getDunsNumber() != null) {
                        siteLocationDataType.setDUNSNumber(organization.getDunsNumber());
                    }
                    String congressionalDistrict = getCongressionalDistrict(proposalSite);
                    if (congressionalDistrict == null) {
                        getAuditErrors().add(S2SErrorHandler.getError(S2SConstants.CONGRESSIONAL_DISTRICT));
                        siteLocationDataType.setCongressionalDistrictProgramProject(null);
                    }else{
                        siteLocationDataType.setCongressionalDistrictProgramProject(congressionalDistrict);
                    }
                }
            }
        }
    }

    private String getCongressionalDistrict(ProposalSiteContract proposalSite) {
        String congDistrictProject = null;
        for (CongressionalDistrictContract congDistrict : proposalSite.getCongressionalDistricts()) {
            congDistrictProject = congDistrict.getCongressionalDistrict();
            if (congDistrictProject != null && congDistrictProject.length() > CONGRESSIONAL_DISTRICT_MAX_LENGTH) {
                congDistrictProject = congDistrictProject.substring(0, CONGRESSIONAL_DISTRICT_MAX_LENGTH);
            }
        }
        return congDistrictProject;
    }

	/**
	 * This method creates {@link XmlObject} of type
	 * {@link PerformanceSite20Document} by populating data from the given
	 * {@link ProposalDevelopmentDocument}
	 * 
	 * @param proposalDevelopmentDocument
	 *            for which the {@link XmlObject} needs to be created
	 * @return {@link XmlObject} which is generated using the given
	 *         {@link ProposalDevelopmentDocument}
	 * @see org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(ProposalDevelopmentDocument)
	 */
	public XmlObject getFormObject(
			ProposalDevelopmentDocument proposalDevelopmentDocument) {
		this.pdDoc = proposalDevelopmentDocument;
		return getPerformanceSite();
	}

    public RolodexService getRolodexService() {
        return rolodexService;
    }

    public void setRolodexService(RolodexService rolodexService) {
        this.rolodexService = rolodexService;
    }
}

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
package org.kuali.kra.s2s.generator.impl;

import gov.grants.apply.system.globalLibraryV20.AddressDataType;
import gov.grants.apply.system.globalLibraryV20.ContactPersonDataType;
import gov.grants.apply.system.globalLibraryV20.HumanNameDataType;
import gov.grants.apply.system.universalCodesV20.CountryCodeDataType;
import gov.grants.apply.system.universalCodesV20.StateCodeDataType;
import org.apache.commons.lang3.text.WordUtils;
import org.kuali.coeus.common.api.rolodex.RolodexContract;
import org.kuali.coeus.propdev.impl.core.ProposalDevelopmentDocument;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.coeus.propdev.impl.person.ProposalPerson;
import org.kuali.coeus.common.api.country.CountryContract;
import org.kuali.coeus.common.api.state.StateContract;
import org.kuali.kra.s2s.generator.bo.DepartmentalPerson;
import org.kuali.kra.s2s.generator.bo.KeyPersonInfo;
import org.kuali.kra.s2s.service.S2SUtilService;

public class GlobalLibraryV2_0Generator {

	private S2SUtilService s2sUtilService;

	public GlobalLibraryV2_0Generator() {
		s2sUtilService = KcServiceLocator.getService(S2SUtilService.class);
	}

	/**
	 * Create a CountryCodeDataType.Enum as defined in UniversalCodes 2.0 from
	 * the given country code.
	 * 
	 * @param countryCode
	 *            The country code
	 * @return The CountryCodeDataType type corresponding to the given country
	 *         code
	 */
	public CountryCodeDataType.Enum getCountryCodeDataType(String countryCode) {
		CountryCodeDataType.Enum countryCodeDataType = null;
		CountryContract country = s2sUtilService.getCountryFromCode(countryCode);
		if (country != null) {
			StringBuilder countryDetail = new StringBuilder();
			countryDetail.append(country.getAlternateCode());
			countryDetail.append(": ");
			countryDetail.append(country.getName().toUpperCase());
			countryCodeDataType = CountryCodeDataType.Enum
					.forString(countryDetail.toString());
		}
		return countryCodeDataType;
	}

	/**
	 * Create a StateCodeDataType.Enum as defined in UniversalCodes 2.0 from the
	 * given name of the state.
	 * 
	 * @param stateName
	 *            The state name
	 * @return The StateCodeDataType type corresponding to the given State code.
	 */
	public StateCodeDataType.Enum getStateCodeDataType(String countryAlternateCode, String stateName) {
		StateCodeDataType.Enum stateCodeDataType = null;
		StateContract state = s2sUtilService.getStateFromName(countryAlternateCode, stateName);
		if (state != null) {
			StringBuilder stateDetail = new StringBuilder();
			stateDetail.append(state.getCode());
			stateDetail.append(": ");
			stateDetail.append(WordUtils.capitalizeFully(state.getName()));
			stateCodeDataType = StateCodeDataType.Enum.forString(stateDetail
					.toString());
		}
		return stateCodeDataType;
	}

	/**
	 * Create AddressDataType from rolodex entry
	 * 
	 * @param rolodex
	 *            Rolodex entry
	 * @return The AddressDataType corresponding to the rolodex entry.
	 */
	public AddressDataType getAddressDataType(RolodexContract rolodex) {

		AddressDataType addressDataType = AddressDataType.Factory.newInstance();
		if (rolodex != null) {

			String street1 = rolodex.getAddressLine1();
			addressDataType.setStreet1(street1);
			String street2 = rolodex.getAddressLine2();
			if (street2 != null && !street2.equals("")) {
				addressDataType.setStreet2(street2);
			}
			String city = rolodex.getCity();
			addressDataType.setCity(city);
			String county = rolodex.getCounty();
			if (county != null && !county.equals("")) {
				addressDataType.setCounty(county);
			}
						
			String postalCode = rolodex.getPostalCode();
			if (postalCode != null && !postalCode.equals("")) {
				addressDataType.setZipPostalCode(postalCode);
			}
			String country = rolodex.getCountryCode();
			CountryCodeDataType.Enum countryCodeDataType = getCountryCodeDataType(country);
			addressDataType.setCountry(countryCodeDataType);
			
			String state = rolodex.getState();
			if (state != null && !state.equals("")) {
				if (countryCodeDataType != null) {
					if (countryCodeDataType
							.equals(CountryCodeDataType.USA_UNITED_STATES)) {
						addressDataType.setState(getStateCodeDataType(country, state));
					} else {
						addressDataType.setProvince(state);
					}
				}
			}
		}
		return addressDataType;
	}

    /**
     * Create AddressDataType from rolodex entry
     * 
     * @param depPerson
     *            Rolodex entry
     * @return The AddressDataType corresponding to the rolodex entry.
     */
    public AddressDataType getAddressDataType(DepartmentalPerson depPerson) {

        AddressDataType addressDataType = AddressDataType.Factory.newInstance();
        if (depPerson != null) {

            String street1 = depPerson.getAddress1();
            addressDataType.setStreet1(street1);
            String street2 = depPerson.getAddress2();
            if (street2 != null && !street2.equals("")) {
                addressDataType.setStreet2(street2);
            }
            String city = depPerson.getCity();
            addressDataType.setCity(city);
            String county = depPerson.getCounty();
            if (county != null && !county.equals("")) {
                addressDataType.setCounty(county);
            }
                        
            String postalCode = depPerson.getPostalCode();
            if (postalCode != null && !postalCode.equals("")) {
                addressDataType.setZipPostalCode(postalCode);
            }
            String country = depPerson.getCountryCode();
            CountryCodeDataType.Enum countryCodeDataType = getCountryCodeDataType(country);
            addressDataType.setCountry(countryCodeDataType);
            
            String state = depPerson.getState();
            if (state != null && !state.equals("")) {
                if (countryCodeDataType != null) {
                    if (countryCodeDataType
                            .equals(CountryCodeDataType.USA_UNITED_STATES)) {
                        addressDataType.setState(getStateCodeDataType(country, state));
                    } else {
                        addressDataType.setProvince(state);
                    }
                }
            }
        }
        return addressDataType;
    }


	/**
	 * Create AddressDataType from ProposalPerson
	 * 
	 * @param person
	 *            ProposalPerson
	 * @return AddressDataType corresponding to the ProposalPerson object.
	 */
	public AddressDataType getAddressDataType(ProposalPerson person) {
		AddressDataType addressType = AddressDataType.Factory.newInstance();
		if (person != null) {
			String street1 = person.getAddressLine1();
			addressType.setStreet1(street1);
			String street2 = person.getAddressLine2();
			if (street2 != null && !street2.equals("")) {
				addressType.setStreet2(street2);
			}
			String city = person.getCity();
			addressType.setCity(city);

			String postalCode = person.getPostalCode();
			if (postalCode != null && !postalCode.equals("")) {
				addressType.setZipPostalCode(postalCode);
			}
			if (person.getCounty() != null) {
				addressType.setCounty(person.getCounty());
			}

			String county = person.getCounty();
			if (county != null && !county.equals("")) {
				addressType.setCounty(county);
			}
			String country = person.getCountryCode();
			CountryCodeDataType.Enum countryCodeDataType = getCountryCodeDataType(country);
			addressType.setCountry(countryCodeDataType);

			String state = person.getState();
			if (state != null && !state.equals("")) {
				if (countryCodeDataType != null) {
					if (countryCodeDataType
							.equals(CountryCodeDataType.USA_UNITED_STATES)) {
						addressType.setState(getStateCodeDataType(country, state));
					} else {
						addressType.setProvince(person.getState());
					}
				}

			}

		}
		return addressType;
	}

	/**
	 * Create HumanNameDataType from ProposalPerson object
	 * 
	 * @param person
	 *            ProposalPerson
	 * @return HumanNameDataType corresponding to the ProposalPerson object.
	 */
	public HumanNameDataType getHumanNameDataType(ProposalPerson person) {

		HumanNameDataType humanName = HumanNameDataType.Factory.newInstance();
		if (person != null) {
			humanName.setFirstName(person.getFirstName());
			humanName.setLastName(person.getLastName());
			String middleName = person.getMiddleName();
			if (middleName != null && !middleName.equals("")) {
				humanName.setMiddleName(middleName);
			}
		}
		return humanName;
	}

	/**
	 * Create HumanNameDataType from DepartmentalPerson object
	 * 
	 * @param person
	 *            DepartmentalPerson
	 * @return HumanNameDataType corresponding to the DepartmentalPerson object
	 */
	public HumanNameDataType getHumanNameDataType(DepartmentalPerson person) {

		HumanNameDataType humanName = HumanNameDataType.Factory.newInstance();
		if (person != null) {
			humanName.setFirstName(person.getFirstName());
			humanName.setLastName(person.getLastName());
			String middleName = person.getMiddleName();
			if (middleName != null && !middleName.equals("")) {
				humanName.setMiddleName(middleName);
			}
		}
		return humanName;
	}


	/**
	 * Create a HumanNameDataType from Rolodex object
	 * 
	 * @param rolodex
	 *            Rolodex object
	 * @return HumanNameDataType corresponding to the rolodex object.
	 */
	public HumanNameDataType getHumanNameDataType(RolodexContract rolodex) {

		HumanNameDataType humanName = HumanNameDataType.Factory.newInstance();
		if (rolodex != null) {
			humanName.setFirstName(rolodex.getFirstName());
			humanName.setLastName(rolodex.getLastName());
			String middleName = rolodex.getMiddleName();
			if (middleName != null && !middleName.equals("")) {
				humanName.setMiddleName(middleName);
			}
		}
		return humanName;
	}

	/**
	 * Create HumanNameDataType from KeyPersonInfo object
	 * 
	 * @param keyPerson
	 *            KeyPersonInfo
	 * @return HumanNameDataType corresponding to the KeyPersonInfo object
	 */
	public HumanNameDataType getHumanNameDataType(KeyPersonInfo keyPerson) {

		HumanNameDataType humanName = HumanNameDataType.Factory.newInstance();
		if (keyPerson != null) {
			humanName.setFirstName(keyPerson.getFirstName());
			humanName.setLastName(keyPerson.getLastName());
			String middleName = keyPerson.getMiddleName();
			if (middleName != null && !middleName.equals("")) {
				humanName.setMiddleName(middleName);
			}
		}
		return humanName;
	}

	/**
	 * Create ContactPersonDataType from ProposalPerson object
	 * 
	 * @param person
	 *            Proposalperson
	 * @return ContactPersonDataType created from ProposalPerson object
	 */
	public ContactPersonDataType getContactPersonDataType(ProposalPerson person) {
		ContactPersonDataType contactPerson = ContactPersonDataType.Factory
				.newInstance();
		if (person != null) {
			contactPerson.setName((getHumanNameDataType(person)));
			String phone = person.getOfficePhone();
			if (phone != null && !phone.equals("")) {
				contactPerson.setPhone(phone);
			}
			String email = person.getEmailAddress();
			if (email != null && !email.equals("")) {
				contactPerson.setEmail(email);
			}
			String title = person.getPrimaryTitle();
			if (title != null && !title.equals("")) {
				contactPerson.setTitle(title);
			}
			String fax = person.getFaxNumber();
			if (fax != null && !fax.equals("")) {
				contactPerson.setFax(fax);
			}
			contactPerson.setAddress(getAddressDataType(person));
		}
		return contactPerson;
	}


    public ContactPersonDataType getContactPersonDataType(ProposalDevelopmentDocument proposalDocument) {
        ContactPersonDataType contactPerson = ContactPersonDataType.Factory.newInstance();
        DepartmentalPerson person = s2sUtilService.getContactPerson(proposalDocument);
        if (person != null) {
            contactPerson.setName(getHumanNameDataType(person));
            String phone = person.getOfficePhone();
            if (phone != null && !phone.equals("")) {
                contactPerson.setPhone(phone);
            }
            String fax = person.getFaxNumber();
            if (fax != null && !fax.equals("")) {
                contactPerson.setFax(fax);
            }
            String email = person.getEmailAddress();
            if (email != null && !email.equals("")) {
                contactPerson.setEmail(person.getEmailAddress());
            }
            String title = person.getPrimaryTitle();
            if (title != null && !title.equals("")) {
                contactPerson.setTitle(title);
            }
            contactPerson.setAddress(getAddressDataType(person));

        }
        return contactPerson;
    }
}

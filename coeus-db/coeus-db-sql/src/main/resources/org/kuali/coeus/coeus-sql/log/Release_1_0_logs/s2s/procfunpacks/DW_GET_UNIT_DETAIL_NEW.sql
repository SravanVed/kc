CREATE OR REPLACE PROCEDURE "DW_GET_UNIT_DETAIL_NEW" 
   ( AS_UNIT_NUMBER IN VARCHAR2,
     cur_unit IN OUT Result_Sets.cur_generic) IS

BEGIN
OPEN cur_unit FOR
  SELECT OSP$UNIT.UNIT_NUMBER,
			OSP$UNIT.UNIT_NAME,
			OSP$UNIT.ADMINISTRATIVE_OFFICER,
			OSP$PERSON_A.FULL_NAME ADMINISTRATIVE_OFFICER_NAME,
			OSP$UNIT.UNIT_HEAD,
			OSP$PERSON_B.FULL_NAME UNIT_HEAD_NAME,
			OSP$UNIT.DEAN_VP,
			OSP$PERSON_C.FULL_NAME DEAN_VP_NAME,
			OSP$UNIT.OTHER_INDIVIDUAL_TO_NOTIFY,
			OSP$PERSON_D.FULL_NAME OTHER_IND_TO_NOTIFY_NAME,
			OSP$UNIT.OSP_ADMINISTRATOR,
 			OSP$PERSON_E.FULL_NAME OSP_ADMINISTRATOR_NAME,
			OSP$UNIT.UPDATE_TIMESTAMP,
         OSP$UNIT.UPDATE_USER,
		 OSP$UNIT.ORGANIZATION_ID, -- Added for Unit Enhancement - Maintaining Organization
			OSP$ORGANIZATION.ORGANIZATION_NAME -- Added for Unit Enhancement - Maintaining Organization
	FROM 	OSP$UNIT,
			OSP$UNIT UNIT_A,
			OSP$UNIT UNIT_B,
			OSP$UNIT UNIT_C,
			OSP$UNIT UNIT_D,
			OSP$UNIT UNIT_E,
			OSP$PERSON OSP$PERSON_A,
			OSP$PERSON OSP$PERSON_B,
			OSP$PERSON OSP$PERSON_C,
			OSP$PERSON OSP$PERSON_D,
			OSP$PERSON OSP$PERSON_E,
			OSP$ORGANIZATION
	WHERE	UNIT_A.ADMINISTRATIVE_OFFICER = OSP$PERSON_A.PERSON_ID (+)
		AND	UNIT_B.UNIT_HEAD = OSP$PERSON_B.PERSON_ID (+)
		AND	UNIT_C.DEAN_VP = OSP$PERSON_C.PERSON_ID (+)
		AND	UNIT_D.OTHER_INDIVIDUAL_TO_NOTIFY= OSP$PERSON_D.PERSON_ID (+)
		AND	UNIT_E.OSP_ADMINISTRATOR= OSP$PERSON_E.PERSON_ID (+)
		AND	UNIT_A.UNIT_NUMBER = OSP$UNIT.UNIT_NUMBER
		AND	UNIT_B.UNIT_NUMBER = OSP$UNIT.UNIT_NUMBER
		AND	UNIT_C.UNIT_NUMBER = OSP$UNIT.UNIT_NUMBER
		AND	UNIT_D.UNIT_NUMBER = OSP$UNIT.UNIT_NUMBER
		AND	UNIT_E.UNIT_NUMBER = OSP$UNIT.UNIT_NUMBER
		AND (LTRIM(RTRIM(OSP$UNIT.UNIT_NUMBER)) = LTRIM(RTRIM(AS_UNIT_NUMBER)))
		AND OSP$UNIT.ORGANIZATION_ID = OSP$ORGANIZATION.ORGANIZATION_ID(+);-- Added for Unit Enhancement - Maintaining Organization;
END;
/

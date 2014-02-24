DELIMITER /

CREATE TABLE SUBCONTRACT_EXP_CAT (
	AWARD_NUMBER VARCHAR(12) NOT NULL,
			
	LARGE_BUSINESS_AMT DECIMAL(12,2), 
	SMALL_BUSINESS_AMT DECIMAL(12,2), 
	WOMAN_OWNED_AMT DECIMAL(12,2), 
	A8_DISADVANTAGE_AMT DECIMAL(12,2), 
	HUB_ZONE_AMT DECIMAL(12,2), 
	VETERAN_OWNED_AMT DECIMAL(12,2), 
	SERVICE_DISABLED_VET_OWNED_AMT DECIMAL(12,2), 
	HISTORICAL_BLACK_COLLEGE_AMT DECIMAL(12,2),
	
	UPDATE_TIMESTAMP DATE NOT NULL,
	UPDATE_USER VARCHAR(60) NOT NULL,
 	VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL,
 	OBJ_ID VARCHAR(36) NOT NULL)
/

ALTER TABLE SUBCONTRACT_EXP_CAT
ADD CONSTRAINT PK_SUBCONTRACT_EXP_CAT
PRIMARY KEY (AWARD_NUMBER)
/

DELIMITER ;

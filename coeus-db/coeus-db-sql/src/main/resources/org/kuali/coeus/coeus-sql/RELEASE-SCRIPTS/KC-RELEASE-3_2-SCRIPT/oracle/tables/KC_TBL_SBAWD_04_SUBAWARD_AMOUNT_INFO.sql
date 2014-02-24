  CREATE TABLE SUBAWARD_AMOUNT_INFO 
   (	SUBAWARD_AMOUNT_INFO_ID NUMBER(12,0) NOT NULL, 
	SUBAWARD_ID NUMBER(12,0) NOT NULL,
	OBLIGATED_AMOUNT NUMBER(12,2), 
	OBLIGATED_CHANGE NUMBER(12,2), 
	ANTICIPATED_AMOUNT NUMBER(12,2), 
	ANTICIPATED_CHANGE NUMBER(12,2), 
	EFFECTIVE_DATE DATE, 
	COMMENTS VARCHAR2(300 BYTE), 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60 BYTE) NOT NULL, 
	FILE_NAME VARCHAR2(150 BYTE), 
	DOCUMENT BLOB, 
	MIME_TYPE VARCHAR2(100 BYTE), 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36 BYTE) NOT NULL, 
	FILE_ID NUMBER(22,0),
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL,
	SUBAWARD_CODE VARCHAR2(20 BYTE) NOT NULL
  )
/
ALTER TABLE SUBAWARD_AMOUNT_INFO
  ADD CONSTRAINT PK_SUBAWARD_AMOUNT_INFO PRIMARY KEY (SUBAWARD_AMOUNT_INFO_ID)
/

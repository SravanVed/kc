  CREATE TABLE SUBAWARD_STATUS 
   (	SUBAWARD_STATUS_CODE NUMBER(3,0) NOT NULL, 
	DESCRIPTION VARCHAR2(200 BYTE) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60 BYTE) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36 BYTE) NOT NULL 
  )
/
ALTER TABLE SUBAWARD_STATUS
  ADD CONSTRAINT PK_SUBAWARD_STATUS_TYPE PRIMARY KEY (SUBAWARD_STATUS_CODE)
/

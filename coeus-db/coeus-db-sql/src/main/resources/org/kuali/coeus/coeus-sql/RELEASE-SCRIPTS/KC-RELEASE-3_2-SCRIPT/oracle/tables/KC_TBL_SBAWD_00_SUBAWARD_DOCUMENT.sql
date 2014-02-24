CREATE TABLE SUBAWARD_DOCUMENT 
   (	DOCUMENT_NUMBER VARCHAR2(40 BYTE) NOT NULL, 
  UPDATE_TIMESTAMP DATE NOT NULL, 
  UPDATE_USER VARCHAR2(60 BYTE) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36 BYTE) NOT NULL
  )
/
ALTER TABLE SUBAWARD_DOCUMENT
  ADD CONSTRAINT SUBAWARD_DOCUMENTP1 PRIMARY KEY (DOCUMENT_NUMBER)
/

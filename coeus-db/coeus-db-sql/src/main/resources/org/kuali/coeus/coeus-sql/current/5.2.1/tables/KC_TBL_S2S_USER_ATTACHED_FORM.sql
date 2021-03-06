CREATE TABLE S2S_USER_ATTACHED_FORM ( 
    S2S_USER_ATTACHED_FORM_ID NUMBER(12,0) NOT NULL, 
    PROPOSAL_NUMBER VARCHAR2(8) NOT NULL, 
    NAMESPACE VARCHAR2(200), 
    FORM_NAME VARCHAR2(100), 
    FORM_FILE_NAME VARCHAR2(100), 
    FORM_FILE BLOB, 
    XML_FILE CLOB, 
    DESCRIPTION VARCHAR2(2000), 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL)
/
ALTER TABLE S2S_USER_ATTACHED_FORM 
ADD CONSTRAINT PK_S2S_USER_ATTACHED_FORM 
PRIMARY KEY (S2S_USER_ATTACHED_FORM_ID)
/
ALTER TABLE S2S_USER_ATTACHED_FORM 
ADD CONSTRAINT UQ_S2S_USER_ATTACHED_FORM 
UNIQUE (PROPOSAL_NUMBER, NAMESPACE)
/
ALTER TABLE S2S_USER_ATTACHED_FORM 
ADD CONSTRAINT FK1_S2S_USER_ATTACHED_FORM 
FOREIGN KEY (PROPOSAL_NUMBER) 
REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
/

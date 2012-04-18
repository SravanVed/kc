CREATE TABLE IACUC_EXEMPT_NUMBER ( 
    IACUC_EXEMPT_NUMBER_ID NUMBER(12,0),
    IACUC_SPECIAL_REVIEW_ID NUMBER(12,0) NOT NULL,
    EXEMPTION_TYPE_CODE VARCHAR2(3) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL)
/
ALTER TABLE IACUC_EXEMPT_NUMBER 
ADD CONSTRAINT PK_IACUC_EXEMPT_NUMBER
PRIMARY KEY (IACUC_EXEMPT_NUMBER_ID)
/

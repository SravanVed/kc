-- Table Script 
CREATE TABLE PROPOSAL_UNITS ( 
    PROPOSAL_UNITS_ID NUMBER(12,0) NOT NULL, 
    PROPOSAL_NUMBER VARCHAR2(8) NOT NULL, 
    SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
    PERSON_ID VARCHAR2(9) NOT NULL, 
    UNIT_NUMBER VARCHAR2(8) NOT NULL, 
    LEAD_UNIT_FLAG CHAR(1), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL);


-- Primary Key Constraint 
ALTER TABLE PROPOSAL_UNITS 
ADD CONSTRAINT PK_PROPOSAL_UNITS 
PRIMARY KEY (PROPOSAL_UNITS_ID);

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE PROPOSAL_UNITS 
ADD CONSTRAINT UQ_PROPOSAL_UNITS 
UNIQUE (PROPOSAL_NUMBER, SEQUENCE_NUMBER, PERSON_ID, UNIT_NUMBER);


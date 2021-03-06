-- Table Script 
CREATE TABLE PROPOSAL_CUSTOM_DATA ( 
    PROPOSAL_CUSTOM_DATA_ID NUMBER(12,0) NOT NULL, 
    PROPOSAL_ID NUMBER, 
    PROPOSAL_NUMBER VARCHAR2(10), 
    SEQUENCE_NUMBER NUMBER(8,0), 
    CUSTOM_ATTRIBUTE_ID NUMBER(12), 
    VALUE VARCHAR2(2000), 
    UPDATE_TIMESTAMP DATE, 
    UPDATE_USER VARCHAR2(60), 
    VER_NBR NUMBER(8,0) DEFAULT 1, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID());


-- Primary Key Constraint 
ALTER TABLE PROPOSAL_CUSTOM_DATA 
ADD CONSTRAINT PK_PROPOSAL_CUSTOM_DATA 
PRIMARY KEY (PROPOSAL_CUSTOM_DATA_ID);

-- Foreign Key Constraint(s)
ALTER TABLE PROPOSAL_CUSTOM_DATA 
ADD CONSTRAINT FK_PROPOSAL_CUSTOM_DATA 
FOREIGN KEY (CUSTOM_ATTRIBUTE_ID) 
REFERENCES CUSTOM_ATTRIBUTE (ID);

-- Foreign Key Constraint(s)
ALTER TABLE PROPOSAL_CUSTOM_DATA 
ADD CONSTRAINT FK_PROPOSAL_CUSTOM_DATA1 
FOREIGN KEY (PROPOSAL_ID) 
REFERENCES PROPOSAL (PROPOSAL_ID);


-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$PROPOSAL_CUSTOM_DATA AS SELECT 
	PROPOSAL_NUMBER,        
	SEQUENCE_NUMBER,        
	CA.NAME COLUMN_NAME,            
	PCD.VALUE COLUMN_VALUE,           
	PCD.UPDATE_TIMESTAMP UPDATE_TIMESTAMP,       
	PCD.UPDATE_USER UPDATE_USER            
FROM PROPOSAL_CUSTOM_DATA PCD, CUSTOM_ATTRIBUTE CA
WHERE PCD.CUSTOM_ATTRIBUTE_ID = CA.ID;

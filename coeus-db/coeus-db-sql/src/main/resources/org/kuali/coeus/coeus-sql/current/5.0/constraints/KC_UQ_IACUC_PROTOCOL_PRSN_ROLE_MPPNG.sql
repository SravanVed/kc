ALTER TABLE IACUC_PROTOCOL_PRSN_ROLE_MPPNG 
ADD CONSTRAINT UQ_IACUC_PERSON_MAPPING 
UNIQUE (SOURCE_ROLE_ID, TARGET_ROLE_ID) 
/

ALTER TABLE IACUC_PERSON_TRAINING 
ADD CONSTRAINT UQ_IACUC_PERSON_TRAINING 
UNIQUE (PERSON_TRAINING_ID, SPECIES_CODE, PROCEDURE_CODE) 
/


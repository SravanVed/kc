DELIMITER /

CREATE TABLE IACUC_PROTO_STUDY_GRP_LOC_DTL ( 
    IACUC_PROC_LOCATION_DTL_ID DECIMAL(12,0) NOT NULL, 
    IACUC_PROT_STUD_GROU_LOCS_ID DECIMAL(12,0) NOT NULL, 
    IACUC_PROTO_STUDY_GRP_SPC_ID DECIMAL(12,0) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL) 
/


ALTER TABLE IACUC_PROTO_STUDY_GRP_LOC_DTL 
ADD CONSTRAINT PK_IACUC_PROTO_STD_GRP_LOC_DTL 
PRIMARY KEY (IACUC_PROC_LOCATION_DTL_ID) 
/

DELIMITER ;

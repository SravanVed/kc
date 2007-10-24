 CREATE TABLE EPS_PROP_PERSON_BIO 
   (	"PROPOSAL_NUMBER" NUMBER(12,0) constraint EPS_PROP_PERSON_BION1 NOT NULL ENABLE, 
	"PROP_PERSON_NUMBER" NUMBER(12,0) constraint EPS_PROP_PERSON_BION2 NOT NULL ENABLE, 
	"BIO_NUMBER" NUMBER(3,0) constraint EPS_PROP_PERSON_BION3 NOT NULL ENABLE, 
	"PERSON_ID" VARCHAR2(10), 
    "ROLODEX_ID"  NUMBER(6,0), 
	"DESCRIPTION" VARCHAR2(200) constraint EPS_PROP_PERSON_BION4 NOT NULL ENABLE, 
	"DOCUMENT_TYPE_CODE" VARCHAR2(3), 
	"FILE_NAME" VARCHAR2(150), 
	"UPDATE_TIMESTAMP" DATE constraint EPS_PROP_PERSON_BION5 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(8) constraint EPS_PROP_PERSON_BION6 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  EPS_PROP_PERSON_BION7  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  EPS_PROP_PERSON_BION8  NOT NULL ENABLE,
	CONSTRAINT "PK_EPS_PROP_PERSON_BIO_KRA" PRIMARY KEY ("PROPOSAL_NUMBER", "PROP_PERSON_NUMBER","BIO_NUMBER") ENABLE
) ;
 

 ALTER TABLE EPS_PROP_PERSON_BIO ADD (CONSTRAINT "FK1_EPS_PROP_PERSON_BIO_KRA" FOREIGN KEY ("DOCUMENT_TYPE_CODE")
	  REFERENCES "EPS_PROP_PER_DOC_TYPE" ("DOCUMENT_TYPE_CODE") ) ;
 
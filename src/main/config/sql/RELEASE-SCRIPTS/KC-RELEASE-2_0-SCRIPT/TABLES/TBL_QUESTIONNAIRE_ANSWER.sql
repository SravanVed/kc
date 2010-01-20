CREATE TABLE QUESTIONNAIRE_ANSWER (
    QUESTIONNAIRE_ANSWER_ID NUMBER (12, 0) NOT NULL, 
    QUESTIONNAIRE_AH_ID_FK NUMBER (12, 0) NOT NULL, 
    QUESTION_REF_ID_FK NUMBER (12, 0) NOT NULL, 
    QUESTIONNAIRE_QUESTIONS_ID_FK NUMBER (12,0) not null, 
    QUESTION_NUMBER NUMBER (6, 0) NOT NULL, 
    ANSWER_NUMBER NUMBER (3, 0) NOT NULL, 
    ANSWER VARCHAR2 (2000) , 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) DEFAULT SYS_GUID () NOT NULL) ;

-- Primary Key Constraint  
ALTER TABLE QUESTIONNAIRE_ANSWER 
    ADD CONSTRAINT PK_QUESTIONNAIRE_ANSWER 
            PRIMARY KEY (QUESTIONNAIRE_ANSWER_ID) ;

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************  
ALTER TABLE QUESTIONNAIRE_ANSWER 
    ADD CONSTRAINT UQ_QUESTIONNAIRE_ANSWER 
            UNIQUE (QUESTIONNAIRE_AH_ID_FK, QUESTION_NUMBER, ANSWER_NUMBER) ;
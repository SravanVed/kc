DELIMITER /
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Undergraduates',0,8304,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Undergraduates',1,11628,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Predoctoral',0,22032,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Postdoctoral',0,39264,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Postdoctoral',1,41364,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Postdoctoral',2,44340,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Postdoctoral',3,46092,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Postdoctoral',4,47820,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Postdoctoral',5,49884,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Postdoctoral',6,51582,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/
INSERT INTO SEQ_TRAINING_STIPEND_RATES_ID VALUES(NULL)
/
INSERT INTO TRAINING_STIPEND_RATES (TRAINING_STIPEND_RATES_ID,CAREER_LEVEL,EXPERIENCE_LEVEL,STIPEND_RATE,EFFECTIVE_DATE,UPDATE_TIMESTAMP,UPDATE_USER,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM SEQ_TRAINING_STIPEND_RATES_ID),'Postdoctoral',7,54180,STR_TO_DATE('20120112','%Y%m%d'),NOW(),'admin',UUID())
/

DELIMITER ;

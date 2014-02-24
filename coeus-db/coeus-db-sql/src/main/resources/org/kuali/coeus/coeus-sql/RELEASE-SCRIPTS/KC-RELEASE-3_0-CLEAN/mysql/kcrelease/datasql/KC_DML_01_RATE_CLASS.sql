delimiter /
TRUNCATE TABLE RATE_CLASS
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','MTDC','O','35','admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','TDC','O','11','admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','S&W','O','36','admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','Fund with Transaction Fee (FUNSN)','O','11','admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5','Employee Benefits','E',null,'admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('7','Inflation','I',null,'admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('8','Vacation','V',null,'admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('9','Other','X',null,'admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('10','Lab Allocation - Salaries','Y',null,'admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('11','Lab Allocation - M&S','L',null,'admin',NOW(),UUID(),1)
/
INSERT INTO RATE_CLASS (RATE_CLASS_CODE,DESCRIPTION,RATE_CLASS_TYPE,ICR_TYPE_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('12','Lab Allocation - Utilities','L',null,'admin',NOW(),UUID(),1)
/
delimiter ;

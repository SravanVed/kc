delimiter /
TRUNCATE TABLE DISTRIBUTION
/
INSERT INTO DISTRIBUTION (OSP_DISTRIBUTION_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','Report','admin',NOW(),UUID(),1)
/
INSERT INTO DISTRIBUTION (OSP_DISTRIBUTION_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','Report + Letter','admin',NOW(),UUID(),1)
/
INSERT INTO DISTRIBUTION (OSP_DISTRIBUTION_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','Letter Only','admin',NOW(),UUID(),1)
/
INSERT INTO DISTRIBUTION (OSP_DISTRIBUTION_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','Sponsor Form','admin',NOW(),UUID(),1)
/
delimiter ;

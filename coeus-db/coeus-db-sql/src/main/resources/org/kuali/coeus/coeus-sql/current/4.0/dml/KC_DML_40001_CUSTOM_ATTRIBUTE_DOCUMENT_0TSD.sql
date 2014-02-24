INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('PERS',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'billingElement'),'Y','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('PERS',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'costSharingBudget'),'N','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('PERS',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'numberOfTrainees'),'N','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('PERS',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'graduateStudentCount'),'Y','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('PERS',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'tenured'),'N','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('PERS',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'exportControls'),'N','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('PERS',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'inventions'),'N','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('PERS',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'localReviewDate'),'N','Y','admin',SYSDATE,SYS_GUID(),1)
/

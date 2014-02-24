INSERT INTO VALID_SP_REV_APPROVAL (VALID_SP_REV_APPROVAL_ID,SPECIAL_REVIEW_CODE,APPROVAL_TYPE_CODE,PROTOCOL_NUMBER_FLAG,APPLICATION_DATE_FLAG,APPROVAL_DATE_FLAG,EXEMPT_NUMBER_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (1,(SELECT SPECIAL_REVIEW_CODE FROM SPECIAL_REVIEW WHERE DESCRIPTION = 'Human Subjects'),(SELECT APPROVAL_TYPE_CODE FROM SP_REV_APPROVAL_TYPE WHERE DESCRIPTION = 'Approved'),'Y','N','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO VALID_SP_REV_APPROVAL (VALID_SP_REV_APPROVAL_ID,SPECIAL_REVIEW_CODE,APPROVAL_TYPE_CODE,PROTOCOL_NUMBER_FLAG,APPLICATION_DATE_FLAG,APPROVAL_DATE_FLAG,EXEMPT_NUMBER_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (2,(SELECT SPECIAL_REVIEW_CODE FROM SPECIAL_REVIEW WHERE DESCRIPTION = 'Human Subjects'),(SELECT APPROVAL_TYPE_CODE FROM SP_REV_APPROVAL_TYPE WHERE DESCRIPTION = 'Exempt'),'N','N','N','Y','admin',SYSDATE,SYS_GUID(),1)
/

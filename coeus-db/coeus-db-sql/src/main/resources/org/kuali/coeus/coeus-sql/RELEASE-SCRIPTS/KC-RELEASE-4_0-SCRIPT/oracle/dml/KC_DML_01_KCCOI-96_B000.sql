INSERT INTO NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, MODULE_CODE, ROLE_NAME)
    VALUES(SEQ_NTFCTN_MODULE_ROLE_ID.NEXTVAL, SYS_GUID(), 1, SYSDATE, 'admin', 8, 'KC-COIDISCLOSURE:COI Administrator')
/
INSERT INTO NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, QUALIFIER)
    VALUES(SEQ_NTFCTN_MDL_ROLE_QLFR_ID.NEXTVAL, SEQ_NTFCTN_MODULE_ROLE_ID.CURRVAL, SYS_GUID(), 1, SYSDATE, 'admin', 'unitNumber')
/
INSERT INTO NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, QUALIFIER)
    VALUES(SEQ_NTFCTN_MDL_ROLE_QLFR_ID.NEXTVAL, SEQ_NTFCTN_MODULE_ROLE_ID.CURRVAL, SYS_GUID(), 1, SYSDATE, 'admin', 'subunits')
/
INSERT INTO NOTIFICATION_MODULE_ROLE (NOTIFICATION_MODULE_ROLE_ID, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, MODULE_CODE, ROLE_NAME)
    VALUES(SEQ_NTFCTN_MODULE_ROLE_ID.NEXTVAL, SYS_GUID(), 1, SYSDATE, 'admin', 8, 'KC-COIDISCLOSURE:COI Reviewer')
/
INSERT INTO NOTIFICATION_MDL_ROLE_QLFR (NOTIFICATION_MDL_ROLE_QLFR_ID, NOTIFICATION_MODULE_ROLE_ID, OBJ_ID, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, QUALIFIER)
    VALUES(SEQ_NTFCTN_MDL_ROLE_QLFR_ID.NEXTVAL, SEQ_NTFCTN_MODULE_ROLE_ID.CURRVAL, SYS_GUID(), 1, SYSDATE, 'admin', 'disclosure')
/

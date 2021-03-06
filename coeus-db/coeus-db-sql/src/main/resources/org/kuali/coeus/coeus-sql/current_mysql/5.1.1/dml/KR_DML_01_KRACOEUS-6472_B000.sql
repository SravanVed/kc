DELIMITER /

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID)
VALUES ('KC-GEN', 'All', 'EMAIL_NOTIFICATION_TEST_ENABLED', UUID(), 1, 'CONFG', 'N', 'Set email notifications to TEST MODE', 'A', 'KC')
/
INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID)
VALUES ('KC-GEN', 'All', 'EMAIL_NOTIFICATION_TEST_ADDRESS', UUID(), 1, 'CONFG', 'kc.notification@kuali.org', 'Email notifications will be sent to this id if EMAIL_NOTIFICATION_TEST_ENABLED set to Y', 'A', 'KC')
/
INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID)
VALUES ('KC-GEN', 'All', 'EMAIL_NOTIFICATION_FROM_ADDRESS', UUID(), 1, 'CONFG', 'from.address@kuali.org', 'KC Email Service uses this param to set the default from address for sending email notifications', 'A', 'KC')
/
DELIMITER ;

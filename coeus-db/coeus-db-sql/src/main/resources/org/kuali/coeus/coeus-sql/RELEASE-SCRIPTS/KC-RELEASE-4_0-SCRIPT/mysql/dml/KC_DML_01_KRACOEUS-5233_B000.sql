DELIMITER /
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ( (SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID),'1', NULL, '5', '3', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ( (SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID),'1', NULL, '8', '2', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ( (SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID),'2', NULL, '5', '3', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ( (SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID),'2', NULL, '8', '2', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ( (SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID),'3', NULL, '5', '3', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ( (SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID),'3', NULL, '8', '2', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ( (SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID), '4', NULL, '5', '3', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID), '4', NULL, '8', '2', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ( (SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID),'13', NULL, '5', '3', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_EXCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_EXCLUSION ( RATE_CLASS_BASE_EXCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_EXCL, RATE_TYPE_CODE_EXCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ( (SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_EXCL_ID),'13', NULL, '8', '2', NOW(), 'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '1', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '1', NULL, '5', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '1', NULL, '8', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '2', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '2', NULL, '5', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '2', NULL, '8', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '3', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '3', NULL, '5', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '3', NULL, '8', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '4', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '4', NULL, '5', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '4', NULL, '8', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '5', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '5', '3', '10', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '8', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '8', '2', '10', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '9', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '10', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '11', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '12', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '13', NULL, '0', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '13', NULL, '5', NULL, NOW(),'admin' ,UUID(), 1)
/
INSERT INTO SEQ_RATE_CLASS_BASE_INCL_ID VALUES(NULL)
/
INSERT INTO RATE_CLASS_BASE_INCLUSION ( RATE_CLASS_BASE_INCL_ID, RATE_CLASS_CODE, RATE_TYPE_CODE, RATE_CLASS_CODE_INCL, RATE_TYPE_CODE_INCL, UPDATE_TIMESTAMP, UPDATE_USER,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_RATE_CLASS_BASE_INCL_ID), '13', NULL, '8', NULL, NOW(),'admin' ,UUID(), 1)
/
commit
/
DELIMITER ;

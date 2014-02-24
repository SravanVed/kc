DELIMITER /
INSERT INTO IACUC_PROTO_OLR_DT_REC_TYPE (REVIEW_DETERM_RECOM_CD, DESCRIPTION, UPDATE_USER, UPDATE_TIMESTAMP, OBJ_ID, VER_NBR) 
    VALUES (1, 'Major Revisions Required', 'admin', NOW(), UUID(), 1)
/
INSERT INTO IACUC_PROTO_OLR_DT_REC_TYPE (REVIEW_DETERM_RECOM_CD, DESCRIPTION, UPDATE_USER, UPDATE_TIMESTAMP, OBJ_ID, VER_NBR) 
    VALUES (2, 'Minor Revisions Required', 'admin', NOW(), UUID(), 1)
/
INSERT INTO IACUC_PROTO_OLR_DT_REC_TYPE (REVIEW_DETERM_RECOM_CD, DESCRIPTION, UPDATE_USER, UPDATE_TIMESTAMP, OBJ_ID,VER_NBR) 
    VALUES (3, 'Approve', 'admin', NOW(),  UUID(), 1)
/
INSERT INTO IACUC_PROTO_OLR_DT_REC_TYPE (REVIEW_DETERM_RECOM_CD, DESCRIPTION, UPDATE_USER, UPDATE_TIMESTAMP, OBJ_ID,VER_NBR) 
    VALUES (9, 'Disapproved', 'admin', NOW(), UUID(), 1)
/

DELIMITER ;

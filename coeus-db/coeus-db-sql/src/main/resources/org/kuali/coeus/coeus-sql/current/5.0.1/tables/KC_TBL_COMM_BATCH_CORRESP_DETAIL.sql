ALTER TABLE COMM_BATCH_CORRESP_DETAIL 
ADD CONSTRAINT UQ_COMM_BATCH_CORRESP_ID 
UNIQUE (COMM_BATCH_CORRESP_ID) 
/
COMMIT
/

ALTER TABLE
  COMM_BATCH_CORRESP_DETAIL 
DROP CONSTRAINT UQ_COMM_BATCH_CORRESP_DETAIL
/

ALTER TABLE
  COMM_BATCH_CORRESP_DETAIL 
MODIFY
  PROTOCOL_ACTION_ID NULL
/

ALTER TABLE
  COMM_BATCH_CORRESP_DETAIL 
ADD 
  IACUC_PROTOCOL_ACTION_ID NUMBER(12,0) NULL
/

ALTER TABLE
  COMM_BATCH_CORRESP_DETAIL 
MODIFY
  PROTOCOL_CORRESPONDENCE_ID NULL
/


ALTER TABLE
  COMM_BATCH_CORRESP_DETAIL 
ADD 
  IACUC_PROT_CORRESPONDENCE_ID NUMBER(12,0) NULL
/

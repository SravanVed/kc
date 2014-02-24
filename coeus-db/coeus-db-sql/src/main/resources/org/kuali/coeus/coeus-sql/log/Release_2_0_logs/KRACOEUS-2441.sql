DELETE FROM PROTOCOL_ATTACHMENT_NOTIF;

ALTER TABLE PROTOCOL_ATTACHMENT_NOTIF ADD SUBMISSION_ID_FK NUMBER(12) NOT NULL;
ALTER TABLE PROTOCOL_ATTACHMENT_NOTIF ADD CONSTRAINT PAN_SUBMISSION FOREIGN KEY (SUBMISSION_ID_FK)
  REFERENCES PROTOCOL_SUBMISSION(SUBMISSION_ID);

CREATE OR REPLACE VIEW OSP$PROTOCOL_SUBMISSION_DOC AS 
    SELECT pan.PROTOCOL_NUMBER, pan.SEQUENCE_NUMBER, paf.FILE_NAME, paf.FILE_DATA,
    pan.UPDATE_TIMESTAMP, pan.UPDATE_USER, pan.DOCUMENT_ID
    FROM PROTOCOL_ATTACHMENT_NOTIF pan, PROTOCOL_ATTACHMENT_FILE paf, PROTOCOL_SUBMISSION ps
    WHERE pan.FILE_ID_FK = paf.PA_FILE_ID AND pan.SUBMISSION_ID_FK = ps.SUBMISSION_ID;

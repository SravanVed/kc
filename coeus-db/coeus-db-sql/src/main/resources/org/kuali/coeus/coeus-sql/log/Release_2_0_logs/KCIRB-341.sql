ALTER TABLE PROTOCOL_ATTACHMENT_PROTOCOL
    ADD (PROTOCOL_NUMBER VARCHAR2(20) NOT NULL ENABLE, SEQUENCE_NUMBER NUMBER(4,0) NOT NULL ENABLE);

ALTER TABLE PROTOCOL_ATTACHMENT_PERSONNEL
    ADD (PROTOCOL_NUMBER VARCHAR2(20) NOT NULL ENABLE, SEQUENCE_NUMBER NUMBER(4,0) NOT NULL ENABLE);

CREATE OR REPLACE VIEW OSP$PROTOCOL_DOCUMENTS AS 
    SELECT pap.PROTOCOL_NUMBER, pap.SEQUENCE_NUMBER, pap.TYPE_CD, pap.DESCRIPTION, paf.FILE_NAME, paf.FILE_DATA,
    pap.UPDATE_TIMESTAMP, pap.UPDATE_USER, pap.VERSION_NUMBER, pap.STATUS_CD, pap.DOCUMENT_ID
    FROM PROTOCOL_ATTACHMENT_PROTOCOL pap, PROTOCOL_ATTACHMENT_FILE paf
    WHERE pap.FILE_ID = paf.PA_FILE_ID;

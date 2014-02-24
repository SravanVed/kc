ALTER TABLE PROTOCOL_FUNDING_SOURCE DROP FOREIGN KEY FK_PROTOCOL_FUNDING_SOURCE2;
ALTER TABLE PROTOCOL_FUNDING_SOURCE MODIFY FUNDING_SOURCE_TYPE_CODE VARCHAR(3);

ALTER TABLE FUNDING_SOURCE_TYPE MODIFY FUNDING_SOURCE_TYPE_CODE VARCHAR(3);

ALTER TABLE PROTOCOL_FUNDING_SOURCE
  ADD CONSTRAINT FK_PROTOCOL_FUNDING_SOURCE2 FOREIGN KEY (FUNDING_SOURCE_TYPE_CODE)
  REFERENCES FUNDING_SOURCE_TYPE (FUNDING_SOURCE_TYPE_CODE);
CREATE OR REPLACE VIEW OSP$PROTO_AMEND_RENEWAL AS SELECT
  PROTO_AMEND_REN_NUMBER,
  DATE_CREATED,
  SUMMARY,
  PROTOCOL_NUMBER,
  SEQUENCE_NUMBER,
  UPDATE_TIMESTAMP,
  UPDATE_USER
FROM PROTO_AMEND_RENEWAL;

ALTER TABLE IACUC_PROTOCOL_SPECIES 
ADD CONSTRAINT FK_IACUC_PROTO_SPECIES 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES IACUC_PROTOCOL (PROTOCOL_ID)
/


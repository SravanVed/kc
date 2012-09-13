DELIMITER /

ALTER TABLE IACUC_PROTOCOL_RESEARCH_AREAS 
DROP INDEX FK_IACUC_PROTO_RESEARCH_AREA_C 
/

ALTER TABLE IACUC_PROTOCOL_RESEARCH_AREAS 
ADD CONSTRAINT FK_IACUC_PROTO_RESEARCH_AREA_C 
FOREIGN KEY (RESEARCH_AREA_CODE) 
REFERENCES IACUC_RESEARCH_AREAS (RESEARCH_AREA_CODE)
/

DELIMITER ;

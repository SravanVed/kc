DELIMITER /
ALTER TABLE COMM_MEMBER_EXPERTISE
    ADD CONSTRAINT FK_COMM_MEMBER_EXPERTISE_3 FOREIGN KEY (IACUC_RESEARCH_AREA_CODE)
    REFERENCES IACUC_RESEARCH_AREAS (RESEARCH_AREA_CODE)
/

DELIMITER ;

ALTER TABLE PROTOCOL_REVIEWERS ADD ( ROLODEX_ID NUMBER(12,0) NULL );
ALTER TABLE PROTOCOL_REVIEWERS MODIFY ( PERSON_ID VARCHAR2(40) NULL );

UPDATE PROTOCOL_REVIEWERS SET ROLODEX_ID=PERSON_ID, PERSON_ID = NULL WHERE NON_EMPLOYEE_FLAG = 'Y';


ALTER TABLE PROTOCOL_REVIEWERS
    ADD ( CONSTRAINT FK_PROTOCOL_REVIEWERS5
	FOREIGN KEY(ROLODEX_ID)
	REFERENCES ROLODEX(ROLODEX_ID)
	NOT DEFERRABLE INITIALLY IMMEDIATE VALIDATE );

SELECT * FROM PROTOCOL_REVIEWERS;
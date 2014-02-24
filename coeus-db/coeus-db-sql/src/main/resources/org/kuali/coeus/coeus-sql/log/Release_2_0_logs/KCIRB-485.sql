drop table COMM_SCHEDULE_MINUTES ;
drop TABLE COMM_SCHEDULE_ATTENDANCE ; 

CREATE SEQUENCE SEQ_MEETING_ID INCREMENT BY 1 START WITH 1;

CREATE TABLE MINUTE_ENTRY_TYPE ( 
    MINUTE_ENTRY_TYPE_CODE VARCHAR2(3) NOT NULL, 
    SORT_ID NUMBER(3,0) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE MINUTE_ENTRY_TYPE 
ADD CONSTRAINT PK_MINUTE_ENTRY_TYPE 
PRIMARY KEY (MINUTE_ENTRY_TYPE_CODE);



CREATE TABLE PROTOCOL_CONTINGENCY ( 
    PROTOCOL_CONTINGENCY_CODE VARCHAR2(4) NOT NULL, 
    DESCRIPTION VARCHAR2(2000) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE PROTOCOL_CONTINGENCY 
ADD CONSTRAINT PK_PROTOCOL_CONTINGENCY 
PRIMARY KEY (PROTOCOL_CONTINGENCY_CODE);



-- Table Script 
CREATE TABLE COMM_SCHEDULE_MINUTES ( 
    COMM_SCHEDULE_MINUTES_ID NUMBER(12,0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER(12,0) NOT NULL, 
    PROTOCOL_ID_FK NUMBER(12,0) NOT NULL, 
    ENTRY_NUMBER NUMBER(12,0) NOT NULL, 
    MINUTE_ENTRY_TYPE_CODE VARCHAR2(3) NOT NULL, 
    SUBMISSION_ID_FK NUMBER(12,0), 
    PRIVATE_COMMENT_FLAG VARCHAR2(1), 
    PROTOCOL_CONTINGENCY_CODE VARCHAR2(4), 
    MINUTE_ENTRY CLOB, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE COMM_SCHEDULE_MINUTES 
ADD CONSTRAINT PK_COMM_SCHEDULE_MINUTES 
PRIMARY KEY (COMM_SCHEDULE_MINUTES_ID);

-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
-- ALTER TABLE COMM_SCHEDULE_MINUTES 
-- ADD CONSTRAINT PK_COMM_SCHEDULE_MINUTES 
-- PRIMARY KEY (SCHEDULE_ID, ENTRY_NUMBER);
-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE COMM_SCHEDULE_MINUTES 
ADD CONSTRAINT UQ_COMM_SCHEDULE_MINUTES 
UNIQUE (SCHEDULE_ID_FK, ENTRY_NUMBER);

-- Foreign Key Constraint(s)
ALTER TABLE COMM_SCHEDULE_MINUTES 
ADD CONSTRAINT FK_COMM_SCHEDULE_MINUTES_3 
FOREIGN KEY (PROTOCOL_CONTINGENCY_CODE) 
REFERENCES PROTOCOL_CONTINGENCY (PROTOCOL_CONTINGENCY_CODE);

ALTER TABLE COMM_SCHEDULE_MINUTES 
ADD CONSTRAINT FK_COMM_SCHEDULE_MINUTES_2 
FOREIGN KEY (MINUTE_ENTRY_TYPE_CODE) 
REFERENCES MINUTE_ENTRY_TYPE (MINUTE_ENTRY_TYPE_CODE);


-- Table Script 
CREATE TABLE SCHEDULE_ACT_ITEM_TYPE ( 
    SCHEDULE_ACT_ITEM_TYPE_CODE VARCHAR2(3) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE SCHEDULE_ACT_ITEM_TYPE 
ADD CONSTRAINT PK_SCHEDULE_ACT_ITEM_TYPE 
PRIMARY KEY (SCHEDULE_ACT_ITEM_TYPE_CODE);


-- Table Script 
CREATE TABLE COMM_SCHEDULE_ACT_ITEMS ( 
    COMM_SCHEDULE_ACT_ITEMS_ID NUMBER(12,0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER(12,0) NOT NULL, 
    ACTION_ITEM_NUMBER NUMBER(4,0) NOT NULL, 
    SCHEDULE_ACT_ITEM_TYPE_CODE VARCHAR2(3) NOT NULL, 
    ITEM_DESCTIPTION VARCHAR2(2000) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE COMM_SCHEDULE_ACT_ITEMS 
ADD CONSTRAINT PK_COMM_SCHEDULE_ACT_ITEMS 
PRIMARY KEY (COMM_SCHEDULE_ACT_ITEMS_ID);

-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
-- ALTER TABLE COMM_SCHEDULE_ACT_ITEMS 
-- ADD CONSTRAINT PK_COMM_SCHEDULE_ACT_ITEMS 
-- PRIMARY KEY (SCHEDULE_ID, ACTION_ITEM_NUMBER);
-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE COMM_SCHEDULE_ACT_ITEMS 
ADD CONSTRAINT UQ_COMM_SCHEDULE_ACT_ITEMS 
UNIQUE (SCHEDULE_ID_FK, ACTION_ITEM_NUMBER);

-- Foreign Key Constraint(s)
ALTER TABLE COMM_SCHEDULE_ACT_ITEMS 
ADD CONSTRAINT FK_COMM_SCHEDULE_ACT_ITEMS 
FOREIGN KEY (SCHEDULE_ID_FK) 
REFERENCES COMM_SCHEDULE (ID);

ALTER TABLE COMM_SCHEDULE_ACT_ITEMS 
ADD CONSTRAINT FK_COMM_SCHEDULE_ACT_ITEMS_2 
FOREIGN KEY (SCHEDULE_ACT_ITEM_TYPE_CODE) 
REFERENCES SCHEDULE_ACT_ITEM_TYPE (SCHEDULE_ACT_ITEM_TYPE_CODE);



-- Table Script 
CREATE TABLE COMM_SCHEDULE_MINUTE_DOC ( 
    COMM_SCHEDULE_MINUTE_DOC_ID NUMBER(12,0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER(12,0) NOT NULL, 
    MINUTE_NUMBER NUMBER(4,0) NOT NULL, 
    MINUTE_NAME VARCHAR2(200) NOT NULL, 
    PDF_STORE BLOB DEFAULT empty_blob(), 
    CREATE_TIMESTAMP DATE NOT NULL, 
    CREATE_USER VARCHAR2(8) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE COMM_SCHEDULE_MINUTE_DOC 
ADD CONSTRAINT PK_COMM_SCHEDULE_MINUTE_DOC 
PRIMARY KEY (COMM_SCHEDULE_MINUTE_DOC_ID);

-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
-- ALTER TABLE COMM_SCHEDULE_MINUTE_DOC 
-- ADD CONSTRAINT PK_COMM_SCHEDULE_MINUTE_DOC 
-- PRIMARY KEY (SCHEDULE_ID, MINUTE_NUMBER);
-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE COMM_SCHEDULE_MINUTE_DOC 
ADD CONSTRAINT UQ_COMM_SCHEDULE_MINUTE_DOC 
UNIQUE (SCHEDULE_ID_FK, MINUTE_NUMBER);

-- Foreign Key Constraint(s)
ALTER TABLE COMM_SCHEDULE_MINUTE_DOC 
ADD CONSTRAINT FK_COMM_SCHEDULE_MINUTE_DOC 
FOREIGN KEY (SCHEDULE_ID_FK) 
REFERENCES COMM_SCHEDULE (ID);


-- Table Script 
CREATE TABLE SCHEDULE_AGENDA ( 
    SCHEDULE_AGENDA_ID NUMBER(12,0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER(12,0) NOT NULL, 
    AGENDA_NUMBER NUMBER(4,0) NOT NULL, 
    AGENDA_NAME VARCHAR2(200) NOT NULL, 
    PDF_STORE BLOB DEFAULT empty_blob() NOT NULL, 
    CREATE_TIMESTAMP DATE NOT NULL, 
    CREATE_USER VARCHAR2(8) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE SCHEDULE_AGENDA 
ADD CONSTRAINT PK_COMM_SCHEDULE_AGENDA 
PRIMARY KEY (SCHEDULE_AGENDA_ID);

-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
-- ALTER TABLE SCHEDULE_AGENDA 
-- ADD CONSTRAINT PK_COMM_SCHEDULE_AGENDA 
-- PRIMARY KEY (SCHEDULE_ID, AGENDA_NUMBER);
-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE SCHEDULE_AGENDA 
ADD CONSTRAINT UQ_COMM_SCHEDULE_AGENDA 
UNIQUE (SCHEDULE_ID_FK, AGENDA_NUMBER);

-- Foreign Key Constraint(s)
ALTER TABLE SCHEDULE_AGENDA 
ADD CONSTRAINT FK_COMM_SCHEDULE_AGENDA 
FOREIGN KEY (SCHEDULE_ID_FK) 
REFERENCES COMM_SCHEDULE (ID);


-- Table Script 
CREATE TABLE PROTOCOL_VOTE_ABSTAINEES ( 
    PROTOCOL_VOTE_ABSTAINEES_ID NUMBER(12,0) NOT NULL, 
    PROTOCOL_ID_FK NUMBER(12,0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER(12,0) NOT NULL, 
    PERSON_ID VARCHAR2(9) NOT NULL, 
    NON_EMPLOYEE_FLAG VARCHAR2(1) NOT NULL, 
    COMMENTS VARCHAR2(2000), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE PROTOCOL_VOTE_ABSTAINEES 
ADD CONSTRAINT PK_PROTOCOL_VOTE_ABSTAINEE 
PRIMARY KEY (PROTOCOL_VOTE_ABSTAINEES_ID);
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE PROTOCOL_VOTE_ABSTAINEES 
ADD CONSTRAINT UQ_PROTOCOL_VOTE_ABSTAINEE 
UNIQUE (PROTOCOL_ID_FK, SCHEDULE_ID_FK, PERSON_ID);

-- Foreign Key Constraint(s)
ALTER TABLE PROTOCOL_VOTE_ABSTAINEES 
ADD CONSTRAINT FK_PROTOCOL_VOTE_ABSTAINEE 
FOREIGN KEY (PROTOCOL_ID_FK) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_VOTE_ABSTAINEES 
ADD CONSTRAINT FK_PROTOCOL_VOTE_ABSTAINEE_2 
FOREIGN KEY (SCHEDULE_ID_FK) 
REFERENCES COMM_SCHEDULE (ID);


CREATE TABLE COMM_SCHEDULE_ATTENDANCE ( 
    COMM_SCHEDULE_ATTENDANCE_ID NUMBER(12,0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER(12,0) NOT NULL, 
    PERSON_ID VARCHAR2(9) NOT NULL, 
    GUEST_FLAG VARCHAR2(1) NOT NULL, 
    ALTERNATE_FLAG VARCHAR2(1) NOT NULL, 
    ALTERNATE_FOR VARCHAR2(9), 
    NON_EMPLOYEE_FLAG VARCHAR2(1) NOT NULL, 
    COMMENTS VARCHAR2(2000), 
    UPDATE_TIMESTAMP DATE, 
    UPDATE_USER VARCHAR2(60), 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE COMM_SCHEDULE_ATTENDANCE 
ADD CONSTRAINT PK_COMM_SCHEDULE_ATTENDANCE 
PRIMARY KEY (COMM_SCHEDULE_ATTENDANCE_ID);

-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
-- ALTER TABLE COMM_SCHEDULE_ATTENDANCE 
-- ADD CONSTRAINT PK_COMM_SCHEDULE_ATTENDANCE 
-- PRIMARY KEY (SCHEDULE_ID, PERSON_ID);
-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE COMM_SCHEDULE_ATTENDANCE 
ADD CONSTRAINT UQ_COMM_SCHEDULE_ATTENDANCE 
UNIQUE (SCHEDULE_ID_FK, PERSON_ID);

-- Foreign Key Constraint(s)
ALTER TABLE COMM_SCHEDULE_ATTENDANCE 
ADD CONSTRAINT FK_COMM_SCHEDULE_ATTENDANCE 
FOREIGN KEY (SCHEDULE_ID_FK) 
REFERENCES COMM_SCHEDULE (ID);


-- views

CREATE OR REPLACE VIEW OSP$COMM_SCHEDULE_ACT_ITEMS AS SELECT 
    COMM_SCHEDULE.SCHEDULE_ID, 
    COMM_SCHEDULE_ACT_ITEMS.ACTION_ITEM_NUMBER, 
    COMM_SCHEDULE_ACT_ITEMS.SCHEDULE_ACT_ITEM_TYPE_CODE, 
    COMM_SCHEDULE_ACT_ITEMS.ITEM_DESCTIPTION, 
    COMM_SCHEDULE_ACT_ITEMS.UPDATE_TIMESTAMP, 
    COMM_SCHEDULE_ACT_ITEMS.UPDATE_USER
FROM COMM_SCHEDULE_ACT_ITEMS,
     COMM_SCHEDULE
WHERE COMM_SCHEDULE.ID = COMM_SCHEDULE_ACT_ITEMS.SCHEDULE_ID_FK;

CREATE OR REPLACE VIEW OSP$COMM_SCHEDULE_MINUTE_DOC AS SELECT 
    COMM_SCHEDULE.SCHEDULE_ID, 
    COMM_SCHEDULE_MINUTE_DOC.MINUTE_NUMBER, 
    COMM_SCHEDULE_MINUTE_DOC.MINUTE_NAME, 
    COMM_SCHEDULE_MINUTE_DOC.PDF_STORE, 
    COMM_SCHEDULE_MINUTE_DOC.CREATE_TIMESTAMP, 
    COMM_SCHEDULE_MINUTE_DOC.CREATE_USER, 
    COMM_SCHEDULE_MINUTE_DOC.UPDATE_TIMESTAMP, 
    COMM_SCHEDULE_MINUTE_DOC.UPDATE_USER
FROM COMM_SCHEDULE_MINUTE_DOC,
     COMM_SCHEDULE
WHERE COMM_SCHEDULE.ID = COMM_SCHEDULE_MINUTE_DOC.SCHEDULE_ID_FK;

CREATE OR REPLACE VIEW OSP$COMM_SCHEDULE_MINUTES AS SELECT 
    COMM_SCHEDULE.SCHEDULE_ID, 
    COMM_SCHEDULE_MINUTES.ENTRY_NUMBER, 
    COMM_SCHEDULE_MINUTES.MINUTE_ENTRY_TYPE_CODE, 
    PROTOCOL.PROTOCOL_NUMBER, 
    PROTOCOL.SEQUENCE_NUMBER, 
    PROTOCOL_SUBMISSION.SUBMISSION_NUMBER, 
    COMM_SCHEDULE_MINUTES.PRIVATE_COMMENT_FLAG, 
    COMM_SCHEDULE_MINUTES.PROTOCOL_CONTINGENCY_CODE, 
    COMM_SCHEDULE_MINUTES.MINUTE_ENTRY, 
    COMM_SCHEDULE_MINUTES.UPDATE_TIMESTAMP, 
    COMM_SCHEDULE_MINUTES.UPDATE_USER
FROM COMM_SCHEDULE_MINUTES,
     COMM_SCHEDULE,
     PROTOCOL,
     PROTOCOL_SUBMISSION
WHERE COMM_SCHEDULE.ID = COMM_SCHEDULE_MINUTES.SCHEDULE_ID_FK and
      PROTOCOL_SUBMISSION.SUBMISSION_ID = COMM_SCHEDULE_MINUTES.SUBMISSION_ID_FK and
      PROTOCOL.PROTOCOL_ID = COMM_SCHEDULE_MINUTES.PROTOCOL_ID_FK;

CREATE OR REPLACE VIEW OSP$MINUTE_ENTRY_TYPE AS SELECT 
    MINUTE_ENTRY_TYPE_CODE, 
    SORT_ID, 
    DESCRIPTION, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM MINUTE_ENTRY_TYPE;

CREATE OR REPLACE VIEW OSP$PROTOCOL_CONTINGENCY AS SELECT 
    PROTOCOL_CONTINGENCY_CODE, 
    DESCRIPTION, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM PROTOCOL_CONTINGENCY;

CREATE OR REPLACE VIEW OSP$PROTOCOL_VOTE_ABSTAINEES AS SELECT 
    PROTOCOL.PROTOCOL_NUMBER, 
    PROTOCOL.SEQUENCE_NUMBER, 
    COMM_SCHEDULE.SCHEDULE_ID, 
    PROTOCOL_VOTE_ABSTAINEES.PERSON_ID, 
    PROTOCOL_VOTE_ABSTAINEES.NON_EMPLOYEE_FLAG, 
    PROTOCOL_VOTE_ABSTAINEES.COMMENTS, 
    PROTOCOL_VOTE_ABSTAINEES.UPDATE_TIMESTAMP, 
    PROTOCOL_VOTE_ABSTAINEES.UPDATE_USER
FROM PROTOCOL_VOTE_ABSTAINEES,
     COMM_SCHEDULE,
     PROTOCOL
WHERE COMM_SCHEDULE.ID = PROTOCOL_VOTE_ABSTAINEES.SCHEDULE_ID_FK and
      PROTOCOL.PROTOCOL_ID = PROTOCOL_VOTE_ABSTAINEES.PROTOCOL_ID_FK;

CREATE OR REPLACE VIEW OSP$SCHEDULE_ACT_ITEM_TYPE AS SELECT 
    SCHEDULE_ACT_ITEM_TYPE_CODE, 
    DESCRIPTION, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM SCHEDULE_ACT_ITEM_TYPE;

CREATE OR REPLACE VIEW OSP$SCHEDULE_AGENDA AS SELECT 
    COMM_SCHEDULE.SCHEDULE_ID, 
    SCHEDULE_AGENDA.AGENDA_NUMBER, 
    SCHEDULE_AGENDA.AGENDA_NAME, 
    SCHEDULE_AGENDA.PDF_STORE, 
    SCHEDULE_AGENDA.CREATE_TIMESTAMP, 
    SCHEDULE_AGENDA.CREATE_USER, 
    SCHEDULE_AGENDA.UPDATE_TIMESTAMP, 
    SCHEDULE_AGENDA.UPDATE_USER
FROM SCHEDULE_AGENDA,
     COMM_SCHEDULE
WHERE COMM_SCHEDULE.ID = SCHEDULE_AGENDA.SCHEDULE_ID_FK;


CREATE OR REPLACE VIEW OSP$COMM_SCHEDULE_ATTENDANCE AS SELECT 
    COMM_SCHEDULE.SCHEDULE_ID, 
    COMM_SCHEDULE_ATTENDANCE.PERSON_ID, 
    COMM_SCHEDULE_ATTENDANCE.GUEST_FLAG, 
    COMM_SCHEDULE_ATTENDANCE.ALTERNATE_FLAG, 
    COMM_SCHEDULE_ATTENDANCE.ALTERNATE_FOR, 
    COMM_SCHEDULE_ATTENDANCE.NON_EMPLOYEE_FLAG, 
    COMM_SCHEDULE_ATTENDANCE.COMMENTS, 
    COMM_SCHEDULE_ATTENDANCE.UPDATE_TIMESTAMP, 
    COMM_SCHEDULE_ATTENDANCE.UPDATE_USER
FROM COMM_SCHEDULE_ATTENDANCE,
     COMM_SCHEDULE
WHERE COMM_SCHEDULE.ID = COMM_SCHEDULE_ATTENDANCE.SCHEDULE_ID_FK;

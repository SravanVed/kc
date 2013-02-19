/*
 Copyright 2005-2010 The Kuali Foundation

 Licensed under the Educational Community License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.osedu.org/licenses/ECL-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
*/
/* Table Script */ 
CREATE TABLE FUNDING_SOURCE_TYPE ( 
    FUNDING_SOURCE_TYPE_CODE NUMBER(3,0) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    FUNDING_SOURCE_TYPE_FLAG VARCHAR2(1), 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
/* Primary Key Constraint */ 
ALTER TABLE FUNDING_SOURCE_TYPE 
ADD CONSTRAINT PK_FUNDING_SOURCE_TYPE 
PRIMARY KEY (FUNDING_SOURCE_TYPE_CODE);
/* Table Script */ 
CREATE TABLE PROTOCOL_FUNDING_SOURCE ( 
    PROTOCOL_FUNDING_SOURCE_ID NUMBER(12,0) NOT NULL, 
    PROTOCOL_ID NUMBER(12,0) NOT NULL, 
    PROTOCOL_NUMBER VARCHAR2(20)  NULL, 
    SEQUENCE_NUMBER NUMBER(4,0)  NULL, 
    FUNDING_SOURCE_TYPE_CODE NUMBER(3,0) NOT NULL, 
    FUNDING_SOURCE VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
/* Primary Key Constraint */ 
ALTER TABLE PROTOCOL_FUNDING_SOURCE 
ADD CONSTRAINT PK_PROTOCOL_FUNDING_SOURCE 
PRIMARY KEY (PROTOCOL_FUNDING_SOURCE_ID);
/* *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ */ 
ALTER TABLE PROTOCOL_FUNDING_SOURCE 
ADD CONSTRAINT UQ_PROTOCOL_FUNDING_SOURCE 
UNIQUE (PROTOCOL_ID, FUNDING_SOURCE_TYPE_CODE, FUNDING_SOURCE);
/* Foreign Key Constraint(s) */ 
ALTER TABLE PROTOCOL_FUNDING_SOURCE 
ADD CONSTRAINT FK_PROTOCOL_FUNDING_SOURCE 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);
ALTER TABLE PROTOCOL_FUNDING_SOURCE 
ADD CONSTRAINT FK_PROTOCOL_FUNDING_SOURCE2 
FOREIGN KEY (FUNDING_SOURCE_TYPE_CODE) 
REFERENCES FUNDING_SOURCE_TYPE (FUNDING_SOURCE_TYPE_CODE);
/* View for Coeus compatibility */ 
CREATE OR REPLACE VIEW OSP$FUNDING_SOURCE_TYPE AS SELECT 
    FUNDING_SOURCE_TYPE_CODE, 
    DESCRIPTION, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER, 
    FUNDING_SOURCE_TYPE_FLAG
FROM FUNDING_SOURCE_TYPE;
/* View for Coeus compatibility */ 
CREATE OR REPLACE VIEW OSP$PROTOCOL_FUNDING_SOURCE AS SELECT 
    PROTOCOL_NUMBER, 
    SEQUENCE_NUMBER, 
    FUNDING_SOURCE_TYPE_CODE, 
    FUNDING_SOURCE, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM PROTOCOL_FUNDING_SOURCE;
/* Load FUNDING_SOURCE_TYPE data */ 
INSERT INTO FUNDING_SOURCE_TYPE ( FUNDING_SOURCE_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, FUNDING_SOURCE_TYPE_FLAG ) 
VALUES ( 1, 'Sponsor', sysdate, user, null ); 
INSERT INTO FUNDING_SOURCE_TYPE ( FUNDING_SOURCE_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, FUNDING_SOURCE_TYPE_FLAG ) 
VALUES ( 2, 'Unit', sysdate, user, null ); 
INSERT INTO FUNDING_SOURCE_TYPE ( FUNDING_SOURCE_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, FUNDING_SOURCE_TYPE_FLAG ) 
VALUES ( 3, 'Other', sysdate, user, null ); 
INSERT INTO FUNDING_SOURCE_TYPE ( FUNDING_SOURCE_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, FUNDING_SOURCE_TYPE_FLAG ) 
VALUES ( 4, 'Development Proposal', sysdate, user, null ); 
INSERT INTO FUNDING_SOURCE_TYPE ( FUNDING_SOURCE_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, FUNDING_SOURCE_TYPE_FLAG ) 
VALUES ( 5, 'Institute Proposal', sysdate, user, null ); 
INSERT INTO FUNDING_SOURCE_TYPE ( FUNDING_SOURCE_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, FUNDING_SOURCE_TYPE_FLAG ) 
VALUES ( 6, 'Award', sysdate, user, null );
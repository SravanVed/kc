CREATE TABLE CUST_REPORT_TYPE(
REPORT_TYPE_CODE NUMBER(3,0) NOT NULL,
REPORT_TYPE_DESC VARCHAR2(50 BYTE) NOT NULL,
UPDATE_USER VARCHAR2(60 BYTE) NOT NULL,
UPDATE_TIMESTAMP DATE NOT NULL,
VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
OBJ_ID VARCHAR2(36) NOT NULL
)
/

ALTER TABLE CUST_REPORT_TYPE ADD CONSTRAINT PK_CUST_REPORT_TYPE
PRIMARY KEY (REPORT_TYPE_CODE)
/

TRUNCATE TABLE KRIM_ROLE_T DROP STORAGE
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from the users in the Principal table. This role gives users high-level permissions to interact with RICE documents and to login to KUALI.','2',TO_DATE( '20081104143710', 'YYYYMMDDHH24MISS' ),'KUALI','5ADF18B6D4847954E0404F8189D85002','1','User',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role represents a collection of all the KC module manager roles and has permission to initiate simple maintenance documents.','1',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-SYS','9CD01DC99DE8DF6CE040DC0A1F8A7146','10000','Manager',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','IRB Approver','1',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-WKFLW','9CD01DC99DE9DF6CE040DC0A1F8A7146','10001','IRBApprover',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Office of Sponsored Projects Approver','1',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-WKFLW','9CD01DC99DEADF6CE040DC0A1F8A7146','10002','OSPApprover',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Budget Viewer - the role grants permissions to view award budget at departmental level','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AB','9CD01DC99DEBDF6CE040DC0A1F8A7146','10003','Award Budget Viewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Budget Modifier - the role grants permissions to modify or view award budget at departmental level','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AB','9CD01DC99DECDF6CE040DC0A1F8A7146','10004','Award Budget Modifier',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','approver','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-PD','9CD01DC99DEDDF6CE040DC0A1F8A7146','10005','approver',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Protocol Viewer','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-PROTOCOL','9CD01DC99DEFDF6CE040DC0A1F8A7146','10007','Protocol Viewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Protocol Aggregator','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-PROTOCOL','9CD01DC99DF0DF6CE040DC0A1F8A7146','10008','Protocol Aggregator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Unassigned role - no permissions','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-PD','9CD01DC99DF1DF6CE040DC0A1F8A7146','10009','unassigned',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Viewer','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-PD','9CD01DC99DF2DF6CE040DC0A1F8A7146','10010','Viewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Budget Creator','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-PD','9CD01DC99DF3DF6CE040DC0A1F8A7146','10011','Budget Creator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Narrative Writer','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-PD','9CD01DC99DF4DF6CE040DC0A1F8A7146','10012','Narrative Writer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Aggregator','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-PD','9CD01DC99DF5DF6CE040DC0A1F8A7146','10013','Aggregator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Creator','10000',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-UNT','9CD01DC99DF6DF6CE040DC0A1F8A7146','10014','Proposal Creator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Budget Approver - the role grants permissions to edit and approve award budget','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AB','9CD01DC99DF7DF6CE040DC0A1F8A7146','10015','Award Budget Approver',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Budget Aggregator - the role grants permissions to create and maintain award budget at department level','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AB','9CD01DC99DF8DF6CE040DC0A1F8A7146','10016','Award Budget Aggregator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Maintain Award Budget - the role grants permissions to modify and submit award budget at departmental level','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AB','9CD01DC99DF9DF6CE040DC0A1F8A7146','10017','Award Budget Maintainer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Budget Administrator - the role grants permissions to manage any award budget at OSP level','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AB','9CD01DC99DFADF6CE040DC0A1F8A7146','10018','Award Budget Administrator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Maintain Intellectual Property Review','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-IP','9CD01DC99DFBDF6CE040DC0A1F8A7146','10019','Intellectual Property Review Maintainer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Maintain Institutional Proposals','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-IP','9CD01DC99DFCDF6CE040DC0A1F8A7146','10020','Institutional Proposal Maintainer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','View Institutional Proposals','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-IP','9CD01DC99DFDDF6CE040DC0A1F8A7146','10021','Institutional Proposal Viewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Unassigned','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AWARD','9CD01DC99DFEDF6CE040DC0A1F8A7146','10022','Award Unassigned',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Template Viewer','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AWARD','9CD01DC99DFFDF6CE040DC0A1F8A7146','10023','Template Viewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Departments Awards Viewer','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AWARD','9CD01DC99E00DF6CE040DC0A1F8A7146','10024','Departments Awards Viewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Documents Viewer','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AWARD','9CD01DC99E01DF6CE040DC0A1F8A7146','10025','Award Documents Viewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Viewer','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AWARD','9CD01DC99E02DF6CE040DC0A1F8A7146','10026','Award Viewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Documents Maintainer','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AWARD','9CD01DC99E03DF6CE040DC0A1F8A7146','10027','Award Documents Maintainer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Application Administrator','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AWARD','9CD01DC99E04DF6CE040DC0A1F8A7146','10028','Application Administrator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Award Modifier','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-AWARD','9CD01DC99E05DF6CE040DC0A1F8A7146','10029','Award Modifier',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','IRB Reviewer','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-UNT','9CD01DC99E06DF6CE040DC0A1F8A7146','10030','IRB Reviewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','IRB Administrator','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-UNT','9CD01DC99E07DF6CE040DC0A1F8A7146','10031','IRB Administrator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Protocol Creator','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-UNT','9CD01DC99E08DF6CE040DC0A1F8A7146','10032','Protocol Creator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Submission','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-ADM','9CD01DC99E09DF6CE040DC0A1F8A7146','10033','Proposal Submission',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','OSP Administrator','10001',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-ADM','9CD01DC99E0ADF6CE040DC0A1F8A7146','10034','OSP Administrator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Primary Investigator','10002',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-WKFLW','9CD01DC99E0BDF6CE040DC0A1F8A7146','10035','PI',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Co-Investigator','10003',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-WKFLW','9CD01DC99E0CDF6CE040DC0A1F8A7146','10036','COI',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Departmental Reviewer','10004',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-WKFLW','9CD01DC99E0DDF6CE040DC0A1F8A7146','10037','DepartmentReviewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Custom Reviewer','10004',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-WKFLW','9CD01DC99E0EDF6CE040DC0A1F8A7146','10038','CustomReviewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Proposal Key Persons','10004',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-WKFLW','9CD01DC99E0FDF6CE040DC0A1F8A7146','10039','KP',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Derived role from PI on Proposal Log','10012',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-IP','9CD01DC99E10DF6CE040DC0A1F8A7146','10040','Proposal Log PI',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Derived role based on Unit','10013',TO_DATE( '20110221161307', 'YYYYMMDDHH24MISS' ),'KC-WKFLW','9CD01DC99E11DF6CE040DC0A1F8A7146','10041','Unit Administrator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Create Temporary Proposal Log','10001',TO_DATE( '20091030000000', 'YYYYMMDDHH24MISS' ),'KC-IP','9CD01DC99E12DF6CE040DC0A1F8A7146','10042','Create Temporary Proposal Log',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Create Proposal Log','10001',TO_DATE( '20091030000000', 'YYYYMMDDHH24MISS' ),'KC-IP','9CD01DC99E13DF6CE040DC0A1F8A7146','10043','Create Proposal Log',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Modify Proposal Log','10001',TO_DATE( '20091030000000', 'YYYYMMDDHH24MISS' ),'KC-IP','9CD01DC99E14DF6CE040DC0A1F8A7146','10044','Modify Proposal Log',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','View Proposal Log','10001',TO_DATE( '20091030000000', 'YYYYMMDDHH24MISS' ),'KC-IP','9CD01DC99E15DF6CE040DC0A1F8A7146','10045','View Proposal Log',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Online Reviewers','10014',TO_DATE( '20110221133455', 'YYYYMMDDHH24MISS' ),'KC-PROTOCOL','9CD01EC8DB1125C0E040DC0A1F8A7151','10046','IRB Online Reviewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Protocol Unassigned - no permissions','10000',TO_DATE( '20110221133455', 'YYYYMMDDHH24MISS' ),'KC-PROTOCOL','9CD01EC8DB1225C0E040DC0A1F8A7151','10047','Protocol Unassigned',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role exists primarily to grant implicit Cancel permission to Protocol Aggregators and Admins','10015',TO_DATE( '20110221133455', 'YYYYMMDDHH24MISS' ),'KC-PROTOCOL','9CD01EC8DB1325C0E040DC0A1F8A7151','10048','ProtocolApprover',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Role members are derived from active committee members on the systems current date.','10016',TO_DATE( '20101011203817', 'YYYYMMDDHH24MISS' ),'KC-PROTOCOL','9CD01EC8DB1425C0E040DC0A1F8A7151','10049','Active Committee Member',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','Role members are derived from the active committee members on a particular schedule date.','10017',TO_DATE( '20101011213840', 'YYYYMMDDHH24MISS' ),'KC-PROTOCOL','9CD01EC8DB1525C0E040DC0A1F8A7151','10050','Active Committee Member On Scheduled Date',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from users with that have received an action request for a given document.','42',TO_DATE( '20081114141017', 'YYYYMMDDHH24MISS' ),'KR-WKFLW','5BABFACC4F62A8EEE0404F8189D8770F','59','Approve Request Recipient',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from the initiator listed within the route log of a given document.','43',TO_DATE( '20081114141017', 'YYYYMMDDHH24MISS' ),'KR-WKFLW','5BABFACC4F63A8EEE0404F8189D8770F','60','Initiator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from the initiator and action request recipients listed within the route log of a given document.','43',TO_DATE( '20081114141017', 'YYYYMMDDHH24MISS' ),'KR-WKFLW','5BABFACC4F64A8EEE0404F8189D8770F','61','Initiator or Reviewer',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role can take superuser actions and blanket approve RICE documents as well as being able to modify and assign permissions, responsibilities and roles belonging to the KR namespaces.','1',TO_DATE( '20081108115522', 'YYYYMMDDHH24MISS' ),'KR-SYS','5B31640F0105ADF1E0404F8189D84647','63','Technical Administrator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from users with the Edit Document permission for a given document type.,','45',TO_DATE( '20081114141017', 'YYYYMMDDHH24MISS' ),'KR-NS','5BABFACC4F61A8EEE0404F8189D8770F','66','Document Editor',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from the user who took the Complete action on a given document.','43',TO_DATE( '20081114141017', 'YYYYMMDDHH24MISS' ),'KR-WKFLW','5BABFACC4F65A8EEE0404F8189D8770F','67','Router',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from users with the Open Document permission for a given document type.,','60',TO_DATE( '20090113192616', 'YYYYMMDDHH24MISS' ),'KR-NS','606763510FBF96D3E0404F8189D857A2','83','Document Opener',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from users with an acknowledge action request in the route log of a given document.','42',TO_DATE( '20090121130202', 'YYYYMMDDHH24MISS' ),'KR-WKFLW','6102F3FA08CE45CFE0404F8189D8317E','88','Acknowledge Request Recipient',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from users with an FYI action request in the route log of a given document.','42',TO_DATE( '20090121130203', 'YYYYMMDDHH24MISS' ),'KR-WKFLW','6102F3FA08CF45CFE0404F8189D8317E','89','FYI Request Recipient',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role represents the KR System User, that is the user ID RICE uses when it takes programmed actions.','1',TO_DATE( '20090806170249', 'YYYYMMDDHH24MISS' ),'KR-SYS','61815E6C62D0B647E0404F8189D873B3','90','System User',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from users with the Initiate Document permission for a given document type.','66',TO_DATE( '20090806170249', 'YYYYMMDDHH24MISS' ),'KR-SYS','67F145466E8B9160E0404F8189D86771','95','Document Initiator',1)
/
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
  VALUES ('Y','This role derives its members from users with an Approval action request (that was not generated via the ad-hoc recipients tab) in the route log of a given document.','42',TO_DATE( '20090806170249', 'YYYYMMDDHH24MISS' ),'KR-WKFLW','67F145466EB09160E0404F8189D86771','97','Non-Ad Hoc Approve Request Recipient',1)
/

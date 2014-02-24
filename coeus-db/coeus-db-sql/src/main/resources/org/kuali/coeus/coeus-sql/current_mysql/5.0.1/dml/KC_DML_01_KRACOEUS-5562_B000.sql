DELIMITER /
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'multiplePI', 'Multiple PI check', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 's2sBudgetRule', 'checks for form inlusion', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'GrantsGov Form Name', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'monitoredSponsorRule', 'checks if proposal is using a passed in sposnor hirerarchy', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'monitored sponsor hierarchies', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 's2sResplanRule', 'checks for maximum attachments in narrative types.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'narative types', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'maximum number', 'java.lang.Object', 3, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'grantsFormRule', 'checks for forms existence.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'form name', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'biosketchFileNameRule', 'checks for special characters in the biosketch file name.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'ospAdminPropPersonRule', 'checks to see if an OSP administrator is a proposal person.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'costElementVersionLimit', 'checks that a cost element limit has not been exceeded.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'version number', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'cost element name', 'java.lang.Object', 3, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'limit', 'java.lang.Object', 4, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'divisionCodeRule', 'checks the division code is null.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'divisionCodeIsFellowship', 'checks if the proposal is a fellowship.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'fellowship codes', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'budgetSubawardOrganizationnameRule', 'checks subaward organization for special characters.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'checkProposalPerson', 'Checks if the passes in person ID is a proposal person.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'person ID', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'agencyProgramCodeNullRule', 'Checks if the passes in person ID is a proposal personrule to CHECK IF a proposal agency program code field is null.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'allProposalsRule', 'Pointless rule, just returns true.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'proposalLeadUnitInHierarchy', 'checks if the proposals lead unit is in the passed in unit hierarchy.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'unit number to check', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 's2sSubawardRule', 'verifies only one set of unique forms.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'rr form names', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'phs form names', 'java.lang.Object', 3, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'proposalGrantsRule', 'verifies that there are grans.gov submissions.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'narrativeTypeRule', 'verfies activity type code is specified.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 's2s398CoverRule', 'verify PHS Cover letter narrative(39) is attached, must include s2s cover letter form', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'PHS Cover letters', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'narrative type code', 'java.lang.Object', 3, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'narrativeFileName', 'verify no special characters are used.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'costElementInVersion', 'verify that a cost element is used in the specified version of the proposal', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'version number', 'java.lang.Object', 2, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID,KC_KRMS_TERM_FUNCTION_ID,PARAM_NAME,PARAM_TYPE,PARAM_ORDER,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'cost element', 'java.lang.Object', 3, NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUNCTION_ID VALUES(NULL)
/

insert into KC_KRMS_TERM_FUNCTION (KC_KRMS_TERM_FUNCTION_ID,KRMS_TERM_NM, DESCRIPTION, RETURN_TYPE, FUNCTION_TYPE, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'investigatorKeyPersonCertificationRule', 'verify that each investigator and key person are certified.', 'java.lang.String', '2', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_KC_KRMS_TERM_FUN_PARM_ID VALUES(NULL)
/
insert into KC_KRMS_TERM_FUN_PARAM(KC_KRMS_TERM_FUN_PARAM_ID, KC_KRMS_TERM_FUNCTION_ID, PARAM_NAME, PARAM_TYPE, PARAM_ORDER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
values ((SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUN_PARM_ID), (SELECT (MAX(ID)) FROM SEQ_KC_KRMS_TERM_FUNCTION_ID), 'DevelopmentProposal', 'org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal', 
1, NOW(), 'admin', 1, UUID())
/

DELIMITER ;

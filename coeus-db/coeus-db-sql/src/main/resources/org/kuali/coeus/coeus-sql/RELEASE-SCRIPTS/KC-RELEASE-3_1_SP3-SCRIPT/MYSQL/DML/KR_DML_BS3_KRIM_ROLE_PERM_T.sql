-- Add KRIM_ROLE_PERM_T with ROLE_PERM_ID = '1155' and ROLE_ID = '1245' and PERM_ID = '1247'
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES (NULL);
insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_PERM_ID_BS_S), uuid(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PD' AND ROLE_NM = 'Delete Proposal'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PD' AND NM = 'Delete Proposal'), 'Y');
    
-- Add KRIM_ROLE_PERM_T with ROLE_PERM_ID = '1156' and ROLE_ID = '1245' and PERM_ID = '1021'
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES (NULL);
insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_PERM_ID_BS_S), uuid(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PD' AND ROLE_NM = 'Delete Proposal'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PD' AND NM = 'View Proposal'), 'Y');
    
-- Add KRIM_ROLE_PERM_T with ROLE_PERM_ID = '1157' and ROLE_ID = '1245' and PERM_ID = '1022'
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES (NULL);
insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_PERM_ID_BS_S), uuid(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PD' AND ROLE_NM = 'Delete Proposal'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PD' AND NM = 'View Budget'), 'Y');
    
-- Add KRIM_ROLE_PERM_T with ROLE_PERM_ID = '1158' and ROLE_ID = '1245' and PERM_ID = '1023'
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES (NULL);
insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_PERM_ID_BS_S), uuid(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PD' AND ROLE_NM = 'Delete Proposal'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PD' AND NM = 'View Narratives'), 'Y'); 

delete from KRIM_ROLE_PERM_T WHERE ROLE_PERM_ID = '1118' AND ROLE_ID = '10000' AND PERM_ID = '306';
COMMIT;   
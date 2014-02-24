-- Add KRIM_ROLE_T with ROLE_ID = '1245' and KIM_TYP_ID = '1001'
insert into KRIM_ROLE_T (ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, NMSPC_CD, DESC_TXT, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT)
    VALUES (KRIM_ROLE_ID_BS_S.NEXTVAL, sys_guid(), 1, 'Delete Proposal', 'KC-PD', 'Delete Proposal Permission', (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Unit'), 'Y', null);
    
COMMIT;
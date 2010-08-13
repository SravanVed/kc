INSERT
INTO KRIM_ROLE_PERM_T
  (
    ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND
  )
  VALUES
  (
    KRIM_ROLE_PERM_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRB Administrator' and NMSPC_CD = 'KC-UNT'),
    (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND NM = 'Create ProtocolDocument'),'Y'
  ) ;

COMMIT;
UPDATE KRIM_TYP_T SET OBJ_ID = SYS_GUID() WHERE OBJ_ID = 'A8488117C37040B2A56531BCBB7DCD9B' ;
UPDATE KRIM_PERM_T SET OBJ_ID = SYS_GUID() WHERE OBJ_ID = '3F0FE9D4-83BC-7CC6-5292-49E6F23FA6F0' ;
UPDATE KRIM_PERM_ATTR_DATA_T SET OBJ_ID = SYS_GUID() WHERE OBJ_ID = '77151AD4B1F69985E0404F8189D80E8B' ;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET OBJ_ID = SYS_GUID() WHERE OBJ_ID = '5D0BD1CB88BF4EF794A08CA6E892F500' ;
UPDATE KRIM_ROLE_PERM_T SET OBJ_ID = SYS_GUID() WHERE OBJ_ID = '1C0D53B5D8EC4928A672DA52C2DB75F4' ;
UPDATE KRIM_ROLE_PERM_T SET OBJ_ID = SYS_GUID() WHERE OBJ_ID = 'D28CF8A4-0951-DE4E-4350-D29F8FEFE053' ;
UPDATE KRIM_GRP_MBR_T SET OBJ_ID = SYS_GUID() WHERE OBJ_ID = '77151AD4B1E59985E0404F8189D80E8B' ;
UPDATE KRNS_PARM_T SET OBJ_ID = SYS_GUID() WHERE OBJ_ID = 'd6173017-d9d4-4309-b69c-75c111efb04b' ;

COMMIT;

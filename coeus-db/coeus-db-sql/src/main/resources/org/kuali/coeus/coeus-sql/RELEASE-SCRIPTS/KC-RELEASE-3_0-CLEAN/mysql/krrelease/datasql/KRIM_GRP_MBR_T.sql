delimiter /
TRUNCATE TABLE KRIM_GRP_MBR_T
/
INSERT INTO KRIM_GRP_MBR_T (GRP_ID,GRP_MBR_ID,LAST_UPDT_DT,MBR_ID,MBR_TYP_CD,OBJ_ID,VER_NBR)
  VALUES ('2000','1122',STR_TO_DATE( '20081208124957', '%Y%m%d%H%i%s' ),'notsysadm','P','5B97C50B04CB6110E0404F8189D85213',1)
/
INSERT INTO KRIM_GRP_MBR_T (GRP_ID,GRP_MBR_ID,LAST_UPDT_DT,MBR_ID,MBR_TYP_CD,OBJ_ID,VER_NBR)
  VALUES ('1','1123',STR_TO_DATE( '20081208124957', '%Y%m%d%H%i%s' ),'admin','P','5B97C50B04CC6110E0404F8189D85213',1)
/
INSERT INTO KRIM_GRP_MBR_T (GRP_ID,GRP_MBR_ID,LAST_UPDT_DT,MBR_ID,MBR_TYP_CD,OBJ_ID,VER_NBR)
  VALUES ('1','1124',STR_TO_DATE( '20081208124957', '%Y%m%d%H%i%s' ),'notsys','P','5B97C50B04CD6110E0404F8189D85213',1)
/
delimiter ;

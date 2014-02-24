INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Unit'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'unitNumber'),'A','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'unitNumber'),'A','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'subunits'),'B','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Section'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'sectionName'),'a','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Action'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'documentAction'),'a','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'ProposalType'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'proposal'),'A','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'ProtocolType'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'protocol'),'A','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'CommitteeType'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'committee'),'A','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'AwardType'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'award'),'A','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'TimeAndMoneyType'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'timeandmoney'),'A','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_TYP_ATTR_T (KIM_TYP_ATTR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,SORT_CD,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES (KRIM_TYP_ATTR_ID_BS_S.NEXTVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Derived Role - Unit Administrator'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'unitNumber'),'A','Y',SYS_GUID(),1)
/

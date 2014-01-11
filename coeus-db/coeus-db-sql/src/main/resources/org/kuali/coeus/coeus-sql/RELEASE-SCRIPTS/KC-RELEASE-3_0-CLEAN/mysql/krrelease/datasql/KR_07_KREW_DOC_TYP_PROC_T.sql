delimiter /
INSERT INTO KREW_RTE_NODE_S VALUES (null)
/
INSERT INTO KREW_DOC_TYP_PROC_T (DOC_TYP_PROC_ID,NM,DOC_TYP_ID,INIT_RTE_NODE_ID,INIT_IND,VER_NBR)
    VALUES ((SELECT MAX(ID) FROM KREW_RTE_NODE_S),'PRIMARY',(SELECT DOC_TYP_ID FROM KREW_DOC_TYP_T WHERE DOC_TYP_NM = 'KualiDocument' AND DOC_TYP_VER_NBR = 1),(SELECT RTE_NODE_ID FROM KREW_RTE_NODE_T WHERE DOC_TYP_ID = (SELECT DOC_TYP_ID FROM KREW_DOC_TYP_T WHERE DOC_TYP_NM = 'KualiDocument' AND DOC_TYP_VER_NBR = 1)),1,3)
/
INSERT INTO KREW_RTE_NODE_S VALUES (null)
/
INSERT INTO KREW_DOC_TYP_PROC_T (DOC_TYP_PROC_ID,NM,DOC_TYP_ID,INIT_RTE_NODE_ID,INIT_IND,VER_NBR)
    VALUES ((SELECT MAX(ID) FROM KREW_RTE_NODE_S),'PRIMARY',(SELECT DOC_TYP_ID FROM KREW_DOC_TYP_T WHERE DOC_TYP_NM = 'KcMaintenanceDocument' AND DOC_TYP_VER_NBR = 0),(SELECT RTE_NODE_ID FROM KREW_RTE_NODE_T WHERE DOC_TYP_ID = (SELECT DOC_TYP_ID FROM KREW_DOC_TYP_T WHERE DOC_TYP_NM = 'KcMaintenanceDocument' AND DOC_TYP_VER_NBR = 0)),1,24)
/
INSERT INTO KREW_RTE_NODE_S VALUES (null)
/
INSERT INTO KREW_DOC_TYP_PROC_T (DOC_TYP_PROC_ID,NM,DOC_TYP_ID,INIT_RTE_NODE_ID,INIT_IND,VER_NBR)
    VALUES ((SELECT MAX(ID) FROM KREW_RTE_NODE_S),'PRIMARY',(SELECT DOC_TYP_ID FROM KREW_DOC_TYP_T WHERE DOC_TYP_NM = 'KcSharedMaintenanceDocument' AND DOC_TYP_VER_NBR = 0),(SELECT RTE_NODE_ID FROM KREW_RTE_NODE_T WHERE DOC_TYP_ID = (SELECT DOC_TYP_ID FROM KREW_DOC_TYP_T WHERE DOC_TYP_NM = 'KcSharedMaintenanceDocument' AND DOC_TYP_VER_NBR = 0)),1,61)
/
delimiter ;

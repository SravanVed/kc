UPDATE KRMS_TYP_T SET NM='CONTEXT-RULE-TEST' WHERE NM='CONTEXT' AND NMSPC_CD='KR-RULE-TEST'
/
INSERT INTO KRMS_TYP_T(TYP_ID,NM,NMSPC_CD,SRVC_NM,ACTV,VER_NBR) values ('KC1003','CONTEXT','KC-KRMS',null,'Y',1)
/
UPDATE KRMS_CNTXT_T SET TYP_ID='KC1003' where CNTXT_ID='KC-AWARD-CONTEXT'
/
UPDATE KRMS_CNTXT_T SET TYP_ID='KC1003' where CNTXT_ID='KC-COIDISCLOSURE-CONTEXT'
/
UPDATE KRMS_CNTXT_T SET TYP_ID='KC1003' where CNTXT_ID='KC-IACUC-CONTEXT'
/
UPDATE KRMS_CNTXT_T SET TYP_ID='KC1003' where CNTXT_ID='KC-PROTOCOL-CONTEXT'
/

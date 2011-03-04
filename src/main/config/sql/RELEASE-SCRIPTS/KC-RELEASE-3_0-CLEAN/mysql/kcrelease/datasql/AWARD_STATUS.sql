delimiter /
TRUNCATE TABLE AWARD_STATUS
/
INSERT INTO AWARD_STATUS (DESCRIPTION,OBJ_ID,STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Active','61589609DF58934BE0404F8189D83D34','1',STR_TO_DATE( '20090125000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO AWARD_STATUS (DESCRIPTION,OBJ_ID,STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Inactive','61589609DF5A934BE0404F8189D83D34','2',STR_TO_DATE( '20090125000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO AWARD_STATUS (DESCRIPTION,OBJ_ID,STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Pending','61589609DF59934BE0404F8189D83D34','3',STR_TO_DATE( '20090125000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO AWARD_STATUS (DESCRIPTION,OBJ_ID,STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Terminated','61589609DF5B934BE0404F8189D83D34','4',STR_TO_DATE( '20090125000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO AWARD_STATUS (DESCRIPTION,OBJ_ID,STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Closed','61589609DF5C934BE0404F8189D83D34','5',STR_TO_DATE( '20090125000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO AWARD_STATUS (DESCRIPTION,OBJ_ID,STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Hold','61589609DF5D934BE0404F8189D83D34','6',STR_TO_DATE( '20090125000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
delimiter ;

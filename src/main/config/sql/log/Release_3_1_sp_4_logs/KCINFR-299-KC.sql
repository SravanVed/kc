ALTER TABLE SPECIAL_REVIEW_USAGE ADD GLOBAL_FLAG CHAR(1 BYTE);

UPDATE SPECIAL_REVIEW_USAGE SET GLOBAL_FLAG = 'Y';
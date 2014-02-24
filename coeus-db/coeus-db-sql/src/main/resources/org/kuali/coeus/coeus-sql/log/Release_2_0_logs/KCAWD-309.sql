UPDATE REPORT_CLASS 
SET DESCRIPTION='Financial' 
WHERE REPORT_CLASS_CODE = 1;

INSERT INTO REPORT_CLASS (REPORT_CLASS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, GENERATE_REPORT_REQUIREMENTS)
VALUES('7', 'Proposals Due', SYSDATE, USER, 'Y') ;

COMMIT;
DELIMITER /
ALTER TABLE COI_DISCLOSURE_NOTEPAD 
ADD (CREATE_TIMESTAMP DATE )
/
ALTER TABLE COI_DISCLOSURE_NOTEPAD 
ADD (CREATE_USER VARCHAR(60) )
/

DELIMITER ;

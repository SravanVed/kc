-- Oracle
CREATE SEQUENCE SEQ_PROP_SCIENCE_KEYWORD_ID INCREMENT BY 1 START WITH 1 NOCACHE;

-- Mysql
CREATE TABLE SEQ_PROP_SCIENCE_KEYWORD_ID
(
    id bigint(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM;
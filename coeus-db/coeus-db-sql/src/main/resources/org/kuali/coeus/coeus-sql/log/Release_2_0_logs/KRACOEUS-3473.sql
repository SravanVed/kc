insert into BUDGET_CATEGORY_TYPE (BUDGET_CATEGORY_TYPE_CODE,DESCRIPTION,SORT_ID,UPDATE_TIMESTAMP,UPDATE_USER) VALUES ('H','Proposal Hierarchy Sub-Projects',6,to_date('2010-02-17 16:14:00', 'YYYY-MM-DD HH24:MI:SS'),'KRADEV');
INSERT INTO BUDGET_CATEGORY (BUDGET_CATEGORY_CODE,DESCRIPTION,CATEGORY_TYPE,UPDATE_TIMESTAMP,UPDATE_USER) VALUES ('37','Proposal Hierarchy Sub-Projects','H',to_date('2010-02-17 16:14:00', 'YYYY-MM-DD HH24:MI:SS'),'KRADEV');
update COST_ELEMENT set BUDGET_CATEGORY_CODE = '37' where COST_ELEMENT in ('PHTD01','PHTID02');

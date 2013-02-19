
CREATE OR REPLACE VIEW OSP$BUDGET_PROJECT_INCOME  ( PROPOSAL_NUMBER, VERSION_NUMBER, BUDGET_PERIOD, INCOME_NUMBER, AMOUNT, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER) 
AS select PROPOSAL_NUMBER, BUDGET_VERSION_NUMBER, BUDGET_PERIOD, PROJECT_INCOME_ID, AMOUNT, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER 
	from BUDGET_PROJECT_INCOME;
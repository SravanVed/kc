CREATE OR REPLACE procedure GET_TOT_BUD_INFO_FOR_PRNT
   ( AW_PROPOSAL_NUMBER IN OSP$BUDGET.PROPOSAL_NUMBER%TYPE,
     AW_VERSION_NUMBER IN OSP$BUDGET.VERSION_NUMBER%TYPE,
	  cur_generic IN OUT result_sets.cur_generic) is

		 prop_num OSP$BUDGET.PROPOSAL_NUMBER%TYPE;
       version_num OSP$BUDGET.VERSION_NUMBER%TYPE;
		 tot_cost  OSP$BUDGET.TOTAL_COST%TYPE;
		 tot_direct_cost OSP$BUDGET.TOTAL_DIRECT_COST%TYPE;
		 tot_ind_cost OSP$BUDGET.TOTAL_INDIRECT_COST%TYPE;
		 cost_shar_amt OSP$BUDGET.COST_SHARING_AMOUNT%TYPE;
       mod_budget  OSP$BUDGET.MODULAR_BUDGET_FLAG%TYPE;
begin

SELECT MODULAR_BUDGET_FLAG
INTO   mod_budget
FROM   OSP$BUDGET
WHERE	 PROPOSAL_NUMBER = AW_PROPOSAL_NUMBER
AND    VERSION_NUMBER = AW_VERSION_NUMBER;

prop_num := aw_proposal_number;
version_num := aw_version_number;

if mod_budget = 'N' then

	SELECT TOTAL_COST,
		    TOTAL_DIRECT_COST,
		    TOTAL_INDIRECT_COST,
		    COST_SHARING_AMOUNT
	INTO   tot_cost,tot_direct_cost,tot_ind_cost,cost_shar_amt
   FROM   OSP$BUDGET
	WHERE  PROPOSAL_NUMBER = AW_PROPOSAL_NUMBER
	AND    VERSION_NUMBER = AW_VERSION_NUMBER;
else

	SELECT   DECODE(SUM(TOTAL_direct_COST),NULL,0 ,SUM(TOTAL_direct_COST)),
        		DECODE(SUM(TOTAL_direct_COST),NULL,0 ,SUM(TOTAL_direct_COST)),
       		0 ,
       		0 
   INTO   tot_cost,tot_direct_cost,tot_ind_cost,cost_shar_amt
	FROM   OSP$BUDGET_MODULAR
	WHERE  PROPOSAL_NUMBER = AW_PROPOSAL_NUMBER
	AND    VERSION_NUMBER = AW_VERSION_NUMBER;

end if;

open cur_generic for

SELECT prop_num AS PROPOSAL_NUMBER,
       version_num AS VERSION_NUMBER,
		 tot_cost AS TOTAL_COST,
		 tot_direct_cost AS TOTAL_DIRECT_COST,
		 tot_ind_cost AS TOTAL_INDIRECT_COST,
		 cost_shar_amt AS COST_SHARING_AMOUNT
FROM   DUAL;


end;
/


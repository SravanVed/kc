-- This sql will load all updated Help urls in to the parameters table.

delete from sh_parm_t where sh_parm_typ_cd='HELP';
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetVersionsHelp','HELP','default.htm?turl=WordDocuments%2Fbudgetversionspage.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetSummaryHelp','HELP','default.htm?turl=WordDocuments%2Fsummarypage.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetPersonnelHelp','HELP','default.htm?turl=WordDocuments%2Fprojectpersonnelpage.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetRatesHelp','HELP','default.htm?turl=WordDocuments%2Fratespage.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetExpensesHelp','HELP','expensespage.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetTotalsHelp','HELP','default.htm?turl=WordDocuments%2Ftotalspage.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetDistributionAndIncomeHelp','HELP','distributionincomepage.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetModularBudgetHelp','HELP','default.htm?turl=WordDocuments%2Fmodularbudgetpage.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetActionsHelp','HELP','default.htm?turl=WordDocuments%2Fbudgetactionspage.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetStatusHelpUrl','HELP','default.htm?turl=WordDocuments%2Fbudgetversionstab.htm','Budget Status Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetPeriodHelpUrl','HELP','default.htm?turl=WordDocuments%2Fbudgetperiodstotalstab.htm','Budget Period Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetRateClassHelpUrl','HELP','default.htm?turl=WordDocuments%2Frateclasstab.htm','Rate Class Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetPersonHelpUrl','HELP','default.htm?turl=WordDocuments%2Fprojectpersonnelpage.htm','Budget Person Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetUnrecoveredFandAHelpUrl','HELP','default.htm?turl=WordDocuments%2Funrecoveredfatab.htm','Budget Unrecovered F and A Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetProjectIncomeHelpUrl','HELP','default.htm?turl=WordDocuments%2Fprojectincometab.htm','Budget Project Income Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetCategoryHelpUrl','HELP','default.htm?turl=WordDocuments%2Fcategorytab.htm','Budget Category Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetCostShareHelpUrl','HELP','default.htm?turl=WordDocuments%2Fbudgetcostsharetab.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetLineItemHelpUrl','HELP','default.htm?turl=WordDocuments%2Fbudgetlineitem.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetbudgetPersonnelDetailsHelpUrl','HELP','default.htm?turl=WordDocuments%2Fpersonneldetailstab.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-B','D','budgetModularHelpUrl','HELP','default.htm?turl=WordDocuments%2Fbudgetmodulartab.htm','Budget Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentKeyPersonnelHelp','HELP','default.htm?turl=WordDocuments%2Fkeypersonnelpage.htm','Proposal Development Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentSpecialReviewHelp','HELP','default.htm?turl=WordDocuments%2Fspecialreviewpage.htm','Proposal Development Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentCustomDataHelp','HELP','default.htm?turl=WordDocuments%2Fcustomdatapage.htm','Proposal Development Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentQuestionsHelp','HELP','default.htm?turl=WordDocuments%2Fquestionspage.htm','Proposal Development Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentPermissionsHelp','HELP','default.htm?turl=WordDocuments%2Fpermissionspage.htm','Proposal Development Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentAbstractsAttachmentsHelp','HELP','default.htm?turl=WordDocuments%2Fabstractsandattachmentspage.htm','Proposal Development Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentProposalHelp','HELP','default.htm?turl=WordDocuments%2Fproposalpage.htm','Proposal Development Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentGrantsGovHelp','HELP','default.htm?turl=WordDocuments%2Fgrantsgovpage.htm','Proposal Development Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentActionsHelp','HELP','default.htm?turl=WordDocuments%2Fproposalactionspage.htm','Proposal Development Page Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentSponsorHelpUrl','HELP','default.htm?turl=WordDocuments%2Fsponsorprograminformationtab.htm','Sponsor Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentOrganizationHelpUrl','HELP','default.htm?turl=WordDocuments%2F?organizationlocationtab.htm','Organization Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentLocationHelpUrl','HELP','default.htm?turl=WordDocuments%2Forganizationlocationtab.htm','Location Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentKeywordsHelpUrl','HELP','default.htm?turl=WordDocuments%2Fkeywordstab.htm','Keywords Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentCreditSplitHelpUrl','HELP','default.htm?turl=WordDocuments%2Fcombinedcreditsplittab.htm','Credit Split Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentYnqHelpUrl','HELP','default.htm?turl=WordDocuments%2Fquestionspage.htm','Yes/No Questions Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentPersonHelpUrl','HELP','default.htm?turl=WordDocuments%2Fpersonnametab.htm','Person Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentOpportunityHelpUrl','HELP','default.htm?turl=WordDocuments%2Fopportunitysection.htm','Grants.gov Opportunity Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentNarrativeHelpUrl','HELP','','Narrative Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentAbstractHelpUrl','HELP','default.htm?turl=WordDocuments%2Fabstractstab.htm','Abstract Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentCustomAttributeHelpUrl','HELP','default.htm?turl=WordDocuments%2Fcustomattributetab.htm','Custom Attribute Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentMailByHelpUrl','HELP','default.htm?turl=WordDocuments%2Fdeliveryinfotab.htm','Mail By Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentProposalTypeHelpUrl','HELP','default.htm?turl=WordDocuments%2Frequiredfieldsforsavingdocumenttab.htm','Proposal Type Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentSpecialReviewHelpUrl','HELP','default.htm?turl=WordDocuments%2Fspecialreviewtab.htm','Special Review Help','A','WorkflowAdmin','Y');
INSERT INTO SH_PARM_T (SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD,SH_PARM_NM,SH_PARM_TYP_CD,SH_PARM_TXT,SH_PARM_DESC,SH_PARM_CONS_CD,WRKGRP_NM,ACTIVE_IND) VALUES ('KRA-PD','D','proposalDevelopmentCopyCriteriaHelpUrl','HELP','default.htm?turl=WordDocuments%2Fcopytab.htm','Proposal Copy Criteria Help','A','WorkflowAdmin','Y');
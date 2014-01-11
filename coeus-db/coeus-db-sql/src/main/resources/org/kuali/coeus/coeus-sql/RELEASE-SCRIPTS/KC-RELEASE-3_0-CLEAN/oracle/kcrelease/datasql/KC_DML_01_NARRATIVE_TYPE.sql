TRUNCATE TABLE NARRATIVE_TYPE DROP STORAGE
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','Narrative','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','Facilities','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','Equipment','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','Bibliography','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5','ProjectSummary','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('6','Pre-Application','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('7','BudgetJustification','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('8','Other','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('9','SubawardBudget','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('10','TableofContents','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('11','Additionalkeypersons','P','Y','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('12','Additionalequipment','P','Y','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('13','PersonalData','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('14','PropietaryInformation','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('15','SupplementaryDocumentation','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('16','Biosketch','P','Y','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('17','CurrentPending','P','Y','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('18','Profile','P','Y','Y','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('19','Other_Attachments_Form','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('20','PHS_ResPlan_IntroductionToApplication','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('21','PHS_ResearchPlan_SpecificAims','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('22','PHS_ResPlan_BackgroundSignificance','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('23','PHS_ResearchPlan_ProgressReport','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('24','PHS_ResPlan_ResearchDesignMethods','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('25','PHS_ResearchPlan_ProtectionOfHumanSubjects','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('26','PHS_ResearchPlan_InclusionOfWomenAndMinorities','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('27','PHS_ResearchPlan_TargetedPlannedEnrollmentTable','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('28','PHS_ResearchPlan_InclusionOfChildren','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('29','PHS_ResearchPlan_DataAndSafetyMonitoringPlan','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('30','PHS_ResearchPlan_VertebrateAnimals','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('31','PHS_ResearchPlan_ConsortiumContractualArrangements','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('32','PHS_ResearchPlan_LettersOfSupport','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('33','PHS_ResearchPlan_ResourceSharingPlans','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('34','PHS_ResearchPlan_Appendix','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('35','PHS_ModBud_PersonJustif','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('36','PHS_ModBud_ConsortJustif','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('37','PHS_ModBud_NarrativeJustif','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('38','PHS_Certification_Explanation','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('39','PHS_Cover_Letter','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('40','Performance_sites','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('41','SF424V2_AdditionalProjectTitle','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('42','SF424V2_AdditionalCongressionalDistricts','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('43','PHS_ResearchPlan_InclusionEnrollmentReport','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('44','PHS_ResearchPlan_ProgressReportPubList','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('45','PHS_ResearchPlan_SelectAgentResearch','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('46','PHS_ResearchPlan_MultiplePILeadershipPlan','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('47','NASA_OPI_ProgramSpecificData','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('48','NASA_OPI_Appendices','P','M','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('49','NASA_OPI_Non-U.S-OrganizationLettersOfEndorsement','P','M','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('50','NASA_OPI_IRB_ACUC_Letters','P','M','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('51','ED_GEPA427_Attachment','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('52','ED_Abstract_Attachment','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('53','Project_Attachments','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('54','ED_SF424_Supplement_Attachment','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('55','MIT Cost-Sharing Distribution','O','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('56','MIT F&A Under-recovery Distribution','O','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('57','Budget_Attachments','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('58','ED_CertificationDebarment','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('59','AdditionalCongressionalDistricts','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('60','Other Institutional Attachment','O','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('61','Attachments','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('62','PHS_Career_Candidate_Background','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('63','PHS_Career_Goals_Objectives','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('64','PHS_Career_Dev_Training','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('65','PHS_Career_Training_Resp_Conduct_Research','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('66','PHS_Career_Mentoring_Plan','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('67','PHS_Career_Mentor_Statements_Letters','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('68','PSH_Career_Inst_Environment','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('69','PHS_Career_Inst_Commitment','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('70','PHS_Career_IntroductionToApplication','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('71','PHS_Career_SpecificAims','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('72','PHS_Career_BackgroundSignificance','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('73','PHS_Career_ResearchDesignMethods','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('74','PHS_Career_ProtectionOfHumanSubjects','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('75','PHS_Career_InclusionOfWomenAndMinorities','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('76','PHS_Career_TargetedPlannedEnrollmentTable','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('77','PHS_Career_InclusionOfChildren','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('78','PHS_Career_VertebrateAnimals','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('79','PHS_Career_InclusionEnrollmentReport','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('80','PHS_Career_ProgressReportPubList','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('81','PHS_Career_SelectAgentResearch','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('82','PHS_Career_Prelim_Studies_ProgRep','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('83','PHS_Career_Consortium_Contract','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('84','PHS_Career_Resource_Sharing_Plan','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('85','PHS_Career_Appendix','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('86','RRSF424_SFLLL_OtherExplanatory','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('87','NSF_SingleCopyDocument','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('88','PHS_Fellow_RespectiveContributions','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('89','PHS_Fellow_SelectionSponsorInstitution','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('90','PHS_Fellow_ResponsibleConductResearch','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('91','PHS_Fellow_ConcurrentSupport','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('92','PHS_Fellow_Goals_FellowshipTrainingCareer','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('93','PHS_Fellow_DocDissertOtherResExperience','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('94','PHS_Fellow_ActivitiesPlanned','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('95','PHS_Fellow_AssurancesCertification','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('96','PHS_Fellow_Appendix','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('97','PHS_Fellow_IntorductionToApplication','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('98','PHS_Fellow_SpecificAims','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('99','PHS_Fellow_BackgroundSignificance','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('100','PHS_Fellow_PrelimStudies_ProgRpt','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('101','PHS_Fellow_ResearchDesignMethods','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('102','PHS_Fellow_InclusionEnrollmentRpt','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('103','PHS_Fellow_ProgressReport_PubList','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('104','PHS_Fellow_ProtectionOfHumanSubjects','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('105','PHS_Fellow_InclusionOfWomenAndMinorities','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('106','PHS_Fellow_TargetedPlannedEnrollment','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('107','PHS_Fellow_InclusionOfChildren','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('108','PHS_Fellow_VertebrateAnimals','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('109','PHS_Fellow_SelectAgentResearch','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('110','PHS_Fellow_ResourceSharingPlan','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('111','PHS_ResearchPlan_ResearchStrategy','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('112','PHS_ResTrainingPlan_Introduction','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('113','PHS_ResTrainingPlan_Background','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('114','PHS_ResTrainingPlan_ProgramPlan','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('115','PHS_ResTrainingPlan_RecruitmentPlan','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('116','PHS_ResTrainingPlan_RespConductResearch','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('117','PHS_ResTrainingPlan_ProgressReport','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('118','PHS_ResTrainingPlan_HumanSubjects','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('119','PHS_ResTrainingPlan_VertAnimals','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('120','PHS_ResTrainingPlan_SelectAgentResearch','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('121','PHS_ResTrainingPlan_PILeadershipPlan','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('122','PHS_ResTrainingPlan_ConsContractual','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('123','PHS_ResTrainingPlan_FacBiosketches','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('124','PHS_ResTrainingPlan_DataTables','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('125','PHS_ResTrainingPlan_SupportLetters','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('126','PHS_ResTrainingPlan_Appendix','P','Y','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('127','PHS_Fellow_ResearchStrategy','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('128','PHS_Career_Res_Strategy','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('130','PHS_Train_Budg_Just','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('131','Budget_Justification_Fed_NonFed','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('132','Budget_Justification_10YR','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('133','Budget_Justification_10YR_Fed_NonFed','P','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('299','Institutional Narrative 1 - Change this description as Needed','O','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('900','1st Institutional Attachment','O','N','N','admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO NARRATIVE_TYPE (NARRATIVE_TYPE_CODE,DESCRIPTION,NARRATIVE_TYPE_GROUP,ALLOW_MULTIPLE,SYSTEM_GENERATED,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('901','2nd Institutional Attachment','O','N','N','admin',SYSDATE,SYS_GUID(),1)
/

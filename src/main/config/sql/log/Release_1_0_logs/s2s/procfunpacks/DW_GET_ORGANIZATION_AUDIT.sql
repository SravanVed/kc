CREATE OR REPLACE PROCEDURE          DW_GET_ORGANIZATION_AUDIT
   ( as_organization_id IN OSP$ORGANIZATION_AUDIT.organization_id%TYPE,
     cur_audit IN OUT result_sets.cur_generic) is

begin
open cur_audit for
SELECT OSP$ORGANIZATION_AUDIT.ORGANIZATION_ID,
         OSP$ORGANIZATION_AUDIT.FISCAL_YEAR,
         OSP$ORGANIZATION_AUDIT.AUDIT_ACCEPTED,
         OSP$ORGANIZATION_AUDIT.AUDIT_COMMENT,
         OSP$ORGANIZATION_AUDIT.UPDATE_TIMESTAMP,
         OSP$ORGANIZATION_AUDIT.UPDATE_USER
FROM 	OSP$ORGANIZATION_AUDIT
WHERE	OSP$ORGANIZATION_AUDIT.ORGANIZATION_ID = as_organization_id;
end;
/

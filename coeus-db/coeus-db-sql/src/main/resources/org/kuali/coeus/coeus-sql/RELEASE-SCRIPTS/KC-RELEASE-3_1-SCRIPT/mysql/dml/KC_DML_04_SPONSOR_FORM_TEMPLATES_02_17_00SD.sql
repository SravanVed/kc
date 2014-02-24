DELIMITER /
INSERT INTO SEQ_SPONSOR_FORM_TEMPLATES VALUES(NULL)
/
INSERT INTO SPONSOR_FORM_TEMPLATES (SPONSOR_FORM_TEMPLATE_ID,SPONSOR_FORM_ID,PAGE_NUMBER,PAGE_DESCRIPTION,FILE_NAME,CONTENT_TYPE,FORM_TEMPLATE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_SPONSOR_FORM_TEMPLATES),(SELECT SPONSOR_FORM_ID FROM SPONSOR_FORMS WHERE PACKAGE_NAME = 'NIH 398 package (Coeus 4.0)'),17,'Resources','Resources.xslt','text/xml',
'<?xml version="1.0" encoding="UTF-8"?>
<!--Designed and generated by Altova StyleVision Enterprise Edition 2008 rel. 2 - see http://www.altova.com/stylevision for more information.-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:common="http://era.nih.gov/Projectmgmt/SBIR/CGAP/common.namespace" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:nih="http://era.nih.gov/Projectmgmt/SBIR/CGAP/nihspecific.namespace" xmlns:phs398="http://era.nih.gov/Projectmgmt/SBIR/CGAP/phs398.namespace" xmlns:rar="http://era.nih.gov/Projectmgmt/SBIR/CGAP/researchandrelated.namespace" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>
<xsl:param name="SV_OutputFormat" select="''PDF''"/>
<xsl:variable name="XML" select="/"/>
<xsl:variable name="fo:layout-master-set">
<fo:layout-master-set>
<fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.4in" margin-right="0.4in">
<fo:region-body margin-top="0.5in" margin-bottom="0.65in"/>
<fo:region-before extent="0.5in"/>
<fo:region-after extent="0.65in"/>
</fo:simple-page-master>
</fo:layout-master-set>
</xsl:variable>
<xsl:template match="/">
<fo:root>
<xsl:copy-of select="$fo:layout-master-set"/>
<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
<xsl:call-template name="headerall"/>
<xsl:call-template name="footerall"/>
<fo:flow flow-name="xsl-region-body">
<fo:block>
<xsl:for-each select="$XML">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:table font-family="Verdana" line-height="10pt" table-layout="fixed" width="100%" border-spacing="0">
<fo:table-column column-width="proportional-column-width(1)"/>
<fo:table-column column-width="proportional-column-width(1)"/>
<fo:table-column column-width="proportional-column-width(1)"/>
<fo:table-body start-indent="0pt">
<fo:table-row>
<fo:table-cell number-columns-spanned="3" padding="0" text-align="center" display-align="before">
<fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block margin-left="(100% - 100%) div 2" margin-right="(100% - 100%) div 2" margin="0pt">
<fo:block>
<fo:block text-align="center">
<fo:leader leader-pattern="rule" rule-thickness="1" leader-length="100%" color="black"/>
</fo:block>
</fo:block>
</fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block margin="0pt">
<fo:block>
<fo:inline font-weight="bold">
<xsl:text>RESOURCES</xsl:text>
</fo:inline>
</fo:block>
</fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block margin="0pt">
<fo:block>
<fo:block text-align="center">
<fo:leader leader-pattern="rule" rule-thickness="1" leader-length="100%" color="black"/>
</fo:block>
</fo:block>
</fo:block>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-top="0pt" number-columns-spanned="3" padding="0" height="22" display-align="before">
<fo:block>
<fo:inline font-family="Verdana" font-size="9pt">
<xsl:text>FACIILTIES:&#160; Specify the facilities to be used for the conduct of the proposed research. Indicate the performance sites and describe capacities, pertinent capabilities, relative proximity, and extent of availability to the project. If research involving Select Agent(s) will occur at any performance site(s), the biocontainment resources available at each site should be described. Under &quot;Other,&quot; identify support services such as machine shop,electronics shop, and specify the extent to which they will be available to the project. Use continuation pages if necessary.</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-bottom="0pt" padding-top="6pt" number-columns-spanned="3" padding="0" display-align="center">
<fo:block>
<fo:inline font-family="Verdana" font-size="10pt" font-weight="bold">
<xsl:text>Laboratory:</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell line-height="12pt" padding-left="12pt" padding-top="0pt" number-columns-spanned="3" padding="0" display-align="before">
<fo:block>
<xsl:if test="string-length(nih:ResearchAndRelatedProject/Abstract [AbstractTypeCode = 4]/AbstractText ) &lt;= 0"/>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<xsl:for-each select="Abstract">
<xsl:for-each select="AbstractText">
<xsl:if test="../AbstractTypeCode = 4">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block line-height="10pt" white-space="pre" white-space-collapse="false" margin="0pt">
<fo:block>
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:block>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-bottom="0pt" padding-top="6pt" number-columns-spanned="3" padding="0" display-align="center">
<fo:block>
<fo:inline font-family="Verdana" font-size="10pt" font-weight="bold">
<xsl:text>Clinical:</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-left="12pt" padding-top="0pt" number-columns-spanned="3" padding="0" display-align="before">
<fo:block>
<xsl:if test="string-length(nih:ResearchAndRelatedProject/Abstract [AbstractTypeCode = 5]/AbstractText ) &lt;= 0"/>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<xsl:for-each select="Abstract">
<xsl:for-each select="AbstractText">
<xsl:if test="../AbstractTypeCode = 5">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block line-height="10pt" white-space="pre" white-space-collapse="false" margin="0pt">
<fo:block>
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:block>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-bottom="0pt" padding-top="6pt" number-columns-spanned="3" padding="0" display-align="center">
<fo:block>
<fo:inline font-family="Verdana" font-size="10pt" font-weight="bold">
<xsl:text>Animal:</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-left="12pt" padding-top="0pt" number-columns-spanned="3" padding="0" display-align="before">
<fo:block>
<xsl:if test="string-length(nih:ResearchAndRelatedProject/Abstract [AbstractTypeCode = 6]/AbstractText ) &lt;= 0"/>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<xsl:for-each select="Abstract">
<xsl:for-each select="AbstractText">
<xsl:if test="../AbstractTypeCode = 6">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block line-height="10pt" white-space="pre" white-space-collapse="false" margin="0pt">
<fo:block>
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:block>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-bottom="0pt" padding-top="6pt" number-columns-spanned="3" padding="0" display-align="center">
<fo:block>
<fo:inline font-family="Verdana" font-size="10pt" font-weight="bold">
<xsl:text>Computer:</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-left="12pt" padding-top="0pt" number-columns-spanned="3" padding="0" display-align="before">
<fo:block>
<xsl:if test="string-length(nih:ResearchAndRelatedProject/Abstract [AbstractTypeCode = 7]/AbstractText ) &lt;= 0"/>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<xsl:for-each select="Abstract">
<xsl:for-each select="AbstractText">
<xsl:if test="../AbstractTypeCode = 7">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block line-height="10pt" white-space="pre" white-space-collapse="false" margin="0pt">
<fo:block>
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:block>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-bottom="0pt" padding-top="6pt" number-columns-spanned="3" padding="0" display-align="center">
<fo:block>
<fo:inline font-family="Verdana" font-size="10pt" font-weight="bold">
<xsl:text>Office:</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-left="12pt" padding-top="0pt" number-columns-spanned="3" padding="0" display-align="before">
<fo:block>
<xsl:if test="string-length(nih:ResearchAndRelatedProject/Abstract [AbstractTypeCode = 8]/AbstractText ) &lt;= 0"/>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<xsl:for-each select="Abstract">
<xsl:for-each select="AbstractText">
<xsl:if test="../AbstractTypeCode = 8">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block line-height="10pt" white-space="pre" white-space-collapse="false" margin="0pt">
<fo:block>
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:block>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-bottom="0pt" padding-top="6pt" number-columns-spanned="3" padding="0" display-align="center">
<fo:block>
<fo:inline font-family="Verdana" font-size="10pt" font-weight="bold">
<xsl:text>Other:</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-left="12pt" padding-top="0pt" number-columns-spanned="3" padding="0" display-align="before">
<fo:block>
<xsl:if test="string-length(nih:ResearchAndRelatedProject/Abstract [AbstractTypeCode = 11]/AbstractText ) &lt;= 0"/>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<xsl:for-each select="Abstract">
<xsl:for-each select="AbstractText">
<xsl:if test="../AbstractTypeCode = 11">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block line-height="10pt" white-space="pre" white-space-collapse="false" margin="0pt">
<fo:block>
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:block>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell number-columns-spanned="3" padding="0" display-align="center">
<fo:block>
<fo:block>
<fo:leader leader-pattern="space"/>
</fo:block>
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block padding-bottom="0pt" padding-top="6pt" margin="0pt">
<fo:block>
<fo:block text-align="center">
<fo:leader leader-pattern="rule" rule-thickness="1" leader-length="100%" color="black"/>
</fo:block>
</fo:block>
</fo:block>
<fo:inline font-family="Verdana" font-size="9pt" font-weight="bold">
<xsl:text>MAJOR EQUIPMENT:</xsl:text>
</fo:inline>
<fo:inline font-family="Verdana" font-size="9pt">
<xsl:text> List the most important equipment items already available for this project, noting the location and pertinent capabilities of each.</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding-bottom="0pt" padding-left="12pt" padding-top="0pt" number-columns-spanned="3" padding="0" display-align="before">
<fo:block>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<xsl:for-each select="Abstract">
<xsl:for-each select="AbstractText">
<xsl:if test="../AbstractTypeCode = 10">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:block line-height="10pt" white-space="pre" white-space-collapse="false" margin="0pt">
<fo:block>
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family="Verdana" font-size="10pt">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:block>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
</xsl:for-each>
</fo:block>
<fo:block id="SV_RefID_PageTotal"/>
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>
<xsl:template name="headerall">
<fo:static-content flow-name="xsl-region-before">
<fo:block>
<xsl:for-each select="$XML">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:table table-layout="fixed" width="100%" border-spacing="2pt">
<fo:table-column column-width="proportional-column-width(1)"/>
<fo:table-column column-width="proportional-column-width(1)"/>
<fo:table-body start-indent="0pt">
<fo:table-row>
<fo:table-cell padding="0" number-columns-spanned="2" height="18" display-align="center">
<fo:block/>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell font-size="9pt" padding="0" number-columns-spanned="2" text-align="center" display-align="center">
<fo:block>
<fo:inline>
<xsl:text>Principal Investigator/Program Director (Last, first, middle): </xsl:text>
</fo:inline>
<xsl:for-each select="nih:ResearchAndRelatedProject">
<xsl:for-each select="nih:ResearchCoverPage">
<xsl:for-each select="nih:ProgramDirectorPrincipalInvestigator">
<xsl:for-each select="Name">
<xsl:for-each select="LastName">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block text-decoration="underline">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline text-decoration="underline">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
<fo:inline text-decoration="underline">
<xsl:text>, </xsl:text>
</fo:inline>
<xsl:for-each select="FirstName">
 <xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block text-decoration="underline">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline text-decoration="underline">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
<fo:inline text-decoration="underline">
<xsl:text>&#160;</xsl:text>
</fo:inline>
<xsl:for-each select="MiddleName">
<xsl:variable name="value-of-template">
<xsl:apply-templates/>
</xsl:variable>
<xsl:choose>
<xsl:when test="contains(string($value-of-template),''&#x2029;'')">
<fo:block text-decoration="underline">
<xsl:copy-of select="$value-of-template"/>
</fo:block>
</xsl:when>
<xsl:otherwise>
<fo:inline text-decoration="underline">
<xsl:copy-of select="$value-of-template"/>
</fo:inline>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding="0" number-columns-spanned="2" height="14" display-align="center">
<fo:block/>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
</xsl:for-each>
</fo:block>
</fo:static-content>
</xsl:template>
<xsl:template name="footerall">
<fo:static-content flow-name="xsl-region-after">
<fo:block>
<xsl:for-each select="$XML">
<fo:inline-container>
<fo:block>
<xsl:text>&#x2029;</xsl:text>
</fo:block>
</fo:inline-container>
<fo:table table-layout="fixed" width="100%" border-spacing="2pt">
<fo:table-column column-width="proportional-column-width(1)"/>
<fo:table-column column-width="150"/>
<fo:table-body start-indent="0pt">
<fo:table-row>
<fo:table-cell padding="0" number-columns-spanned="2" height="1" display-align="center">
<fo:block/>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell padding="0" number-columns-spanned="2" display-align="center">
<fo:block>
<fo:block text-align="center">
<fo:leader leader-pattern="rule" rule-thickness="1" leader-length="100%" color="black"/>
</fo:block>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row>
<fo:table-cell font-size="9pt" padding="0" text-align="left" display-align="center">
<fo:block>
<fo:inline>
<xsl:text>PHS 398 (Rev. 11/07)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </xsl:text>
</fo:inline>
<fo:inline>
<xsl:text>Page: </xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
<fo:table-cell font-size="9pt" padding="0" text-align="right" display-align="center">
<fo:block>
<fo:inline>
<xsl:text>Resources Format Page</xsl:text>
</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
</xsl:for-each>
</fo:block>
</fo:static-content>
</xsl:template>
<xsl:template name="double-backslash">
<xsl:param name="text"/>
<xsl:param name="text-length"/>
<xsl:variable name="text-after-bs" select="substring-after($text, '''')"/>
<xsl:variable name="text-after-bs-length" select="string-length($text-after-bs)"/>
<xsl:choose>
<xsl:when test="$text-after-bs-length = 0">
<xsl:choose>
<xsl:when test="substring($text, $text-length) = ''''">
<xsl:value-of select="concat(substring($text,1,$text-length - 1), \'\'\\\'\')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$text"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="concat(substring($text,1,$text-length - $text-after-bs-length - 1), \'\'\\\'\')"/>
<xsl:call-template name="double-backslash">
<xsl:with-param name="text" select="$text-after-bs"/>
<xsl:with-param name="text-length" select="$text-after-bs-length"/>
</xsl:call-template>
</xsl:otherwise>
</xsl:choose>
</xsl:template>
</xsl:stylesheet>','admin',NOW(),UUID(),1)
/
DELIMITER ;

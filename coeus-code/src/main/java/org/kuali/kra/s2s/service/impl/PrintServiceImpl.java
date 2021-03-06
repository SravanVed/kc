/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.s2s.service.impl;

import gov.grants.apply.system.metaGrantApplication.GrantApplicationDocument;
import gov.grants.apply.system.metaGrantApplication.GrantApplicationDocument.GrantApplication.Forms;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xpath.XPathAPI;
import org.kuali.coeus.common.framework.print.AttachmentDataSource;
import org.kuali.coeus.common.framework.print.Printable;
import org.kuali.coeus.common.framework.print.PrintingException;
import org.kuali.coeus.common.framework.print.PrintingService;
import org.kuali.coeus.propdev.impl.core.DevelopmentProposal;
import org.kuali.coeus.propdev.impl.core.ProposalDevelopmentDocument;
import org.kuali.coeus.sys.api.model.KcFile;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.coeus.propdev.impl.person.attachment.ProposalPersonBiography;
import org.kuali.kra.s2s.S2SException;
import org.kuali.coeus.propdev.api.attachment.NarrativeContract;
import org.kuali.coeus.propdev.api.attachment.NarrativeService;
import org.kuali.coeus.propdev.api.s2s.UserAttachedFormService;
import org.kuali.kra.s2s.depend.*;
import org.kuali.kra.s2s.formmapping.FormMappingInfo;
import org.kuali.kra.s2s.formmapping.FormMappingLoader;
import org.kuali.kra.s2s.generator.S2SBaseFormGenerator;
import org.kuali.kra.s2s.generator.bo.AttachmentData;
import org.kuali.kra.s2s.printing.print.S2SFormPrint;
import org.kuali.kra.s2s.service.*;
import org.kuali.kra.s2s.util.AuditError;
import org.kuali.kra.s2s.util.XPathExecutor;
import org.kuali.rice.core.api.config.property.ConfigurationService;
import org.w3c.dom.Element;

import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * This class is implementation of PrintService. It provides the functionality
 * to generate PDF for all forms along with their attachments
 */
public class PrintServiceImpl implements PrintService {
	private static final Log LOG = LogFactory.getLog(PrintServiceImpl.class);

	private S2sApplicationService s2sApplicationService;
	private S2SFormGeneratorService s2SFormGeneratorService;
	private S2SValidatorService s2SValidatorService;

	private S2SUtilService s2SUtilService;
    private NarrativeService narrativeService;
	private PrintingService printingService;
	File grantsGovXmlDirectoryFile = null;

	/**
	 * 
	 * This method is used for the printing of forms in PDF format. It generates
	 * PDF forms and puts it into {@link KcFile}
	 * 
	 * @param pdDoc (ProposalDevelopmentDocument)
	 * @return {@link KcFile} which contains all information
	 *         related to the generated PDF
	 * @throws
	 * @throws S2SException
	 * 
	 */
    @Override
	public PrintResult printForm(
			ProposalDevelopmentDocument pdDoc) throws S2SException,
			PrintingException {
		PrintableResult pResult;
		S2sAppSubmissionContract s2sAppSubmission = getLatestS2SAppSubmission(pdDoc);
		if (s2sAppSubmission != null
				&& s2sAppSubmission.getGgTrackingId() != null) {
            pResult = getSubmittedPDFStream(pdDoc);
		} else {
            pResult = getPDFStream(pdDoc);
		}
	    if(pdDoc.getDevelopmentProposal().getGrantsGovSelectFlag()){
		
		return null;
	    }
	    AttachmentDataSource attachmentDataSource = printingService
        	.print(pResult.printables);
		attachmentDataSource.setName(getFileNameForFormPrinting(pdDoc));

        PrintResult result = new PrintResult();
        result.setFile(attachmentDataSource);
        result.setErrors(pResult.errors);
        return result;
	}

	protected void saveGrantsGovXml(ProposalDevelopmentDocument pdDoc, boolean formEntryFlag,XmlObject formObject,List<AttachmentData> attachmentList,List<? extends S2sAppAttachmentsContract> attachmentLists) throws Exception{
	    String loggingDirectory = KcServiceLocator.getService(ConfigurationService.class).getPropertyValueAsString(Constants.PRINT_XML_DIRECTORY);
        String opportunityId = pdDoc.getDevelopmentProposal().getS2sOpportunity().getOpportunityId();
        String proposalnumber = pdDoc.getDevelopmentProposal().getProposalNumber();
        String exportDate = StringUtils.replaceChars((pdDoc.getDevelopmentProposal().getUpdateTimestamp().toString()), ":", "_");  
        exportDate = StringUtils.replaceChars(exportDate, " ", ".");
        if (grantsGovXmlDirectoryFile == null) {
            grantsGovXmlDirectoryFile = new File(loggingDirectory + opportunityId + "." + proposalnumber + "." + exportDate);
        }
        if (formEntryFlag) {
            grantsGovXmlDirectoryFile.mkdir();
        }
        pdDoc.setSaveXmlFolderName(grantsGovXmlDirectoryFile.getName());
        for (AttachmentData attachmentData : attachmentList) {
            File attachmentFile = new File(grantsGovXmlDirectoryFile,"Attachments");
            attachmentFile.mkdir();
            File attachedFile = new File(attachmentFile,attachmentData.getFileName());
            FileOutputStream output = new FileOutputStream(attachedFile);
            output.write(attachmentData.getContent());
            output.close();
        }
        for (S2sAppAttachmentsContract attAppAttachments : attachmentLists) {
            File attachmentFile = new File(grantsGovXmlDirectoryFile,"Attachments");   
            attachmentFile.mkdir();
            KcFile ads = getAttributeContent(pdDoc,attAppAttachments.getContentId());
            File attachedFile = new File(attachmentFile,ads.getName());
            FileOutputStream output = new FileOutputStream(attachedFile);
            output.write(getAttContent(pdDoc,attAppAttachments.getContentId()));
            output.close();
        }
        File xmlFile= new File(grantsGovXmlDirectoryFile,opportunityId + "." + proposalnumber + "." + exportDate+".xml");
        BufferedWriter out = new BufferedWriter(new FileWriter(xmlFile));
        out.write(formObject.xmlText());
        out.close();
        ZipOutputStream zipOutputStream = null;
        FileOutputStream fileOutputStream = new FileOutputStream(grantsGovXmlDirectoryFile+".zip");
        zipOutputStream = new ZipOutputStream(fileOutputStream);
        addFolderToZip("", grantsGovXmlDirectoryFile.getPath(), zipOutputStream);
        zipOutputStream.flush();
        zipOutputStream.close();
	}
	
    public static void addFolderToZip(String path, String sourceFolder, ZipOutputStream zipOutputStream) throws Exception {
        File proposalNumberfolder = new File(sourceFolder);
        for (String fileName : proposalNumberfolder.list()) {
            if (path.equals("")) {
                addFileToZip(proposalNumberfolder.getName(), sourceFolder + "/" + fileName, zipOutputStream);
            } else {
                addFileToZip(path + "/" + proposalNumberfolder.getName(), sourceFolder + "/" + fileName, zipOutputStream);
            }
        }
    }

    public static void addFileToZip(String path, String sourceFile, ZipOutputStream zipOutputStream) throws Exception {
        File attachmentFile = new File(sourceFile);
        if (attachmentFile.isDirectory()) {
            addFolderToZip(path, sourceFile, zipOutputStream);
        } else {
            byte[] buffer = new byte[1024];
            int length;
            FileInputStream fileInputStream = new FileInputStream(attachmentFile);
            zipOutputStream.putNextEntry(new ZipEntry(path + "/" + attachmentFile.getName()));
            while ((length = fileInputStream.read(buffer)) > 0) {
                zipOutputStream.write(buffer, 0, length);
            }
        }
    }
	protected String getFileNameForFormPrinting(ProposalDevelopmentDocument pdDoc) {
		StringBuilder fileName = new StringBuilder();
		fileName.append(pdDoc.getDocumentNumber());
		fileName.append(pdDoc.getDevelopmentProposal()
				.getProgramAnnouncementNumber());
		fileName.append(Constants.PDF_FILE_EXTENSION);
		return fileName.toString();
	}

	/**
	 * 
	 * This method is to write the submitted application data to a pdfStream
	 * 
	 * @param pdDoc
	 *            Proposal Development Document.
	 * @return ByteArrayOutputStream[] of the submitted application data.
	 * @throws S2SException
	 */
	protected PrintableResult getSubmittedPDFStream(
			ProposalDevelopmentDocument pdDoc) throws S2SException {
		GrantApplicationDocument submittedDocument;
		String frmXpath = null;        
        String frmAttXpath = null;
        grantsGovXmlDirectoryFile = null;
		try {
		    S2sAppSubmissionContract s2sAppSubmission = getLatestS2SAppSubmission(pdDoc);
		    String submittedApplicationXml = findSubmittedXml(s2sAppSubmission);
		    String submittedApplication = getS2SUtilService().removeTimezoneFactor(submittedApplicationXml);
			submittedDocument = GrantApplicationDocument.Factory.parse(submittedApplication);
		} catch (XmlException e) {
			LOG.error(e.getMessage(), e);
			throw new S2SException(e);
		}
		FormMappingInfo info = null;
		DevelopmentProposal developmentProposal = pdDoc.getDevelopmentProposal();
        List<String> sortedNameSpaces = getSortedNameSpaces(developmentProposal.getProposalNumber(),developmentProposal.getS2sOppForms());
		boolean formEntryFlag = true;
		List<Printable> formPrintables = new ArrayList<Printable>();
		for (String namespace : sortedNameSpaces) {
			XmlObject formFragment = null;
			info = new FormMappingLoader().getFormInfo(namespace);
			if(info==null) continue;
			formFragment = getFormObject(submittedDocument, info);
			frmXpath = "//*[namespace-uri(.) = '"+namespace+"']";               
            frmAttXpath = "//*[namespace-uri(.) = '"+namespace+"']//*[local-name(.) = 'FileLocation' and namespace-uri(.) = 'http://apply.grants.gov/system/Attachments-V1.0']";           

				byte[] formXmlBytes = formFragment.xmlText().getBytes();
				S2SFormPrint formPrintable = new S2SFormPrint();

				ArrayList<Source> templates = new ArrayList<Source>();
				Source xsltSource = new StreamSource(getClass()
						.getResourceAsStream("/" + info.getStyleSheet()));
				templates.add(xsltSource);
				formPrintable.setXSLT(templates);

				// Linkedhashmap is used to preserve the order of entry.
				Map<String, byte[]> formXmlDataMap = new LinkedHashMap<String, byte[]>();
				formXmlDataMap.put(info.getFormName(), formXmlBytes);
				formPrintable.setXmlDataMap(formXmlDataMap);
				S2sApplicationContract s2sApplciation = s2sApplicationService.findS2sApplicationByProposalNumber(pdDoc.getDevelopmentProposal().getProposalNumber());
				List<? extends S2sAppAttachmentsContract> attachmentList = s2sApplciation.getS2sAppAttachmentList();

				Map<String, byte[]> formAttachments = new LinkedHashMap<String, byte[]>();
				
		  try{
		      XPathExecutor executer = new XPathExecutor(formFragment.toString());
              org.w3c.dom.Node d = executer.getNode(frmXpath);                    
              org.w3c.dom.NodeList attList = XPathAPI.selectNodeList(d, frmAttXpath); 
              int attLen = attList.getLength();   
              
              for(int i=0;i<attLen;i++){
                  org.w3c.dom.Node attNode = attList.item(i);
                  String contentId = ((Element)attNode).getAttributeNS("http://apply.grants.gov/system/Attachments-V1.0","href"); 
				
                  if (attachmentList != null && !attachmentList.isEmpty()) {
					for (S2sAppAttachmentsContract attAppAttachments : attachmentList) {
					  if(attAppAttachments.getContentId().equals(contentId)){
						ByteArrayOutputStream attStream = new ByteArrayOutputStream();
						try {
							attStream.write(getAttContent(pdDoc,
									attAppAttachments.getContentId()));
						} catch (IOException e) {
							LOG.error(e.getMessage(), e);
							throw new S2SException(e);
						}
						StringBuilder attachment = new StringBuilder();
						attachment.append("   ATT : ");
						attachment.append(attAppAttachments.getContentId());
						formAttachments.put(attachment.toString(),
								getAttContent(pdDoc, attAppAttachments
										.getContentId()));
					 }
				    }
                  }
              }
		    }
		  catch (Exception e) {
            LOG.error(e.getMessage(), e);
          }		
          try {
              if(developmentProposal.getGrantsGovSelectFlag()){
              	List<AttachmentData> attachmentLists = new ArrayList<AttachmentData>();
              	saveGrantsGovXml(pdDoc,formEntryFlag,formFragment,attachmentLists,attachmentList);
              	formEntryFlag = false;
              }
          }
          catch (Exception e) {
                  LOG.error(e.getMessage(), e);
          }
				formPrintable.setAttachments(formAttachments);
				formPrintables.add(formPrintable);
		}
        PrintableResult result = new PrintableResult();
        result.printables = formPrintables;
		return result;
	}

	protected String findSubmittedXml(S2sAppSubmissionContract appSubmission) {
	    S2sApplicationContract s2sApplication = s2sApplicationService.findS2sApplicationByProposalNumber(appSubmission.getProposalNumber());
	    return s2sApplication.getApplication();
    }



    /**
	 * This method is used to generate byte stream of forms
	 * 
	 * @param pdDoc
	 *            ProposalDevelopmentDocument
	 * @return ByteArrayOutputStream[] PDF byte Array
	 * @throws S2SException
	 */
	protected PrintableResult getPDFStream(ProposalDevelopmentDocument pdDoc)
			throws S2SException {
		FormMappingInfo info = null;
		S2SBaseFormGenerator s2sFormGenerator = null;
		grantsGovXmlDirectoryFile = null;
		List<AuditError> errors = new ArrayList<AuditError>();
		DevelopmentProposal developmentProposal = pdDoc
				.getDevelopmentProposal();
        String proposalNumber = developmentProposal.getProposalNumber();
        List<String> sortedNameSpaces = getSortedNameSpaces(proposalNumber, developmentProposal.getS2sOppForms());

		List<Printable> formPrintables = new ArrayList<Printable>();
		boolean formEntryFlag = true;
	    getNarrativeService().deleteSystemGeneratedNarratives(pdDoc.getDevelopmentProposal().getNarratives());
	    Forms forms = Forms.Factory.newInstance();
		for (String namespace : sortedNameSpaces) {
			info = new FormMappingLoader().getFormInfo(proposalNumber,namespace);
			if(info==null) continue;
			s2sFormGenerator = (S2SBaseFormGenerator)s2SFormGeneratorService.getS2SGenerator(proposalNumber,info.getNameSpace());
			s2sFormGenerator.setAuditErrors(errors);
			s2sFormGenerator.setAttachments(new ArrayList<AttachmentData>());
			s2sFormGenerator.setNamespace(namespace);
			XmlObject formObject = s2sFormGenerator.getFormObject(pdDoc);
			
			if (s2SValidatorService.validate(formObject, errors) && errors.isEmpty()) {
			    String applicationXml = formObject.xmlText(s2SFormGeneratorService.getXmlOptionsPrefixes());
			    String filteredApplicationXml = getS2SUtilService().removeTimezoneFactor(applicationXml);
				byte[] formXmlBytes = filteredApplicationXml.getBytes();
				S2SFormPrint formPrintable = new S2SFormPrint();
				// Linkedhashmap is used to preserve the order of entry.
				Map<String, byte[]> formXmlDataMap = new LinkedHashMap<String, byte[]>();
				formXmlDataMap.put(info.getFormName(), formXmlBytes);
				formPrintable.setXmlDataMap(formXmlDataMap);

				ArrayList<Source> templates = new ArrayList<Source>();
				Source xsltSource = new StreamSource(getClass()
						.getResourceAsStream("/" + info.getStyleSheet()));
				templates.add(xsltSource);
				formPrintable.setXSLT(templates);

				List<AttachmentData> attachmentList = s2sFormGenerator.getAttachments();
				try {
				    if(developmentProposal.getGrantsGovSelectFlag()){
				    	List<S2sAppAttachmentsContract> attachmentLists = new ArrayList<S2sAppAttachmentsContract>();
				    	setFormObject(forms, formObject);
                    	saveGrantsGovXml(pdDoc,formEntryFlag,forms,attachmentList,attachmentLists);
                    	formEntryFlag = false;
				    }
                }
                catch (Exception e) {
                        LOG.error(e.getMessage(), e);
                }
				Map<String, byte[]> formAttachments = new LinkedHashMap<String, byte[]>();
				if (attachmentList != null && !attachmentList.isEmpty()) {
					for (AttachmentData attachmentData : attachmentList) {
						if (!isPdfType(attachmentData.getContent()))
							continue;
						StringBuilder attachment = new StringBuilder();
						attachment.append("   ATT : ");
						attachment.append(attachmentData.getContentId());
						formAttachments.put(attachment.toString(),
								attachmentData.getContent());
					}
				}
				if (formAttachments.size() > 0) {
					formPrintable.setAttachments(formAttachments);
				}
				formPrintables.add(formPrintable);
			}
		}
        final PrintableResult result = new PrintableResult();
        result.errors = errors;
        result.printables = formPrintables;
        return result;
	}

	/**
	 * 
	 * This method gets formObject from submitted Application
	 * 
	 * @param submittedXml
	 *            GrantApplicationDocument object of the submitted form.
	 * @param info
	 *            form mapping information of the form.
	 * @return XmlObject form object corresponding to the
	 *         GrantApplicationDocument and FormMappingInfo objects.
	 * @throws S2SException
	 */

	protected XmlObject getFormObject(GrantApplicationDocument submittedXml,
			FormMappingInfo info) {
		Forms forms = submittedXml.getGrantApplication().getForms();
		return forms.newCursor().getObject();
	}

	/**
	 * 
	 * This method gets attachment contents from narrative based on content ID
	 * 
	 * @param pdDoc
	 *            Proposal Development Document.
	 * @param contentId
	 *            for the particular attachment in the Narrative.
	 * @return byte[] byte array of attachments based on the contentId object.
	 */

	protected byte[] getAttContent(ProposalDevelopmentDocument pdDoc,
			String contentId) {
		String[] contentIds = contentId.split("-");
		String[] contentDesc = contentIds[1].split("_");
		if (StringUtils.equals(contentIds[0], "N")) {
    		for (NarrativeContract narrative : pdDoc.getDevelopmentProposal()
    				.getNarratives()) {
				if (narrative.getModuleNumber().equals(Integer.valueOf(contentDesc[0]))) {
				    return narrative.getNarrativeAttachment().getData();
				}
    		}
		} else if (StringUtils.equals(contentIds[0], "B")){
		    for (ProposalPersonBiography biography : pdDoc.getDevelopmentProposal().getPropPersonBios()) {
		        if (biography.getProposalPersonNumber().equals(Integer.valueOf(contentDesc[0]))
		                && biography.getBiographyNumber().equals(Integer.valueOf(contentDesc[1]))) {
		            biography.refreshReferenceObject("personnelAttachment");
		            return biography.getPersonnelAttachment().getData();
		        }
		    }
    	}
		return null;
	}

	protected KcFile getAttributeContent(ProposalDevelopmentDocument pdDoc,
            String contentId) {
        String[] contentIds = contentId.split("-");
        String[] contentDesc = contentIds[1].split("_");
        if (StringUtils.equals(contentIds[0], "N")) {
            for (NarrativeContract narrative : pdDoc.getDevelopmentProposal()
                    .getNarratives()) {
                if (narrative.getModuleNumber().equals(Integer.valueOf(contentDesc[0]))) {
                    return narrative.getNarrativeAttachment();
                }
            }
        } else if (StringUtils.equals(contentIds[0], "B")){
            for (ProposalPersonBiography biography : pdDoc.getDevelopmentProposal().getPropPersonBios()) {
                if (biography.getProposalPersonNumber().equals(Integer.valueOf(contentDesc[0]))
                        && biography.getBiographyNumber().equals(Integer.valueOf(contentDesc[1]))) {
                    biography.refreshReferenceObject("personnelAttachment");
                    return biography.getPersonnelAttachment();
                }
            }
        }
        return null;
    }
	/**
	 * 
	 * This method gets the latest S2SAppSubmission record from the list of
	 * S2SAppSubmissions. It iterates through the list and returns the record
	 * that has highest SubmissionNo
	 * 
	 * @param pdDoc
	 *            {@link ProposalDevelopmentDocument}
	 * @return {@link S2sAppSubmissionContract}
	 */
	protected S2sAppSubmissionContract getLatestS2SAppSubmission(
			ProposalDevelopmentDocument pdDoc) {
		S2sAppSubmissionContract s2sSubmission = null;
		int submissionNo = 0;
		for (S2sAppSubmissionContract s2sAppSubmission : pdDoc.getDevelopmentProposal()
				.getS2sAppSubmission()) {
			if (s2sAppSubmission.getSubmissionNumber() != null
					&& s2sAppSubmission.getSubmissionNumber().intValue() > submissionNo) {
				s2sSubmission = s2sAppSubmission;
				submissionNo = s2sAppSubmission.getSubmissionNumber().intValue();
			}
		}
		return s2sSubmission;
	}



	/**
	 * 
	 * This method sorts all the forms in order as specified in
	 * S2sFormBinding.xml and returns the list of namespaces in sorted order.
	 * 
	 * @param s2sOppForms
	 *            list of S2sOppForms.
	 * @return List<String> list of sorted name spaces.
	 */
	protected List<String> getSortedNameSpaces(String proposalNumber,List<? extends S2sOppFormsContract> s2sOppForms) {
		List<String> orderedNamespaces = new ArrayList<String>();
		List<String> namespaces;
		FormMappingLoader formMappingLoader = new FormMappingLoader();
		formMappingLoader.getBindings();
		Map<Integer, List<String>> sortedNamespaces = formMappingLoader.getSortedNameSpaces();
		List<Integer> sortedIndices = new ArrayList<Integer>(sortedNamespaces
				.keySet());
		int index = 0;
		for (Integer sortedIndex : sortedIndices) {
            for (S2sOppFormsContract oppForm : s2sOppForms) {
                namespaces = sortedNamespaces.get(sortedIndex);
                for (String namespace : namespaces) {
					if (namespace.equals(oppForm.getOppNameSpace())) {
						if (Boolean.TRUE.equals(oppForm.getSelectToPrint())) {
							orderedNamespaces.add(index++, namespace);
						}
					}
				}
			}
		}
		List<String> userAttachedFormNamespaces = findUserAttachedNamespaces(proposalNumber);
        for (S2sOppFormsContract oppForm : s2sOppForms) {
            if(userAttachedFormNamespaces.contains(oppForm.getOppNameSpace())){
                orderedNamespaces.add(oppForm.getOppNameSpace());
            }
        }
		return orderedNamespaces;
	}

    private List<String> findUserAttachedNamespaces(String proposalNumber) {
        return KcServiceLocator.getService(UserAttachedFormService.class).findFormNamespaces(proposalNumber);
    }

    /**
	 * 
	 * Setter for {@link S2SFormGeneratorService}
	 * 
	 * @param s2SFormGeneratorService
	 */
	public void setS2SFormGeneratorService(
			S2SFormGeneratorService s2SFormGeneratorService) {
		this.s2SFormGeneratorService = s2SFormGeneratorService;
	}

	/**
	 * 
	 * Setter for {@link S2SFormGeneratorService}
	 * 
	 * @param s2SValidatorService
	 */
	public void setS2SValidatorService(S2SValidatorService s2SValidatorService) {
		this.s2SValidatorService = s2SValidatorService;
	}

	protected boolean isPdfType(byte[] data) {
		final int ATTRIBUTE_CHUNK_SIZE = 1200;// increased for ppt
		final String PRE_HEXA = "0x";

		boolean retValue = false;
		String str[] = { "25", "50", "44", "46" };
		byte byteCheckArr[] = new byte[4];
		byte byteDataArr[] = new byte[4];

		for (int byteIndex = 0; byteIndex < byteCheckArr.length; byteIndex++) {
			byteCheckArr[byteIndex] = Integer.decode(PRE_HEXA + str[byteIndex])
					.byteValue();
		}

		int startPoint, endPoint;

		startPoint = 0;
		endPoint = (ATTRIBUTE_CHUNK_SIZE > (data.length / 2)) ? data.length / 2
				: ATTRIBUTE_CHUNK_SIZE;

		for (int forwardIndex = startPoint; forwardIndex < endPoint
				- str.length; forwardIndex++) {
			if (forwardIndex == 0) {
				// Fill All Data
				for (int fillIndex = 0; fillIndex < str.length; fillIndex++) {
					byteDataArr[fillIndex] = toUnsignedByte(data[fillIndex]);
				}
			} else {
				// Push Data, Fill last index
				for (int fillIndex = 0; fillIndex < str.length - 1; fillIndex++) {
					byteDataArr[fillIndex] = byteDataArr[fillIndex + 1];
				}
				byteDataArr[str.length - 1] = toUnsignedByte(data[str.length
						- 1 + forwardIndex]);
			}

			if (new String(byteCheckArr).equals(new String(byteDataArr))) {
				retValue = true;
			}
		}

		return retValue;
	}

	/**
	 * convert int to unsigned byte
	 */
	protected static byte toUnsignedByte(int intVal) {
		byte byteVal;
		if (intVal > 127) {
			int temp = intVal - 256;
			byteVal = (byte) temp;
		} else {
			byteVal = (byte) intVal;
		}
		return byteVal;
	}

	/**
	 * Gets the s2SUtilService attribute.
	 * 
	 * @return Returns the s2SUtilService.
	 */
	public S2SUtilService getS2SUtilService() {
		return s2SUtilService;
	}

	/**
	 * Sets the s2SUtilService attribute value.
	 * 
	 * @param utilService
	 *            The s2SUtilService to set.
	 */
	public void setS2SUtilService(S2SUtilService utilService) {
		s2SUtilService = utilService;
	}

    public NarrativeService getNarrativeService() {
        return narrativeService;
    }

    public void setNarrativeService(NarrativeService narrativeService) {
        this.narrativeService = narrativeService;
    }

    public PrintingService getPrintingService() {
		return printingService;
	}

	public void setPrintingService(PrintingService printingService) {
		this.printingService = printingService;
	}
	protected void setFormObject(Forms forms, XmlObject formObject) {
        // Create a cursor from the grants.gov form
        XmlCursor formCursor = formObject.newCursor();
        formCursor.toStartDoc();
        formCursor.toNextToken();

        // Create a cursor from the Forms object
        XmlCursor metaGrantCursor = forms.newCursor();
        metaGrantCursor.toNextToken();

        // Add the form to the Forms object.
        formCursor.moveXml(metaGrantCursor);
    }

    protected static class PrintableResult {
        private List<Printable> printables;
        private List<AuditError> errors;
    }

    public S2sApplicationService getS2sApplicationService() {
        return s2sApplicationService;
    }

    public void setS2sApplicationService(S2sApplicationService s2sApplicationService) {
        this.s2sApplicationService = s2sApplicationService;
    }

    public S2SFormGeneratorService getS2SFormGeneratorService() {
        return s2SFormGeneratorService;
    }

    public S2SValidatorService getS2SValidatorService() {
        return s2SValidatorService;
    }
}

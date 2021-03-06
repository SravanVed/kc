package org.kuali.coeus.propdev.api.s2s;

import org.kuali.coeus.sys.api.model.IdentifiableNumeric;

import java.util.List;

public interface S2sUserAttachedFormContract extends IdentifiableNumeric {

    String getProposalNumber();
    
    String getNamespace();
    
    String getFormName();
    
    String getFormFileName();

    byte[] getFormFile();

    String getXmlFile();
    
    String getDescription();

    List<? extends S2sUserAttachedFormAttContract> getS2sUserAttachedFormAtts();
}

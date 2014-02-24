-- View for Coeus compatibility 

CREATE OR REPLACE VIEW OSP$TRAINING_STIPEND_RATES AS SELECT 
    CAREER_LEVEL, 
    EXPERIENCE_LEVEL,
    STIPEND_RATE,
    EFFECTIVE_DATE,
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM TRAINING_STIPEND_RATES;
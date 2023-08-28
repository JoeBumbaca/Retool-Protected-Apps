SELECT account_statement.*, financial_connection.primary_use FROM account_statement
JOIN financial_identity ON financial_identity.id = account_statement.financial_identity_id
LEFT JOIN financial_connection ON financial_connection.id = account_statement.financial_connection_id
WHERE financial_identity.external_object_id = {{urlparams.property_ticker}} AND financial_identity.external_model_type = 'PROPERTY' AND account_statement.pdf_url IS NOT NULL;
SELECT financial_connection.id FROM financial_identity 
JOIN financial_connection ON financial_connection.financial_identity_id = financial_identity.id
WHERE financial_identity.external_object_id = {{urlparams.property_ticker}} AND financial_identity.external_model_type = 'PROPERTY' AND primary_use = 'CHECKING'
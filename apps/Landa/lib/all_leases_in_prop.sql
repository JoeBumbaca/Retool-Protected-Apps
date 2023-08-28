SELECT leases.date AS start_date,
leases.end_date AS end_date,
converter.unit_ticker,
leases.document_uri 
FROM {{formatDataAsArray(prop_unit_ticker_converter.data)}} converter
LEFT JOIN {{formatDataAsArray(leases_documents_kyc.data)}} leases ON leases.unit_id = converter.unit_ticker
WHERE converter.prop_ticker = {{urlparams.property_ticker}} AND leases.document_uri IS NOT NULL
ORDER BY leases.date
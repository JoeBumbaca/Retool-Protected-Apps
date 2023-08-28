SELECT * FROM property_document
WHERE property_ticker = {{urlparams.property_ticker}} AND property_document.public = TRUE AND property_document.document_label LIKE '%Lease%'
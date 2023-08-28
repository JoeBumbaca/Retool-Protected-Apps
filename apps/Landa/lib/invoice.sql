SELECT "comment", invoice_number, id_as_hash FROM properties_propertyexpense
WHERE property_id = {{urlparams.property_ticker}}; 
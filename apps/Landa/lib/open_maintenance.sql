SELECT * FROM tenants_propertymaintenance
WHERE tenants_propertymaintenance.unit_id = ANY({{all_units.data.ticker}})
AND ({{!checkbox2.value}} OR ({{checkbox2.value}} AND tenants_propertymaintenance.is_resolved=FALSE))


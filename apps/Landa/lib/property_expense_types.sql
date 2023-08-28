SELECT id_as_hash, type 
FROM properties_propertyexpense
WHERE id_as_hash = ANY({{property_expense_ids.data.property_expense_id}});
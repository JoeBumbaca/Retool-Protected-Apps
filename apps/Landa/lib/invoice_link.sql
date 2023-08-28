SELECT * FROM attachment
WHERE external_model_type = 'PROPERTY_EXPENSE'
AND external_object_id = ANY({{invoice.data.id_as_hash}})
SELECT * FROM kyc_identity
WHERE external_model_type IN ('LANDA_USER') AND external_object_id = ANY( {{distinct_users.data.map(u=>u.landa_user)}} );
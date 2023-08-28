SELECT  
users_landauser.id_as_hash AS landa_user, tenants_rentuser.id_as_hash AS rent_user_id
FROM tenants_rentlease 
JOIN legals_digitalsignature
ON legals_digitalsignature.object_id = tenants_rentlease.id_as_hash
AND legals_digitalsignature.content_type_id = 133
JOIN users_landauser
ON legals_digitalsignature.user_id = users_landauser.id
JOIN tenants_rentuser
ON tenants_rentuser.id = users_landauser.rent_user_id
WHERE unit_id = {{ select1.value }}
AND CURRENT_DATE >= tenants_rentlease.start_date::DATE
AND CURRENT_DATE <= tenants_rentlease.end_date::DATE
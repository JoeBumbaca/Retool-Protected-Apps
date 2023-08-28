SELECT * FROM {{Transaction3.data}} trans
WHERE trans.account_type = ANY({{multiselect1.value}})
ORDER BY trans.date_created
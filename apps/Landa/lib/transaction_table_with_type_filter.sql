SELECT * FROM {{ transactions_table.data }} tran
WHERE tran.transaction_type = ANY({{multiselect1.value}})
ORDER BY tran.date_created DESC;
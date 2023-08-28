SELECT DISTINCT sender_id AS landa_user FROM {{ formatDataAsArray(property_transactions.data) }} tran
WHERE sender_type = 'LANDA_USER'
UNION
SELECT DISTINCT receiver_id AS landa_user FROM {{ formatDataAsArray(property_transactions.data) }} tran
WHERE receiver_type = 'LANDA_USER'
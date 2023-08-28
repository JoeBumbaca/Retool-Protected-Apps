SELECT tf.external_object_id AS property_expense_id, *
FROM transaction t
LEFT JOIN transaction_flow tf ON tf.id = t.transaction_flow_id
LEFT JOIN financial_connection sender ON sender.id = t.sender_financial_connection_id
LEFT JOIN financial_identity fi ON fi.id = sender.financial_identity_id
WHERE fi.external_model_type = 'PROPERTY' AND tf.external_model_type = 'PROPERTY_EXPENSE' AND fi.external_object_id = ANY({{property_tickers.data.ticker}})
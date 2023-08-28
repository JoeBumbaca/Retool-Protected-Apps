SELECT tran.id, {{lease_unit.data.landa_user['0']}} AS landa_user_late_fee  FROM transaction_flow
JOIN "transaction" tran
ON tran.transaction_flow_id = transaction_flow.id
JOIN late_fee
ON late_fee.id = transaction_flow.late_fee_id
WHERE late_fee.external_object_id = {{lease_unit.data.rent_user_id['0']}} AND late_fee.external_model_type = 'RENT_USER' 
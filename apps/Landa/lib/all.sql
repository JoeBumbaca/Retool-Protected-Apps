SELECT t.id::VARCHAR, 
fi.external_object_id AS property_ticker, 
t.date_created::DATE AS date_created, 
CASE WHEN fc_sender.financial_identity_id=fi.id THEN  amount_amount::FLOAT * -1 ELSE amount_amount::FLOAT END AS amount_amount,
CASE WHEN tf.rent_payment_id IS NOT NULL THEN 'rent_payment'
WHEN tf.late_fee_id IS NOT NULL THEN 'late_fee' ELSE tf.external_model_type::VARCHAR END category, CASE WHEN tf.external_model_type = 'PROPERTY_EXPENSE' THEN tf.external_object_id ELSE '' END property_expense_id
from "transaction" t
LEFT JOIN financial_connection fc_sender ON fc_sender.id = t.sender_financial_connection_id 
LEFT JOIN financial_connection fc_receiver ON fc_receiver.id = t.receiver_financial_connection_id 
LEFT JOIN financial_identity fi ON fi.id IN (fc_sender.financial_identity_id, fc_receiver.financial_identity_id)
LEFT JOIN transaction_flow tf ON tf.id = t.transaction_flow_id
WHERE fi.external_model_type = 'PROPERTY' 
AND t.transaction_status = 'COMPLETE'
AND (t.date_created <= {{moment(dateRange1.endFormattedString || '01/01/2100').format('YYYY-MM-DD')}}::DATE) AND (t.date_created >= {{moment(dateRange1.startFormattedString || '01/01/1970').format('YYYY-MM-DD')}}::DATE)
AND (tf.rent_payment_id IS NOT NULL
     OR tf.late_fee_id IS NOT NULL
     OR tf.external_model_type IS NOT NULL
    )
AND fc_sender.financial_identity_id != fc_receiver.financial_identity_id 
AND fi.external_object_id = {{urlparams.property_ticker}}
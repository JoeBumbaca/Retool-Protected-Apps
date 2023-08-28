SELECT
CASE
WHEN transaction_flow.referral_id  IS NOT NULL THEN 'Refrral'
WHEN transaction_flow.loan_id  IS NOT NULL THEN 'Loan'
WHEN transaction_flow.landa_gift_id  IS NOT NULL THEN 'Gift'
WHEN transaction_flow.security_deposit_id  IS NOT NULL THEN 'Security Deposit'
WHEN transaction_flow.rent_payment_id  IS NOT NULL THEN 'Rent Payment'
WHEN transaction_flow.late_fee_id  IS NOT NULL THEN 'Late Fee'
WHEN transaction_flow.payable_rent_id  IS NOT NULL THEN 'Dividend'
ELSE transaction_flow.external_model_type::TEXT END transaction_type,

CASE WHEN receiver_identity.external_model_type != 'PROPERTY' AND receiver_identity.external_object_id != {{urlparams.property_ticker}}
THEN receiver_identity.external_model_type
ELSE sender_identity.external_model_type END to_from_type,

CASE WHEN receiver_identity.external_model_type != 'PROPERTY' AND receiver_identity.external_object_id != {{urlparams.property_ticker}}
THEN receiver_conn.primary_use
ELSE sender_conn.primary_use END node_description,


sender_identity.external_object_id AS sender_id,
sender_identity.external_model_type  AS sender_type,
receiver_identity.external_object_id  AS receiver_id,
receiver_identity.external_model_type  AS receiver_type,
sender_conn.primary_use AS sender_use,
receiver_conn.primary_use AS receiver_use,
tran.date_created::DATE AS date_created,
tran.transaction_status, ROUND(tran.amount_amount, 2) AS amount,
transaction_flow.external_model_type AS transaction_flow_type,
transaction_flow.external_object_id AS expense_object_id,
transaction_flow.comment, rent_user.landa_user_rent, late_fee.landa_user_late_fee


FROM "transaction" tran
LEFT JOIN transaction_flow 
ON transaction_flow.id = tran.transaction_flow_id
LEFT JOIN financial_connection sender_conn ON sender_conn.id = tran.sender_financial_connection_id
LEFT JOIN financial_identity sender_identity ON sender_identity.id = sender_conn.financial_identity_id
LEFT JOIN financial_connection receiver_conn ON receiver_conn.id = tran.receiver_financial_connection_id
LEFT JOIN financial_identity receiver_identity ON receiver_identity.id = receiver_conn.financial_identity_id
LEFT JOIN
(
  SELECT tran.id AS "id", rent_payment.external_object_id, {{lease_unit.data.landa_user['0']}} AS landa_user_rent  FROM transaction_flow
	JOIN "transaction" tran
	ON tran.transaction_flow_id = transaction_flow.id
	JOIN rent_payment
	ON rent_payment.id = transaction_flow.rent_payment_id
	WHERE rent_payment.external_object_id = {{lease_unit.data.rent_user_id['0']}} AND rent_payment.external_model_type = 'RENT_USER' 
) rent_user
ON rent_user.id = tran.id
LEFT JOIN
(
  SELECT tran.id, {{lease_unit.data.landa_user['0']}} AS landa_user_late_fee  FROM transaction_flow
  JOIN "transaction" tran
  ON tran.transaction_flow_id = transaction_flow.id
  JOIN late_fee
  ON late_fee.id = transaction_flow.late_fee_id
  WHERE late_fee.external_object_id = {{lease_unit.data.rent_user_id['0']}} AND late_fee.external_model_type = 'RENT_USER' 
) late_fee
ON late_fee.id = tran.id
WHERE ((((sender_identity.external_model_type= 'PROPERTY' AND sender_identity.external_object_id = {{urlparams.property_ticker}})
OR (receiver_identity.external_model_type= 'PROPERTY' AND receiver_identity.external_object_id = {{urlparams.property_ticker}})
OR transaction_flow.external_object_id = ANY({{invoice.data.id_as_hash}})))
AND tran.date_created::DATE >= {{num_invoice.value}} AND tran.date_created::DATE <= {{ date2.value }}  AND {{!checkbox1.value}})
OR 
(
  {{checkbox1.value}}
	AND 
  	(receiver_identity.external_object_id = ANY({{lease_unit.data.landa_user}})
   	OR
   	sender_identity.external_object_id = ANY({{lease_unit.data.landa_user}})
    OR rent_user.landa_user_rent = ANY({{lease_unit.data.landa_user}})
    OR late_fee.landa_user_late_fee = ANY({{lease_unit.data.landa_user}}))
   AND
   (tran.date_created::DATE >= {{num_invoice.value}} AND tran.date_created::DATE <= {{ date2.value }}));
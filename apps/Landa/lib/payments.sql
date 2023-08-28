SELECT * FROM
(
    SELECT * FROM
    (
      SELECT 'Late Fee' AS transaction_type, transaction.*, rent_payment.date_due FROM late_fee
      JOIN rent_payment ON late_fee.rent_payment_id = rent_payment.id
      JOIN transaction_flow ON transaction_flow.late_fee_id = late_fee.id
      JOIN transaction ON transaction.transaction_flow_id = transaction_flow.id
      WHERE rent_payment.external_model_type = 'RENT_USER' AND rent_payment.external_object_id = ANY({{rent_lease_user.data.rent_user_id}})
    ) late_fee
    UNION
    SELECT * FROM 
    (
      SELECT 'Rent Payment' AS transaction_type, transaction.*, rent_payment.date_due  FROM rent_payment
      JOIN transaction_flow ON transaction_flow.rent_payment_id = rent_payment.id
      JOIN transaction ON transaction.transaction_flow_id = transaction_flow.id
      WHERE rent_payment.external_model_type = 'RENT_USER' 
      AND rent_payment.external_object_id = ANY({{rent_lease_user.data.rent_user_id}})
    ) rent_payment
) all_payments
WHERE date_due::DATE >= {{ dates_trasformer.value.start }} AND date_due::DATE <= {{ dates_trasformer.value.end }}
ORDER BY date_due DESC;
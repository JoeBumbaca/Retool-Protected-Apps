SELECT *, date::DATE AS date FROM
(
  SELECT (payable_rent.date_created - INTERVAL '1 month')::DATE AS date, SUM(tran.amount_amount)::FLOAT AS dividends FROM transaction_flow 
  JOIN "transaction" tran ON tran.transaction_flow_id = transaction_flow.id
  JOIN financial_connection ON tran.sender_financial_connection_id = financial_connection.id
  JOIN financial_identity ON financial_connection.financial_identity_id = financial_identity.id
  JOIN payable_rent ON payable_rent.id = transaction_flow.payable_rent_id
  WHERE financial_identity.external_object_id = {{urlparams.property_ticker}} AND transaction_flow.payable_rent_id IS NOT NULL
  AND transaction_status IN ('COMPLETE', 'PENDING', 'CREATED', 'WAIT')
  GROUP BY (payable_rent.date_created - INTERVAL '1 month')::DATE
) dividends
ORDER BY date DESC;

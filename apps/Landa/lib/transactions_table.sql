SELECT tran.date_created, tran.to_from, transaction_status,
  CASE WHEN sender_id = {{urlparams.property_ticker}} THEN amount * -1 ELSE amount END amount, tran.comment,
  CASE WHEN tran.node_description IS NOT NULL THEN tran.node_description ELSE tran.transaction_type END transaction_type,
  tran.receiver_type, tran.sender_type, sender_id, receiver_id, to_from_type,
  CASE
  WHEN tran.receiver_type = 'PROPERTY' AND tran.sender_type = 'PROPERTY' 
  THEN (
    CASE WHEN tran.receiver_id != {{urlparams.property_ticker}} THEN tran.receiver_id ELSE sender_id END
  )
  WHEN vendors.vendor_description IS NULL THEN 
  CONCAT(kyc.first_name, ' ', kyc.last_name + ' - ', to_from_type)  ELSE CONCAT(vendors.vendor_description, ' - ', to_from_type) END to_from, invoice.comment AS invoice_comment, invoice.invoice_number
  FROM {{ formatDataAsArray(property_transactions.data) }} tran
  LEFT JOIN {{ formatDataAsArray(invoice.data) }} invoice ON invoice.id_as_hash = tran.expense_object_id 
  LEFT JOIN {{ formatDataAsArray(all_kyc.data) }} kyc 
  ON  kyc.external_object_id = tran.to_from_id AND tran.to_from_type='LANDA_USER'
  LEFT JOIN {{ formatDataAsArray(vendors.data) }} vendors
  ON vendors.vendor_id = tran.to_from_id AND tran.to_from_type = 'VENDOR'
  WHERE ({{!checkbox1.value}}) OR ({{checkbox1.value}})



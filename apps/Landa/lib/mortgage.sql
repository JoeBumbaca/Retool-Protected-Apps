SELECT *, debt_amount::INT AS debt_amount FROM loan
WHERE (external_object_id, date_created::DATE) IN
(
  SELECT external_object_id, MAX(date_created::DATE) FROM loan
  WHERE is_mortgage = TRUE AND external_object_id = {{urlparams.property_ticker}} AND external_model_type = 'PROPERTY'
  GROUP BY external_object_id
)
SELECT CASE WHEN t1.account_type IS NULL THEN 'property_expense' ELSE t1.account_type END account_type, t1.total_amount
FROM {{concat_df.data}} t1
SELECT CASE WHEN t1.amount>0 AND t1.account_type IS NULL THEN 'Credit Expense' ELSE t1.account_type END account_type,
t1.amount,
t1.address,
t1.date_created,
t1.property_expense_id,
t1.comment
FROM {{Transaction2.data}} t1
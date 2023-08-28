SELECT CASE WHEN t1.amount<0 AND t1.type IS NULL THEN 'Debit Expense' ELSE t1.type END account_type,
t1.amount,
t1.address,
t1.date_created,
t1.property_expense_id,
t1.comment
FROM {{Transaction.data}} t1
SELECT account_type, total_amount FROM {{Trial_balance1.data}}
UNION ALL 
SELECT account_type, total_amount FROM {{cash_bank_transactions.value}}
SELECT transactions.type AS account_type ,ROUND(ABS(SUM(transactions.amount)),2) AS total_amount
FROM {{Transaction.data}} transactions
GROUP BY transactions.type
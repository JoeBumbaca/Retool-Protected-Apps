SELECT ROUND(SUM(ta.amount),3) AS total_amount
FROM {{Transaction.data}} ta
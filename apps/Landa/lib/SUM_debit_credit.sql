SELECT ROUND(SUM(COALESCE(t1.Debit::FLOAT,0)),1) AS sum_debit,
ROUND(SUM(COALESCE(t1.Credit::FLOAT,0)),1) AS sum_credit
FROM {{classifier.data}} t1
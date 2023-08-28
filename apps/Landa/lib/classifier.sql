SELECT t1.account_type AS Account_type,
(CASE WHEN t1.account_type IN ('insurance','management_fee','property_tax',
                               'plumbing','other','loan_payment',
                               'roof','monthly_hoa','marketing','PROPERTY_EXPENSE','floor','electricity','legal','utilities') THEN t1.total_amount::FLOAT ELSE NULL END) 
OR (CASE WHEN t1.account_type IN ('CASH-BANK') AND t1.total_amount>0 THEN t1.total_amount::FLOAT ELSE NULL END) AS Debit,
(CASE WHEN t1.account_type IN ('LOAN','rent_payment','late_fee') THEN t1.total_amount::FLOAT ELSE NULL END) OR (CASE WHEN t1.account_type IN ('CASH-BANK') AND
                                                                                                                   t1.total_amount<0 THEN t1.total_amount::FLOAT*(-1) ELSE NULL
                                                                                                                   END) AS Credit
FROM {{ concat_full.data }} t1
WHERE {{select2.value}} = 'Trial Balance'
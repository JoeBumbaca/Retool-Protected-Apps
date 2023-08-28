SELECT ROUND(payout_distribution_record_history.amount_amount,2) AS last_dividend FROM payout_distribution_record_history
WHERE property_ticker = 'US@1701SW-GFN'
ORDER BY payout_distribution_record_history.date_created DESC LIMIT 1
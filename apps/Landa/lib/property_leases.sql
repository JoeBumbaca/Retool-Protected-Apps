SELECT  
*, monthly_rent_amount::FLOAT AS monthly_rent
FROM rent_lease 
JOIN signature
ON signature.rent_lease_id = rent_lease.id

WHERE unit_ticker = ANY({{all_units.data.ticker}})
AND CURRENT_DATE >= rent_lease.start_date::DATE
AND  CURRENT_DATE <= rent_lease.end_date::DATE
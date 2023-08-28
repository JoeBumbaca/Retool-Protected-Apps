SELECT rent_lease.start_date::DATE AS date,
rent_lease.unit_ticker as unit_id,
rent_lease.document_uri ,
rent_lease.end_date::DATE AS end_date
FROM rent_lease
WHERE rent_lease.unit_ticker = ANY({{all_units.data.ticker}})
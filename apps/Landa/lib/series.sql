SELECT date_filed::DATE AS date_filed, filing.number, vehicle.name, series.name AS series_name FROM series
LEFT JOIN filing ON filing.id = series.filing_id
LEFT JOIN vehicle ON vehicle.id = filing.vehicle_id 
WHERE series.property_ticker = {{urlparams.property_ticker}}
ORDER BY filing.date_created DESC LIMIT 1;

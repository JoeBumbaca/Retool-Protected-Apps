SELECT MAX(filing.number) AS next_filing FROM filing 
WHERE vehicle_id IN
(
  SELECT vehicle.id FROM series
  LEFT JOIN filing ON filing.id = series.filing_id
  LEFT JOIN vehicle ON vehicle.id = filing.vehicle_id 
  WHERE series.property_ticker = {{urlparams.property_ticker}}
);

SELECT * FROM offering
WHERE offering.property_ticker = {{urlparams.property_ticker}}
LIMIT 1
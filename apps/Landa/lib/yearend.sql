SELECT * 
FROM {{depriciation_schedule.data}} dep
WHERE dep.ticker = {{urlparams.property_ticker}}
SELECT app.appraisal_value AS appraisal FROM {{appraisal_values.data}} app
WHERE app.ticker = {{urlparams.property_ticker}}
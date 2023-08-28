SELECT descriptions.description AS description FROM {{description_values.data}} descriptions
WHERE descriptions.ticker = {{urlparams.property_ticker}}
SELECT ROUND(prop_balance.balance,2) AS balance FROM {{formatDataAsArray(property_balance.data)}} prop_balance
WHERE prop_balance.ticker = {{urlparams.property_ticker}}
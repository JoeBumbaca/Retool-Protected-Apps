SELECT nyc.ticker,nyc.date,nyc.contract_price,nyc.building_value,nyc.monthly_depriciation,nyc.yearend FROM {{nyc.data}} nyc
UNION ALL 
SELECT out_nyc.ticker,out_nyc.date,out_nyc.contract_price,out_nyc.building_value,out_nyc.monthly_depriciation,out_nyc.yearend FROM {{out_of_nyc.data}} out_nyc
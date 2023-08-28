SELECT ny_df.ticker,
ny_df.date,ROUND(ny_df.contract_price,2) AS contract_price,
ROUND(ny_df.contract_price*0.8,2) AS building_value ,
ROUND(ny_df.contract_price*0.8/330,2) AS monthly_depriciation,
ROUND(ny_df.contract_price*0.8/330*12,2) AS yearend FROM
(
  SELECT property.ticker,property.closing_date AS date,property.contract_price::FLOAT AS contract_price
  FROM {{prop_cost.data}} property
  WHERE property.state = 'NY'
) ny_df
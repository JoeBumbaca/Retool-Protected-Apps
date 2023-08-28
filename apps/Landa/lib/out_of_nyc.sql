SELECT out_nye.ticker, out_nye.date, ROUND(out_nye.contract_price,2) AS contract_price,ROUND(out_nye.contract_price*0.9,2) AS building_value ,ROUND(out_nye.contract_price*0.9/330,2) AS monthly_depriciation,ROUND(out_nye.contract_price*0.9/330*12,2) AS yearend FROM
(
  SELECT property.ticker,property.closing_date AS date ,property.contract_price::FLOAT AS contract_price
  FROM {{prop_cost.data}} property
  WHERE property.state != 'NY'
) out_nye
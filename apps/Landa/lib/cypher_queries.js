property_details = 
`MATCH (property:RealEstateProperty)
WHERE property.ticker = ${JSON.stringify({{urlparams.property_ticker}})}
OPTIONAL MATCH (property)-[:HAS_HUD]->(hud:HUDDetails)
OPTIONAL MATCH (property)-[:HAS_APPRAISALS]->(appraisals:AppraisalDetails)
OPTIONAL MATCH (property)-[:DETAILS]->(details:PropertyDetails)
OPTIONAL MATCH (property)-[:BASED_ON]->(under:UnderwritingDetails)
OPTIONAL MATCH (property)<-[hoa:COLLECTOR_OF]-(hoa_node:DuesCollector)
WHERE hoa_node.type = 'hoa'
OPTIONAL MATCH (property)<-[tax:COLLECTOR_OF]-(tax_node:DuesCollector)
WHERE tax_node.type = 'taxes'
OPTIONAL MATCH (property)<-[insurance:COLLECTOR_OF]-(insurance_node:DuesCollector)
WHERE insurance_node.type = 'insurance'
OPTIONAL MATCH (property)-[:IN]->(street:Street)-[:IN]->(city:City)
MATCH (property)-[:HAS_MANAGEMENT]->(monthly_reserve_percent:ManagementDetails)
RETURN
DISTINCT
property.ticker AS ticker,
ROUND(details.year_built, 0) AS year_built,
details.property_sqf,
property.ownership_status AS status,
ROUND(hud.contract_price, 1) AS contract_price,
property.categories AS categories,
under.psa_sign_date AS psa_sign_date,
hud.closing_date AS closing_date,
ROUND(appraisals.amount, 1) AS appraisal,
ROUND(hud.inspection_cost, 1) AS inspector_cost,
ROUND(hud.post_closing_additional_costs_and_renovations + under.initial_renovation, 1) AS improvement_costs,
under.offering_cash_reserves_percent AS offering_cash_reserves_percent,
ROUND(hoa.monthly_cost, 1) AS monthly_hoa,
ROUND(insurance.monthly_cost, 1) AS monthly_insurance,
ROUND(monthly_reserve_percent.monthly_reserve_percent * 100, 1) AS monthly_cash_reserves,
ROUND(tax.monthly_cost, 2) AS monthly_property_tax, city.name AS city`


all_units =
`MATCH (property:RealEstateProperty)-[:REAL_ESTATE_PROPERTY_OF]->(unit:PropertyUnit)
 WHERE property.ticker = ${JSON.stringify({{urlparams.property_ticker}})} RETURN DISTINCT unit.ticker AS ticker`

units_details =
`MATCH (property:RealEstateProperty)-[:REAL_ESTATE_PROPERTY_OF]->(unit:PropertyUnit)-[:DETAILS]->(details:UnitDetails)
 WHERE property.ticker = ${JSON.stringify({{urlparams.property_ticker}})} RETURN DISTINCT property.ticker AS ticker, SUM(details.baths) AS baths, SUM(details.beds) AS beds`

property_data =
`MATCH (property:RealEstateProperty)-[:IN]->(street:Street)-[:IN]->(city:City)-[:IN]->(state:State)
WHERE property.ticker = ${JSON.stringify({{urlparams.property_ticker}})}
RETURN DISTINCT property.ticker AS ticker, property.type AS property_type,
property.house_number + " " + street.name + ", " + city.name + ", " + state.name AS address`

properties =
`MATCH (property:RealEstateProperty)
WHERE property.ticker = ${JSON.stringify({{urlparams.property_ticker}})}
AND property.ownership_status IN ['secondary','primary','frozen','filed','pre-secondary','pre-ipo','inventory']
OPTIONAL MATCH (property)-[:HAS_HUD]->(hud:HUDDetails)
OPTIONAL MATCH (property)-[:IN]->(street:Street)-[:IN]->(city:City)-[:IN]->(state:State)
RETURN DISTINCT property.ticker AS ticker, hud.closing_date AS closing_date, hud.contract_price AS contract_price, state.name AS state`

return {'property_details': property_details,
       'all_units': all_units,
       'property_data': property_data,
       'properties': properties, 'units_details': units_details}
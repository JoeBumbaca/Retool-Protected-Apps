SELECT addresses.street + ' ' + addresses.house_num AS address,
dt.date_created, 
dt.amount,
dt.type,
dt.property_expense_id,
dt.comment
FROM {{formatDataAsArray(all_digested.value)}} dt 
JOIN {{Address_data.data}} addresses ON addresses.ticker = dt.property_ticker
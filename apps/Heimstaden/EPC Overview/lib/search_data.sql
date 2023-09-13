select * from {{ EPCdatabaseConnect.data }}
where ({{CitySelect.value}} = 'All' OR City = {{CitySelect.value}})
and (EPC_adress ilike {{ "%" + search_address.value + "%"}} or {{ search_address.value == "" }})



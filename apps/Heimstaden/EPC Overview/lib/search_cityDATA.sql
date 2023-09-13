select * from {{ EPCdatabaseConnect.data }} where ({{CitySelect.value}} = 'All' OR City = {{CitySelect.value}}) 

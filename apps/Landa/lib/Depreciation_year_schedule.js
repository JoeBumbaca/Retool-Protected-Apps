year_end_value = {{yearend.data['0'].yearend}}
first_year_depreciation_expense = {{first_year_depreciation.value}}
second_year_depreciation_expense = year_end_value + first_year_depreciation_expense
num_years = 29
new_data = [first_year_depreciation_expense,second_year_depreciation_expense]
for (let i = 2; i < 29; i++) {
  new_data.push({})
}

for (let i = 2; i < 29; i++) {
  new_data[i] = Math.round(first_year_depreciation_expense + year_end_value*(parseFloat(i)),2)
}

return new_data
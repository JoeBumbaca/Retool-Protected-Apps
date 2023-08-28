num_years = 29
date = {{yearend.data['0'].date }}
date_new = new Date(date)
current_year = date_new.getFullYear()
new_data = []
for (let i = 0; i < 29; i++) {
  let year = current_year+i;
  const date = new Date(year,11,31);
  new_data.push({date})
}

return new_data
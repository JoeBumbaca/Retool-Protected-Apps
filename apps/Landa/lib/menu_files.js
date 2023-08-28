let all_units_photos = [];
let all_leases_dates = {{all_leases_in_prop.data.map((item)=>item.start_date)}}
let all_units = {{all_units.data.ticker}}
let how_many_units = all_units.length
for (let i = 0; i < how_many_units; i++) {
   all_units_photos.push(['Photos', "Units", all_units[i]])
}

let all_leases = []
for (let i = 0; i < all_leases_dates.length; i++) {
   all_leases.push(['Leases'])
}

let all_values = []
let all_values_full = all_values.concat(all_units_photos)
for (let i = 0; i < all_leases.length; i++) {
   all_values_full.push(all_leases[i])
}
return all_values_full
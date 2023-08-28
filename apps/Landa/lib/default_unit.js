if ({{urlparams.unit_id}} == null || {{urlparams.unit_id}} == "") {
  unit = {{all_units.data.ticker['0']}}
}
else {
   unit = {{urlparams.unit_id}}
}
return unit
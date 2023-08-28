const local = moment.tz("2022-12-10 12:00", "America/Los_Angeles");

const ny = local.clone().tz("America/New_York")

return {
  "New York": ny.format(), 
  "San Francisco": local.format()
}
<GlobalFunctions>
  <RESTQuery
    id="query1"
    queryTimeout="10001"
    resourceDisplayName="Jiva Test"
    resourceName="b27f31bc-14c5-47c1-949b-0b6efa8714d4"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="vehicleTypes"
    query={include("./lib/vehicleTypes.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>

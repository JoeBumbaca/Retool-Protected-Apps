<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    query={include("./lib/query1.sql", "string")}
    queryTimeout="120000"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query2"
    query={include("./lib/query2.sql", "string")}
    queryTimeout="120000"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>

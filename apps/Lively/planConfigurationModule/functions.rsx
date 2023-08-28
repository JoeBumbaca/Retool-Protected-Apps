<GlobalFunctions>
  <Function
    id="disableOptions"
    funcBody={include("./lib/disableOptions.js", "string")}
  />
  <SqlQueryUnified
    id="xRaPlanNames"
    query={include("./lib/xRaPlanNames.sql", "string")}
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>

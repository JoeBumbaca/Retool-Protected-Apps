<GlobalFunctions>
  <SqlQueryUnified
    id="form1SubmitToUsers"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ form1.data }}"
    editorMode="gui"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    runWhenModelUpdates={false}
    tableName="users"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="query2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="query1"
    queryTimeout="10001"
    resourceDisplayName="basic2.1"
    resourceName="7082dcc0-c4ff-4c33-bdcb-a89b6633a397"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={null}
  />
  <JavascriptQuery
    id="query2"
    query={include("./lib/query2.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>

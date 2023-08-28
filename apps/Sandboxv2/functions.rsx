<GlobalFunctions>
  <SqlQueryUnified
    id="nameChange"
    query={include("./lib/nameChange.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="run"
      params={{ ordered: [{ src: "console.log('from success')" }] }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="query10"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="query10"
    body="{'test': 123, 'test2': 'string'}"
    bodyType="raw"
    query="https://eolnv25g7sk9zkp.m.pipedream.net"
    queryTimeout="10"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query11"
    query={include("./lib/query11.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="query12"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="query13"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query14"
    query={include("./lib/query14.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query15"
    query={include("./lib/query15.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query16"
    query={include("./lib/query16.js", "string")}
    resourceName="JavascriptQuery"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query17"
    headers="[]"
    query="%RETOOL_EXPOSED_BASE_URL%?testing={{ %RETOOL_EXPOSED_OAUTH_TEST% }}"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="query18"
    actionType="INSERT"
    changeset={'[{"key":"homePageId","value":"{{uuid.v4()}}"}]'}
    editorMode="gui"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    runWhenModelUpdates={false}
    tableName="workspaces"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="query19"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query2"
    query={include("./lib/query2.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query20"
    query="https://postman-echo.com/get?testVar1=%RETOOL_EXPOSED_OAUTH_TEST%&testVar2=%RETOOL_EXPOSED_BASE_URL%"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query21"
    resourceDisplayName="TestConfigVars"
    resourceName="899b6354-6e38-4839-93fa-973c557da989"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query22"
    headers={'[{"key":"Authorization","value":"Bearer BANANA_SANDWICHES"}]'}
    query="https://retool.joebumbaca.xyz/api/scim/v2/Users"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query23"
    query={include("./lib/query23.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="failure"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <GraphQLQuery
    id="query24"
    body={include("./lib/query24.gql", "string")}
    resourceDisplayName="Test GraphQL"
    resourceName="617fe183-2369-4b04-8ede-89cae6133438"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <GraphQLQuery
    id="query25"
    body={include("./lib/query25.gql", "string")}
    resourceDisplayName="Test GraphQL"
    resourceName="617fe183-2369-4b04-8ede-89cae6133438"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="query26"
    query={include("./lib/query26.sql", "string")}
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="nameChange"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="query27"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query28"
    bodyType="json"
    resourceDisplayName="Test Custom JS"
    resourceName="58d64686-4a77-4d38-973b-1eea380c6a00"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <JavascriptQuery
    id="query29"
    query={include("./lib/query29.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query3"
    query={include("./lib/query3.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="query30"
    query={include("./lib/query30.sql", "string")}
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query4"
    enableTransformer={true}
    query={include("./lib/query4.sql", "string")}
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="return Object.keys(data)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query5"
    query={include("./lib/query5.sql", "string")}
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="query6"
    body="{'test': 123, 'test2': 'string'}"
    bodyType="raw"
    query="https://eolnv25g7sk9zkp.m.pipedream.net"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <SqlQueryUnified
    id="query7"
    query={include("./lib/query7.sql", "string")}
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query8"
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query9"
    query={include("./lib/query9.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    updateSetValueDynamically={true}
  />
  <State id="state1" />
  <Function
    id="transformer1"
    funcBody={include("./lib/transformer1.js", "string")}
  />
</GlobalFunctions>

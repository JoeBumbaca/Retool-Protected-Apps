<GlobalFunctions>
  <JavascriptQuery
    id="query1"
    query={include("./lib/query1.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query2"
    query={include("./lib/query2.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query3"
    query="https://www.google.com?test= {{ test() }}"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <JavascriptQuery
    id="query4"
    query={include("./lib/query4.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query5"
    query="https://eopi3na5a70qufn.m.pipedream.net"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="failure"
      method="run"
      params={{
        ordered: [
          {
            src: "utils.openUrl('https://retool.joebumbaca.xyz/editor/Blank%20App', {newTab: false})",
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <Function
    id="transformer1"
    funcBody={include("./lib/transformer1.js", "string")}
  />
</GlobalFunctions>

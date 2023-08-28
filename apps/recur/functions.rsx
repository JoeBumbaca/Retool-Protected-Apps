<GlobalFunctions>
  <RESTQuery
    id="query1"
    query="https://eo2wzb4rjkr5xtl.m.pipedream.net"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
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
  </RESTQuery>
</GlobalFunctions>

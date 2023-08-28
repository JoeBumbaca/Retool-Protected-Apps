<GlobalFunctions>
  <RESTQuery
    id="query_count_purchases"
    query="admin/v1/products/{{urlparams.sku}}/statistics"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query_get_content_sportradar"
    query="content/{{query_get_product.data.content_id}}?r={{Math.random()}}"
    resourceName="ec384233-0b20-47ff-bc51-f55baaa245c9"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query_get_health_checks"
    query="admin/v1/products/{{urlparams.sku}}/health"
    queryRefreshTime="10000"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query_get_match"
    query="matches/{{urlparams.sku.substring(10, 17)}}"
    queryRefreshTime="10000"
    resourceName="fc15e08c-116c-4d03-8365-5b7e8d33471d"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query_get_ppv_match"
    headers="[]"
    query="admin/v1/products/{{ urlparams.sku }}/stream"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query_get_product"
    enableTransformer={true}
    query="admin/v1/products/{{urlparams.sku}}"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    transformer="const est = new Date(Date.parse(data.match.kickoff));
const mbk = new Date(Date.parse(data.match.kickoff));

let diff = est.getMinutes() - data.encoding_build_up_minutes;
est.setMinutes(diff).toLocaleString()

diff = mbk.getMinutes() - data.live_build_up_minutes
mbk.setMinutes(diff).toLocaleString()

data.encoding_start_time = est
data.minutes_before_kickoff_time = mbk

return data"
  />
  <SqlQueryUnified
    id="query_get_retool_logs"
    importedQueryInputs={{
      ordered: [
        { pageName: "OTT - Match - Edit" },
        { queryName: "updateProduct" },
        {
          url: "https://watch.onefootball.com/admin/v1/products/{{urlparams.sku}}",
        },
      ],
    }}
    isImported={true}
    playgroundQueryId={50}
    playgroundQueryName="Retool - Get Audit Logs"
    playgroundQueryUuid="12ee8f2d-2872-4443-8e2d-8cbc66d3ee15"
    query={include("./lib/query_get_retool_logs.sql", "string")}
    resourceName="848e06e1-a8ba-40dc-a365-85589f7db961"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="query_get_rights"
    query="admin/v1/rights/130"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>

<GlobalFunctions>
  <GraphQLQuery
    id="query1"
    body={include("./lib/query1.gql", "string")}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    playgroundQueryId={18}
    playgroundQueryName="GetLanguages"
    playgroundQueryUuid="1af1ace4-9299-4818-b72c-d3a0d26fd4a9"
    queryTimeout="10001"
    resourceDisplayName="GraphQL AuthO"
    resourceName="9366fa8f-630f-44be-b5e9-7e3cbcdd548d"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>

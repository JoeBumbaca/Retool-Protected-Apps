<GlobalFunctions>
  <SqlQueryUnified
    id="get_dsp_movie_library_reference"
    query={include("./lib/get_dsp_movie_library_reference.sql", "string")}
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="get_dsp_movie_library_reference_staging"
    query={include(
      "./lib/get_dsp_movie_library_reference_staging.sql",
      "string"
    )}
    resourceDisplayName="Internal DB"
    resourceName="9702cb48-7019-4413-a3b8-6c1a5751cea0"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="query1"
    query={include("./lib/query1.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query4"
    query={include("./lib/query4.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>

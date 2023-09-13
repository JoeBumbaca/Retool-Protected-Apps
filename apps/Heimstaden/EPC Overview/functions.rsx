<GlobalFunctions>
  <Folder id="Functions">
    <Function
      id="EndEnergyICONrating"
      funcBody={include("./lib/EndEnergyICONrating.js", "string")}
    />
    <State id="state1" value="{{ChangeLog.data}}" />
    <Function
      id="EditTimeline"
      funcBody={include("./lib/EditTimeline.js", "string")}
    />
    <Function
      id="PRIMenergyICONrating"
      funcBody={include("./lib/PRIMenergyICONrating.js", "string")}
    />
  </Folder>
  <Folder id="DBconnections">
    <RESTQuery
      id="ChangeLogConnect"
      headers={
        '[{"key":"Authorization","value":"Bearer {{localStorage.values.auth.authToken}}"},{"key":"Content-Type","value":"\\"application/json\\""}]'
      }
      query="https://api.mie.heimstaden.com/api:ZnLyig79/epc_changelog"
      resourceName="REST-WithoutResource"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <RESTQuery
      id="CountAvailability"
      headers={
        '[{"key":"Authorization","value":"Bearer {{localStorage.values.auth.authToken}}"},{"key":"Content-Type","value":"\\"application/json\\""}]'
      }
      query="https://api.mie.heimstaden.com/api:ZnLyig79/CountEPCavailability"
      resourceName="REST-WithoutResource"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <RESTQuery
      id="EPCsettings"
      headers={
        '[{"key":"Authorization","value":"Bearer {{localStorage.values.auth.authToken}}"},{"key":"Content-Type","value":"\\"application/json\\""}]'
      }
      query="https://api.mie.heimstaden.com/api:ZnLyig79/EPCsettings"
      resourceName="REST-WithoutResource"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <RESTQuery
      id="EPCdatabaseConnect"
      enableTransformer={true}
      headers={
        '[{"key":"Authorization","value":"Bearer {{localStorage.values.auth.authToken}}"},{"key":"Content-Type","value":"\\"application/json\\""}]'
      }
      query="https://api.mie.heimstaden.com/api:ZnLyig79/epc_germany_db"
      resourceName="REST-WithoutResource"
      resourceTypeOverride=""
      transformer={
        'function assignColor(label) {\n  switch (label) {\n    case "A+":\n      return "#459982";\n    case "A":\n      return "#479983";\n    case "B":\n      return "#5BA448";\n    case "C":\n      return "#BCD871";\n    case "D":\n      return "#FBE24A";\n    case "E":\n      return "#FAC26D";\n    case "F":\n      return "#F7B44C";\n    case "G":\n      return "#ED6E67";\n    case "H":\n      return "#EB5149";\n    default:\n      return "Unknown";\n  }\n}\n\n\nconst updatedData = data.map(item => ({\n  ...item,\n  colorCode: assignColor(item.End_Energy_EPC_rating)\n}));\n\nreturn updatedData'
      }
    />
    <RESTQuery
      id="EPCstats"
      headers={
        '[{"key":"Authorization","value":"Bearer {{localStorage.values.auth.authToken}}"},{"key":"Content-Type","value":"\\"application/json\\""}]'
      }
      query="https://api.mie.heimstaden.com/api:ZnLyig79/epc_germany_stats_GET"
      resourceName="REST-WithoutResource"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <RESTQuery
      id="building_objectDB"
      headers={
        '[{"key":"Authorization","value":"Bearer {{localStorage.values.auth.authToken}}"},{"key":"Content-Type","value":"\\"application/json\\""}]'
      }
      query="https://api.mie.heimstaden.com/api:ZnLyig79/building_object_data"
      resourceName="REST-WithoutResource"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <RESTQuery
      id="EPCquarterSTATS"
      headers={
        '[{"key":"Authorization","value":"Bearer {{localStorage.values.auth.authToken}}"},{"key":"Content-Type","value":"\\"application/json\\""}]'
      }
      query="https://api.mie.heimstaden.com/api:ZnLyig79/epc_germany_quarter_stats_GET"
      resourceName="REST-WithoutResource"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
  </Folder>
  <Folder id="SQLstatements">
    <SqlTransformQuery
      id="AVGPRIMenergyIntens"
      query={include("./lib/AVGPRIMenergyIntens.sql", "string")}
      queryFailureConditions="[]"
      resourceName="SQL Transforms"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlTransformQuery
      id="AVGenergyIntens"
      query={include("./lib/AVGenergyIntens.sql", "string")}
      queryFailureConditions="[]"
      resourceName="SQL Transforms"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlTransformQuery
      id="EPCchangeLogSelect"
      query={include("./lib/EPCchangeLogSelect.sql", "string")}
      resourceName="SQL Transforms"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlTransformQuery
      id="EPCsetCO2icon"
      query={include("./lib/EPCsetCO2icon.sql", "string")}
      resourceName="SQL Transforms"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlTransformQuery
      id="EPClabelRatingIcon"
      query={include("./lib/EPClabelRatingIcon.sql", "string")}
      resourceName="SQL Transforms"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlTransformQuery
      id="ExpirTableDisplay"
      query={include("./lib/ExpirTableDisplay.sql", "string")}
      resourceName="SQL Transforms"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlTransformQuery
      id="ExpirationFilerRate"
      query={include("./lib/ExpirationFilerRate.sql", "string")}
      resourceName="SQL Transforms"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <Function
      id="ExpirationRateD"
      funcBody={include("./lib/ExpirationRateD.js", "string")}
    />
    <SqlTransformQuery
      id="EnergyType"
      query={include("./lib/EnergyType.sql", "string")}
      queryFailureConditions="[]"
      resourceName="SQL Transforms"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlTransformQuery
      id="FindEndEnergyValueUnder"
      query={include("./lib/FindEndEnergyValueUnder.sql", "string")}
      resourceName="SQL Transforms"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlTransformQuery
      id="EnergyTypeGraphic"
      query={include("./lib/EnergyTypeGraphic.sql", "string")}
      queryFailureConditions="[]"
      resourceName="SQL Transforms"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlTransformQuery
      id="OptiTypeGraphic"
      query={include("./lib/OptiTypeGraphic.sql", "string")}
      queryFailureConditions="[]"
      resourceName="SQL Transforms"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
  </Folder>
  <Function
    id="AvgEndEnergyRATING"
    funcBody={include("./lib/AvgEndEnergyRATING.js", "string")}
  />
  <SqlTransformQuery
    id="query3"
    query={include("./lib/query3.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="search_data"
    query={include("./lib/search_data.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="EPCavailabilityFALSE"
    query={include("./lib/EPCavailabilityFALSE.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="EPCavailabilityTRUE"
    query={include("./lib/EPCavailabilityTRUE.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="SettingsEnergyRatings"
    query={include("./lib/SettingsEnergyRatings.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <Function
    id="AvgPRIMEnergyRATING"
    funcBody={include("./lib/AvgPRIMEnergyRATING.js", "string")}
  />
  <SqlTransformQuery
    id="EPCtype"
    query={include("./lib/EPCtype.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="EPCsettinngsRATEpic"
    query={include("./lib/EPCsettinngsRATEpic.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="Co2emissionsTotal"
    query={include("./lib/Co2emissionsTotal.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="EPCarea"
    query={include("./lib/EPCarea.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="Lettable_area_object"
    query={include("./lib/Lettable_area_object.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="EPCavailable"
    query={include("./lib/EPCavailable.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="TESTcolumnSum"
    query={include("./lib/TESTcolumnSum.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="search_cityDATA"
    query={include("./lib/search_cityDATA.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="ChangeLog"
    bodyType="json"
    headers={
      '[{"key":"Authorization   ","value":"Bearer {{localStorage.values.auth.authToken}}"},{"key":"Content-Type","value":"\\"application/json\\""}]'
    }
    query="https://api.mie.heimstaden.com/api:ZnLyig79/epc_changelog"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <SqlTransformQuery
    id="EPCdocumentStatus"
    query={include("./lib/EPCdocumentStatus.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="EPCchangeLog"
    headers={
      '[{"key":"Authorization","value":"Bearer {{localStorage.values.auth.authToken}}"},{"key":"Content-Type","value":"\\"application/json\\""}]'
    }
    query="https://api.mie.heimstaden.com/api:ZnLyig79/epc_changelog"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="EPCavailableOPT"
    query={include("./lib/EPCavailableOPT.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="EPCquarterDataSORT"
    query={include("./lib/EPCquarterDataSORT.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlTransformQuery
    id="SettingsEnergyType"
    query={include("./lib/SettingsEnergyType.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>

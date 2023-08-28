// Tip: assign your external references to variables instead of chaining off the curly brackets.

let isProjectPathInvalid = {{projectPath.value?.split("/").filter(val=> val !== "").length != 4}}
let isSnapshotSchemaInvalid = {{ snapshotSchema.value === "" }}
let isDBTSalesforceSchemaInvalid = {{tablefishSalesforceSchema.value === "" || tablefishSalesforceSchema.value === undefined }}
  
return isProjectPathInvalid || isSnapshotSchemaInvalid || isDBTSalesforceSchemaInvalid || {{isUnAuthorizedForUpsert.value}} || {{isJobConfigDataInvalid.value}}
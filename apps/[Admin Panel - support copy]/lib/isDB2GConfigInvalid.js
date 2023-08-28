// Tip: assign your external references to variables instead of chaining off the curly brackets.

let isDefaultDB2GConfigInvalid = {{ db2graphDefaultConfigPath?.value === "" || db2graphDefaultConfigPath?.value === undefined }}
let isSpecificDB2GConfigInvalid = {{ db2graphSpecificConfigPath?.value === "" || db2graphSpecificConfigPath?.value === undefined }}
let isDB2GSourceSchemaInvalid = {{ db2graphSchema.value === "" || db2graphSchema.value === undefined }}  
  
return isDefaultDB2GConfigInvalid || isSpecificDB2GConfigInvalid || isDB2GSourceSchemaInvalid || {{isUnAuthorizedForUpsert.value}} || {{isJobConfigDataInvalid.value}}
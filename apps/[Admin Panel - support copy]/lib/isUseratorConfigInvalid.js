let isTenantConfigPathInvalid = {{ UseratorTenantConfigPath.value === "" || UseratorTenantConfigPath.value === undefined }}

let isScheduleInvalid = {{ UseratorSchedule.value === "" || UseratorSchedule.value === undefined }} 

let isSchemaRepoInvalid = {{ useratorSchemaRepo.value === "" || useratorSchemaRepo.value === undefined }}
  
let isSalesforceDBInvalid = {{ useratorSalesforceSchema.value === "" || useratorSalesforceSchema.value === undefined }}
  
return {{ isUnAuthorizedForUpsert.value }} || {{ isJobConfigDataInvalid.value }} || isTenantConfigPathInvalid || isScheduleInvalid || isSchemaRepoInvalid || isSalesforceDBInvalid
let isTenantConfigPathInvalid = {{ SherlockTenantConfigPath.value === "" || SherlockTenantConfigPath.value === undefined }}

let isScheduleInvalid = {{ SherlockSchedule.value === "" || SherlockSchedule.value === undefined }}
let isSchemaRevisionInvalid = {{schemaRepoRevision.value === "" || schemaRepoRevision.value === undefined }}
    
return {{isJobConfigDataInvalid.value}} || isTenantConfigPathInvalid || isScheduleInvalid || isSchemaRevisionInvalid || {{isUnAuthorizedForUpsert.value}}
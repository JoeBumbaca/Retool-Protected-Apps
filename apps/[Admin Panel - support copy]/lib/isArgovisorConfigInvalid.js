let isScheduleInvalid = {{ ArgovisorSchedule.value === "" || ArgovisorSchedule.value === undefined }}
let isSchemaRevisionInvalid = {{ ArgovisorSchemaRevision.value === "" || ArgovisorSchemaRevision.value === undefined }}
  
return {{ isJobConfigDataInvalid.value }} || isSchemaRevisionInvalid || isScheduleInvalid || {{ isUnAuthorizedForUpsert.value }}
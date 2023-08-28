let isScheduleInvalid = {{HermesSchedule.value === "" || HermesSchedule.value === undefined}}

return {{isUnAuthorizedForUpsert.value}} || {{isJobConfigDataInvalid.value}} || isScheduleInvalid
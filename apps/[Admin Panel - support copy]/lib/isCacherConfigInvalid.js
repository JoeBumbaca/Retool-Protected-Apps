let isWorkersAmountInvalid = {{ CacherAsyncWorkers.value <= 0 }}
let isCacherCacherJsonConfigInvalid = {{ CacherJsonConfig.value === {} || CacherJsonConfig.value === undefined}}

return {{isUnAuthorizedForUpsert.value}} || {{isJobConfigDataInvalid.value}} || isWorkersAmountInvalid || isCacherCacherJsonConfigInvalid
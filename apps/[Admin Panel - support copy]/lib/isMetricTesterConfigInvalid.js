let isCronInvalid = {{ MetricTesterSchedule.value === "" || MetricTesterSchedule.value === undefined }}
let isNumberofThreadsInvalid = {{ MetricTesterNumThreads.value <= 0 }}


return {{ isUnAuthorizedForUpsert.value }} || {{ isJobConfigDataInvalid.value }} || isCronInvalid || isNumberofThreadsInvalid
// Tip: assign your external references to variables instead of chaining off the curly brackets. 
function findImageTag(name){
  const imageTag = [{{ArgovisorDb2graphOverrideImageTag}},{{ArgovisorBabelfishOverrideImageTag}},{{ArgovisorValidatorOverrideImageTag}},{{ArgovisorTailorOverrideImageTag}}].filter(x=>(x.label==name && x.value!=""));
  return imageTag.length>0 ? imageTag[0].value : undefined;
}

function getDockerImage(name){
  const imageTag = findImageTag(name);
  return imageTag ? {overrideImageTag: imageTag} : {};
}

const argovisorConfig = {"env":[{name: "LOG_JSON", value: "True"}],"enabled": true,"tailorConfig":Object.assign({"workerRetryLimit":{{workerRetryLimit.value}},"concurrentJobsCount":{{TailorConcurrentJobs.value}} }, getDockerImage("tailor")),"db2graphConfig":Object.assign({"stepsAppendArgs":{{[db2graphSalesforceEnabled.value ? "-t salesforce" : undefined, db2graphNetsuiteEnabled.value ? "-t netsuite" : undefined, db2graphHubSpotEnabled.value ? "-t hubspot" : undefined, db2graphTargetsEnabled.value ? "-t targets" : undefined].filter(x=>x!=undefined)}} }, getDockerImage("db2graph")),"babelfishConfig":Object.assign({}, getDockerImage("babelfish")),"validatorConfig":Object.assign({}, getDockerImage("validator")),"schemaRepositoryRevision": {{ArgovisorSchemaRevision.value}}, daysToKeepSucceededWorkflows: {{ stamp.value === 'staging' ? 5 : undefined }} };
return argovisorConfig;
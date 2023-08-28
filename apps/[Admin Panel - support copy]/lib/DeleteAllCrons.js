for (let job of GetJobsConfig.data?.argo_cron ?? []) {
  await DeleteCronByParameter.trigger({
    additionalScope: {
      workflow: job.name,
    },
  });
}

return {data: GetJobsConfig.data?.argo_cron ?? [] };
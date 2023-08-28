return _.sortBy(_.flatten(GetJobs.data.map((job) => [{
  time: job.started_at,
  name: `${job.name}: started`
},{
  time: job.updated_at,
  name: `${job.name}: ` + (job.status == 'started' ? `still running, at ${job.progress}% after ` : job.status == 'failed' ? `failed at ${job.progress}% after ` : `finished after `) + elapsedTime(job.started_at, job.updated_at)
}])), ['time'])
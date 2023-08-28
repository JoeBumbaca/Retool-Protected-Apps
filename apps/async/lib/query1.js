let videosToAdd = [];
get_dsp_movie_library_reference.trigger()
let stagingData = await get_dsp_movie_library_reference_staging.trigger();

  for (var row in btnPullVideosClickHandler.data) {
    // check if video "id" on row already exists or already pulled into staging table
    if (stagingData.data.id.includes(row.id)) {
    continue;
  }

  // check if video "id" on row already exists in movie_demand.dsp_movie_library_reference if (get_dsp_movie_library_reference.data.id.includes(row.id)) { continue; } // if it is a new video by the id, then set amd_brand = "LN" and add it to staging table videosToAdd.push(row); }
add_dsp_movie_library_reference_staging_records.trigger({
  additionalScope: {
  rows: videosToAdd
  }
});
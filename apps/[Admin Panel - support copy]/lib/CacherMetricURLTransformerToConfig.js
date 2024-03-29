const METRIC_NAME_AND_FLAVOR_REGEX = /^(?<name>.*) \((?<flavor>.+)\)$/;
function extractMetricNameAndFlavor(metricName){
  return metricName.match(METRIC_NAME_AND_FLAVOR_REGEX)?.groups ?? {};
}

const url = {{CacherPulseURLtoAdd.value}};
const pattern = /\/metric\/([^?]+)\??([^&]+)?(?:&filterBy=([^&]+))?(?:&groupBy=([^&]+))?(?:&collectProps=([^&]+))?/;

const matches = url.match(pattern);
if (matches) {
  const metric = decodeURIComponent(matches[1]); // Decodes the metric name (in case it has any URL-encoded characters)
  const filterBy = matches[3] ? decodeURIComponent(matches[3]).replaceAll("+", " ") : null; // Decodes the filterBy parameter (in case it has any URL-encoded characters)
  const groupBy = matches[4] ? decodeURIComponent(matches[4]).replaceAll("+", " ") : null; // Decodes the groupBy parameter (in case it has any URL-encoded characters)
  const collectProps = matches[5] ? decodeURIComponent(matches[5]).replaceAll("+", " ") : null; // Decodes the collectProps parameter (in case it has any URL-encoded characters)
  const { name = metric, flavor } = extractMetricNameAndFlavor(metric);
  
  const result = {"name":name};
  if (flavor){
    result["flavors"] = [flavor];
  }
  if (filterBy){
    const filterArray = [];
    Object.entries(JSON.parse(filterBy)).forEach(o=> filterArray.push({path: o[0], values:o[1]}));
    result["filter_by"]=filterArray;
  }
  if (groupBy){
    result["group_by"]=Object.keys(JSON.parse(groupBy));
  }
  if (collectProps){
    result["collect_props"]=Object.keys(JSON.parse(collectProps));
  }
  return [result];
} else {
  console.log("No match found");
}
return [];
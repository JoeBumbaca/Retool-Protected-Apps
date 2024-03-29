var tempData = {{ formatDataAsArray(getLast6Images.rawData) }};
console.log("Raw Data: ", data);
console.log("temp data: ", tempData);
console.log("Images Array: ", tempData.length);
var transformedData = {}
for(var i=0; i<tempData.length; i++){
transformedData[tempData[i].device] = {
warehouse_code: tempData[i].warehouse_code,
device: tempData[i].device,
device_type: tempData[i].device_type,
process_as: tempData[i].process_as
}
const device_rows = tempData.filter(row => row.device == tempData[i].device);
for(var j=0; j<device_rows.length;j++){
transformedData[tempData[i].device][`${device_rows[j].row_num}_photo_info`] = `photo_number: ${device_rows[j].photo_number}, photo_state: ${device_rows[j].photo_state}, reprocess_reason: ${device_rows[j].reprocess_reason}, reprocess_instructions: ${device_rows[j].reprocess_instructions}`
transformedData[tempData[i].device][`${device_rows[j].row_num}_display_photo_url`] = `https://cf-assets-thredup.thredup.com/assets/${device_rows[j].display_photo_number}/medium.jpg`
}
}

const rows = Object.values(transformedData);
return rows
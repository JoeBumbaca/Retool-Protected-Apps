<GlobalFunctions>
  <GCSQuery
    id="query1"
    actionType="upload"
    resourceName="d00fd365-381a-49e9-b0f8-2111da295921"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    uploadData="{{filepicker1.file}}"
    uploadFileName="debug-images/{{filepicker1.file.name}}"
    uploadFileType="binary"
  >
    <Event
      event="success"
      method="run"
      params={{
        ordered: [{ src: "imageAssetInput.setValue(self.data.fileName);" }],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </GCSQuery>
</GlobalFunctions>

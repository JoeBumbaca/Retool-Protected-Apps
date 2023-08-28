<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <TextInputWidget
      id="imageAssetInput"
      initialValue="{{table1.selectedRow.data ? table1.selectedRow.data.image : null}}"
      label="Image"
      placeholder="	"
      readonly="true
	"
      required={true}
      style={{ ordered: [] }}
      type="text"
    />
    <FilePickerWidget
      id="filepicker1"
      color="#5b9dab"
      events={[
        {
          ordered: [
            { event: "change" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "query1" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      onFilePick="uploadDishImageAsset"
      style={{ ordered: [{ "accent-background": "#5b9dab" }] }}
      text="Upload Image"
    />
  </Frame>
</App>

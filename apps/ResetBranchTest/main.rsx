<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" type="main">
    <Image
      id="image1"
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
    />
    <Button id="button1" styleVariant="solid" text="Button" />
    <Select
      id="select1"
      _defaultValue={null}
      allowDeselect={true}
      itemMode="static"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="2dbf9" value="Option 1" />
      <Option id="f1522" value="Option 2" />
      <Option id="1c3e5" value="Option 3" />
    </Select>
  </Frame>
</App>

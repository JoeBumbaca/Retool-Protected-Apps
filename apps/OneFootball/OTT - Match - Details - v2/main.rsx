<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text1"
      value="## Match - Details - *{{urlparams.sku}}*"
      verticalAlign="center"
    />
    <Divider id="divider4" />
    <Include src="./src/container1.rsx" />
  </Frame>
</App>

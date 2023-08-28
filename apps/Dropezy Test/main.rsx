<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./header.rsx" />
  <Frame id="$main" type="main">
    <Include src="./src/container1.rsx" />
    <Include src="./src/ediCategoryModal.rsx" />
  </Frame>
</App>

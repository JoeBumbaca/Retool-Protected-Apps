<App>
  <Include src="./functions.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    style={{ ordered: [{ canvas: "" }] }}
    type="main"
  >
    <Text
      id="main_title"
      _disclosedFields={{ array: [] }}
      value="<h4> EPC Overview"
      verticalAlign="center"
    />
    <Breadcrumbs
      id="breadcrumbs1"
      data="{{main_navigation.pageUuid}}"
      itemMode="static"
      value="{{ retoolContext.appUuid }}"
    >
      <Option id="e5248" itemType="app" label="Portfolio" />
      <Option
        id="652b0"
        appTarget="70afac14-32c0-11ee-9d87-f7d1ff088a32"
        itemType="app"
        label="EPC Overview"
      />
    </Breadcrumbs>
    <Include src="./src/tabbedContainer1.rsx" />
  </Frame>
</App>

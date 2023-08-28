<Container
  id="collapsibleContainer2"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "rgb(255, 255, 255)" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle_variationName"
      value="#### {{ getVariations.data[i].name }}"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle2"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer2.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
    <Button
      id="button5"
      style={{
        ordered: [
          { background: "rgba(201, 72, 62, 0.07)" },
          { label: "danger" },
        ],
      }}
      styleVariant="solid"
      text="Delete Variation {{ getVariations.data[i].name }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="queryDeleteVariation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Divider id="divider1" />
  </Header>
  <View id="391b9" viewKey="View 1">
    <Text id="text_bundles" value="##### Bundles" verticalAlign="center" />
    <Text
      id="text1"
      hidden="{{Object.keys(getVariations.data[i].bundles).length !== 0}}"
      value="No bundles found for this variation"
      verticalAlign="center"
    />
    <ListView
      id="listView_bundles"
      hidden="{{Object.keys(getVariations.data[i].bundles).length === 0}}"
      instances="{{ Object.keys(getVariations.data[i].bundles).length}}"
      showBorder={false}
      showDropShadow={false}
    >
      <Include src="./container1.rsx" />
    </ListView>
    <Button
      id="button7"
      style={{
        ordered: [
          { background: "rgb(228, 236, 255)" },
          { label: "rgb(41, 101, 246)" },
          { border: "rgb(41, 101, 246)" },
        ],
      }}
      styleVariant="solid"
      text="Add Bundle "
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="queryCreateBundle"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <Body>
    <Button
      id="button6"
      style={{ ordered: [{ background: "rgb(41, 101, 246)" }] }}
      styleVariant="solid"
      text="Add Variation"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="queryCreateVariation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Body>
</Container>

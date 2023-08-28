<Container
  id="tabbedcontainer1"
  currentViewIndex={0}
  currentViewKey={0}
  disabled=""
  heightType="fixed"
  hidden={null}
  hoistFetching={true}
  maintainSpaceWhenHidden={null}
  overflowType="hidden"
  showBody={true}
  showHeader={true}
  showInEditor={null}
  style={{ ordered: [] }}
  styleContext={{
    ordered: [{ textDark: "#ffffff" }, { primary: "rgba(211, 216, 53, 1)" }],
  }}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs1"
      _defaultValue={null}
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedcontainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="519ce" value="Tab 1" />
      <Option id="18eeb" value="Tab 2" />
      <Option id="7fc3b" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Rokys Brasas" viewKey={0}>
    <Text
      id="text1"
      _defaultValue=""
      style={{ ordered: [{ background: "#ffffff" }] }}
      value="Producto:
{{table2.selectedRow.data.name}}

Precio: S/. {{table2.selectedRow.data.price}}

Detalle:
{{table2.selectedRow.data.description}}"
      verticalAlign="center"
    />
    <Image
      id="image1"
      fit="contain"
      heightType="fixed"
      hidden={null}
      horizontalAlign="center"
      maintainSpaceWhenHidden={null}
      showInEditor={null}
      src="{{table2.selectedRow.data.photo}}"
    />
    <Include src="./modal1.rsx" />
    <Include src="./modal3.rsx" />
    <Button
      id="button1"
      disabled="{{table2.selectedRow.index == 0}}"
      hidden={null}
      loading=""
      maintainSpaceWhenHidden={null}
      showInEditor={null}
      style={{ ordered: [{ background: "hsl(141, 20%, 55%)" }] }}
      text="◀️ Anterior"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="subefila"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button2"
      disabled="{{table2.selectedRow.index == formatDataAsArray(table2.data).length -1}}"
      hidden={null}
      loading=""
      maintainSpaceWhenHidden={null}
      showInEditor={null}
      style={{ ordered: [{ background: "hsl(141, 20%, 55%)" }] }}
      text="Siguiente ▶️"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="bajafila"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="1" label="Parrillas" viewKey={1} />
  <View id="2" label="Fusion Criolla" viewKey={2} />
  <View id="3" label="Almuerzos" viewKey={3} />
  <View id="4" label="Broaster" viewKey={4} />
  <View id="5" label="Hamburguesas" viewKey={5} />
</Container>

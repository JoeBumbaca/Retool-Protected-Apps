<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Button id="button1" styleVariant="solid" text="Button">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="query1"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <ListView
        id="listView1"
        hidden="{{query1.isFetching}}"
        instances="{{query1.data.testResponse.length}}"
      >
        <Text
          id="text1"
          _defaultValue=""
          value="{{query1.data.testResponse[i]}}"
          verticalAlign="center"
        />
      </ListView>
    </ModuleContainerWidget>
  </Frame>
</App>

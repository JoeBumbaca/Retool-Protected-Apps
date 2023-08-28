<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      hidden="{{_.isEmpty(provider_id.value)}}"
      isGlobalWidgetContainer={true}
      provider_id=""
      showInEditor={true}
      style={{ ordered: [] }}
    >
      <Button
        id="refreshButton"
        iconBefore="reload"
        style={{ ordered: [{ background: "rgba(60, 146, 222, 0.23)" }] }}
        styleVariant="solid"
        text="Load Devices"
      >
        <Event
          enabled=""
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getCognitoDevices"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <ListView
        id="deviceListView"
        heightType="fixed"
        hidden=""
        instances="{{getCognitoDevices.data.testResponse.length}}"
        rowKeys=""
        scroll={true}
      >
        <Container
          id="container1"
          disabled=""
          hidden="{{getCognitoDevices.isFetching}}"
          hoistFetching={true}
          maintainSpaceWhenHidden={null}
          overflowType="hidden"
          selectedView="View 1"
          showBody={true}
          showHeader={true}
          showInEditor={null}
          style={{ ordered: [{ headerBackground: "#ededed" }] }}
        >
          <Header>
            <Text
              id="containerTitle1"
              _defaultValue=""
              value={
                '<div style="text-transform: uppercase; font-weight: 500;">{{getCognitoDevices.data.result.Devices[i].DeviceKey}}</div>'
              }
              verticalAlign="center"
            />
          </Header>
          <View id="" viewKey="View 1" />
          <Body>
            <Text
              id="text2"
              _defaultValue=""
              value="**Created:** {{getCognitoDevices.data.result.Devices[i].DeviceCreateDate}} 

**Last Modified:** {{getCognitoDevices.data.result.Devices[i].DeviceLastModifiedDate}}

**Last Authenticated Date:** {{getCognitoDevices.data.result.Devices[i].DeviceLastAuthenticatedDate}}"
              verticalAlign="center"
            />
            <TableLegacy
              id="table2"
              _columns={["id", "name", "email", "sales", "Name", "Value"]}
              _columnVisibility={{
                ordered: [
                  { Name: true },
                  { Value: true },
                  { id: true },
                  { name: true },
                  { email: true },
                  { sales: true },
                ],
              }}
              _unfilteredSelectedIndex=""
              applyDynamicSettingsToColumnOrder={false}
              columnColors={{
                ordered: [
                  { Name: "" },
                  { Value: "" },
                  { id: "" },
                  { name: "" },
                  { email: "" },
                  { sales: "" },
                ],
              }}
              columns={["id", "name", "email", "sales", "Name", "Value"]}
              columnVisibility={{
                ordered: [
                  { Name: true },
                  { Value: true },
                  { id: true },
                  { name: true },
                  { email: true },
                  { sales: true },
                ],
              }}
              columnWidths={[{ object: { id: "Name", value: 148 } }]}
              customButtonName=""
              data="{{getCognitoDevices.data.result.Devices[i].DeviceAttributes}}"
              defaultSelectedRow="none"
              pageSize={7}
              rowHeight="compact"
              selectRowByDefault={false}
              showColumnBorders={true}
              showDownloadButton={false}
              showFetchingIndicator={false}
              showFilterButton={false}
              showRefreshButton={false}
              useCompactMode={true}
            />
            <Text id="text1" _defaultValue="" verticalAlign="center" />
          </Body>
        </Container>
      </ListView>
    </ModuleContainerWidget>
  </Frame>
</App>

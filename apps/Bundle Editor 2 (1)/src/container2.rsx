<Container
  id="container2"
  disabled="{{queryUpdateIncludedAvailableInBundle.isFetching || queryCreateBundle.isFetching || queryCreateVariation.isFetching}}"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
  transition="slide"
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="a9d15" viewKey="view">
    <Text
      id="text_title2"
      value="## Bundle Editor
---"
      verticalAlign="center"
    />
    <EditableText
      id="editableTextGroupName"
      editIcon="bold/interface-edit-write-1"
      hideLabel={true}
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Group name"
      placeholder="Name of the group (ex. simpleSub)"
      textSize="h4"
      value="{{urlparams.groupName}}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="queryUpdateGroup"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Button
      id="button4"
      style={{
        ordered: [
          { background: "rgb(228, 236, 255)" },
          { label: "rgb(41, 101, 246)" },
          { border: "rgb(41, 101, 246)" },
        ],
      }}
      styleVariant="solid"
      text="Add Variation to {{editableTextGroupName.value}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getNextVariationName"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <ListView
      id="listView_variations"
      instances="{{ getVariations.data.length }}"
      showBorder={false}
      showDropShadow={false}
    >
      <Include src="./collapsibleContainer2.rsx" />
    </ListView>
  </View>
  <View
    id="4d594"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="edit"
  >
    <Button
      id="button_backToVariations"
      iconBefore="bold/interface-arrows-left-alternate"
      style={{
        ordered: [
          { background: "rgb(228, 236, 255)" },
          { border: "rgb(41, 101, 246)" },
          { label: "rgb(41, 101, 246)" },
        ],
      }}
      styleVariant="solid"
      text="Back to Variations"
    >
      <Event
        event="click"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "view" }] }}
        pluginId="container2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button8"
      style={{
        ordered: [
          { label: "danger" },
          { background: "rgba(201, 72, 62, 0.07)" },
        ],
      }}
      styleVariant="solid"
      text="Delete Bundle"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="queryDeleteBundle"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text_groupName"
      value="# Group: {{editableTextGroupName.value}}"
      verticalAlign="center"
    />
    <Text
      id="text_variationName"
      value="## Variation: {{ queryVariationsView.data.variationName }}"
      verticalAlign="center"
    />
    <Text
      id="text_bundleName2"
      value="### Bundle: {{ queryVariationsView.data.bundleName }}"
      verticalAlign="center"
    />
    <Text
      id="textAvailableProducts"
      value="#### Available Products
---"
      verticalAlign="center"
    />
    <Text
      id="textIncludedProducts"
      value="#### Included Products

---"
      verticalAlign="center"
    />
    <ListView
      id="listView_includedProducts"
      hidden=""
      instances="{{ queryVariationsView.data.included.length }}"
      rowKeys=""
      showBorder={false}
      showDropShadow={false}
    >
      <Include src="./collapsibleContainer_includedProducts.rsx" />
    </ListView>
    <ListView
      id="listView_availableProducts"
      hidden=""
      instances="{{ queryVariationsView.data.available.length }}"
      rowKeys=""
      showBorder={false}
      showDropShadow={false}
    >
      <Include src="./collapsibleContainer_includedProducts2.rsx" />
    </ListView>
  </View>
</Container>

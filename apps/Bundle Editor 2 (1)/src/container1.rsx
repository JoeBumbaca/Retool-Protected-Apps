<Container
  id="container1"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ headerBackground: "canvas" }] }}
>
  <View id="64428" viewKey="View 1">
    <EditableText
      id="editableText_bundleName"
      editIcon="bold/interface-edit-write-1"
      hideLabel={true}
      inputTooltip="`Enter` to save, `Esc` to cancel"
      placeholder="Enter Bundle Name
"
      value="{{ getVariations.data[ri[0]].bundles[ri[1]].name}}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="queryUpdateBundle"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <NumberInput
      id="editableText_bundleAmount"
      currency="USD"
      format="currency"
      hideLabel={true}
      inputValue={0}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{getVariations.data[ri[0]].bundles[ri[1]].amount}}"
    >
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="queryUpdateBundle"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </NumberInput>
    <Button
      id="button9"
      style={{
        ordered: [
          { label: "danger" },
          { background: "rgba(201, 72, 62, 0.07)" },
        ],
      }}
      styleVariant="solid"
      text="Delete"
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
    <Button
      id="button_editProducts"
      iconAfter="bold/interface-arrows-right-alternate"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Products"
    >
      <Event
        event="click"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "edit" }] }}
        pluginId="container2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{ri[1]}}" }] }}
        pluginId="stateBundleIndex"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{ri[0]}}" }] }}
        pluginId="stateVariationIndex"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="queryVariationsView"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <Button
    id="button3"
    style={{ ordered: [] }}
    styleVariant="outline"
    text="edit"
  >
    <Event
      event="click"
      method="setCurrentView"
      params={{ ordered: [{ viewKey: "edit" }] }}
      pluginId="container2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Container>

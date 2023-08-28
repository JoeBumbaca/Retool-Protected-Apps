<Container
  id="container2"
  hidden="true"
  hoistFetching={true}
  showInEditor={true}
  styleContext={{ ordered: [{ surfacePrimary: "rgba(225, 32, 32, 1)" }] }}
>
  <View id="2bb74" viewKey="View 1">
    <TextInput
      id="orderNumberInput"
      label="Order number:"
      placeholder="Enter value"
      value="{{urlparams.cu}}"
    />
    <Button
      id="button2"
      style={{ ordered: [{ borderRadius: "40px" }] }}
      styleVariant="solid"
      text="Search"
    >
      <Event
        enabled={'{{orderNumberInput.value != ""}} '}
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="contactsQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Select
      id="ProductSelect"
      captionByIndex="{{ item.processingOrder.processingOrderId }}"
      data="{{ productsQuery.data }}"
      label="Products:"
      labels="{{ item.productName }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.processingOrder.processingOrderId }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [{ src: "Window.procNum = {{ProductSelect.value}};" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Text
      id="text3"
      value="Order No : **{{ orderNumberInput.value }}**"
      verticalAlign="center"
    />
    <Text
      id="text1"
      value="Customer: **{{ contactsQuery.data.contacts[0].firstName}} {{ contactsQuery.data.contacts[0].lastName}}**"
      verticalAlign="center"
    />
  </View>
</Container>

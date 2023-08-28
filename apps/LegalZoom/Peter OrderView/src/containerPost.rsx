<Container id="containerPost" disabled="" hoistFetching={true} showBody={true}>
  <Header>
    <Text
      id="containerTitle4"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="d5e50" viewKey="View 1">
    <Select
      id="noteCaseSelect"
      emptyMessage="No options"
      hideLabel={false}
      itemMode="static"
      label="Item to add"
      labelWidth="40"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="note"
    >
      <Option id="76686" label="Note" value="note" />
      <Option id="0c441" label="Case" value="case" />
    </Select>
    <TextInput
      id="orderId"
      disabled="true"
      label="Order id"
      labelWidth="20"
      placeholder=" "
      readOnly=""
      value="{{ getLedgerQuery.data.sfOrderId }}"
    />
    <TextInput
      id="contactId"
      disabled="true"
      label="Contact id"
      labelWidth="25"
      placeholder=" "
      value="{{ getLedgerQuery.data.sfContactId }}"
    />
    <TextInput
      id="descriptionText"
      label="Description"
      labelWidth="7"
      placeholder="Enter {{noteCaseSelect.selectedItem.value}} description"
      readOnly=""
    />
    <Button
      id="addButton"
      disabled="{{!descriptionText.value || urlProcessingNumber.validationMessage !== '' || urlCustomerOrderNumber.validationMessage !== ''}}"
      styleVariant="solid"
      text="Add {{ noteCaseSelect.selectedItem.label}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="postLedgerQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <Event
    event="click"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="postLedgerQuery"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</Container>

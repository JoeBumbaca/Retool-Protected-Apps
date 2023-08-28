<Container
  id="urlParamsStore"
  hidden="true"
  hoistFetching={true}
  showInEditor={true}
>
  <Header>
    <Text
      id="containerTitle3"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="d5e50" viewKey="View 1">
    <TextInput
      id="urlProcessingNumber"
      customValidation="{{/^(\d)+$/.test(self.value) ? '' : 'number only'}}"
      label="Processing number"
      labelWidth="45"
      placeholder="Enter processing number"
      required={true}
      value="{{urlparams.hash.processingNumber}}"
    />
    <TextInput
      id="urlDepartmentName"
      customValidation="{{/^(\d)+$/.test(self.value) ? '' : 'number only'}}"
      label="Department Name"
      labelWidth="55"
      placeholder="Enter customer order number"
      required={true}
      value="{{urlparams.hash.departmentName}}"
    />
    <TextInput
      id="urlCustomerOrderNumber"
      customValidation="{{/^(\d)+$/.test(self.value) ? '' : 'number only'}}"
      label="Customer order number"
      labelWidth="55"
      placeholder="Enter customer order number"
      required={true}
      value="{{urlparams.hash.customerOrderNumber}}"
    />
    <Button
      id="getLedgerBbutton"
      disabled="{{urlProcessingNumber.validationMessage !== '' || urlCustomerOrderNumber.validationMessage !== ''}}"
      styleVariant="solid"
      text="Get ledger"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getLedgerQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TextInput
      id="textInput1"
      hidden=""
      label="User alias"
      placeholder="Enter value"
      showInEditor={true}
      value="{{getAliasQuery.data}}"
    />
  </View>
</Container>

<Container
  id="collapsibleContainer_includedProducts2"
  hoistFetching={true}
  showHeader={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <NumberInput
      id="currency_includedProductAmount2"
      currency="USD"
      format="currency"
      hideLabel={true}
      inputValue={0}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{ queryVariationsView.data.available[i].amount }}"
    >
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="productRowUpdated"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </NumberInput>
    <ToggleButton
      id="collapsibleToggle4"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      style={{
        ordered: [
          { border: "rgb(209, 209, 209)" },
          { label: "rgb(153, 154, 156)" },
        ],
      }}
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer_includedProducts2.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer_includedProducts2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
    <Checkbox
      id="checkbox_availableProduct"
      hideLabel={true}
      style={{ ordered: [{ checkedBackground: "rgb(41, 101, 246)" }] }}
      value="{{queryVariationsView.data.available[i].id !== undefined}}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="productRowUpdated"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Text
      id="collapsibleTitle_includedProductName2"
      value="{{ queryVariationsView.data.available[i].name }}"
      verticalAlign="center"
    />
  </Header>
  <View id="635fc" viewKey="View 1">
    <ListView
      id="listView_includedLineItems2"
      instances="{{ queryVariationsView.data.available[ri[0]]?.children?.length }}"
    >
      <Checkbox id="checkbox_includeProductLineItem2" hideLabel={true} />
      <Text
        id="collapsibleTitle_includedLineItemName2"
        value="#### {{ queryVariationsView.data[ri[0]]?.children[ri[1]]?.name }}"
        verticalAlign="center"
      />
      <NumberInput
        id="currency_includedLineItem2"
        currency="USD"
        format="currency"
        hideLabel={true}
        inputValue={0}
        placeholder="Enter value"
        showSeparators={true}
        showStepper={true}
        value={0}
      />
    </ListView>
  </View>
</Container>

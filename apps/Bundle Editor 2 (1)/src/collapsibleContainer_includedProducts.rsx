<Container
  id="collapsibleContainer_includedProducts"
  hoistFetching={true}
  showHeader={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <NumberInput
      id="currency_includedProductAmount"
      currency="USD"
      format="currency"
      hideLabel={true}
      inputValue={0}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{ queryVariationsView.data.included[i].amount }}"
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
      id="collapsibleToggle3"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      style={{
        ordered: [
          { label: "rgba(153, 154, 156, 1)" },
          { border: "rgb(209, 209, 209)" },
        ],
      }}
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer_includedProducts.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer_includedProducts"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
    <Checkbox
      id="checkbox_includeProduct"
      hideLabel={true}
      style={{ ordered: [{ checkedBackground: "rgb(41, 101, 246)" }] }}
      value="{{ queryVariationsView.data.included[i].id !== undefined && queryVariationsView.data.included[i].isIncluded }}"
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
      id="collapsibleTitle_includedProductName"
      value="{{ queryVariationsView.data.included[i].name }}"
      verticalAlign="center"
    />
  </Header>
  <View id="635fc" viewKey="View 1">
    <ListView
      id="listView_includedLineItems"
      instances="{{ queryVariationsView.data.included[ri[0]]?.children?.length }}"
    >
      <Checkbox id="checkbox_includeProductLineItem" hideLabel={true} />
      <Text
        id="collapsibleTitle_includedLineItemName"
        value="#### {{ queryVariationsView.data[ri[0]]?.children[ri[1]]?.name }}"
        verticalAlign="center"
      />
      <NumberInput
        id="currency_includedLineItem"
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

<App>
  <Include src="./functions.rsx" />
  <UrlFragments
    id="$urlFragments"
    value={{
      ordered: [
        { processingNumber: "{{urlProcessingNumber.value}}" },
        { customerOrderNumber: "{{urlCustomerOrderNumber.value}}" },
        { departmentName: "{{urlDepartmentName.value}}" },
      ],
    }}
  />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Include src="./src/urlParamsStore.rsx" />
    <Include src="./src/container3.rsx" />
    <Container
      id="container1"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="Requires Attention"
          verticalAlign="center"
        />
        <Switch id="switch1" label="Show Closed Items" />
      </Header>
      <View id="2bb74" viewKey="View 1">
        <TableLegacy
          id="table1"
          _columns={[
            "transactionId",
            "createdBy",
            "orcoStatus",
            "closedBy",
            "category1",
            "c1Reason1",
            "c1Reason2",
            "category2",
            "c2Reason3",
            "c2Reason4",
            "category3",
            "c3Reason5",
            "c3Reason6",
            "category4",
            "c4Reason7",
            "c4Reason8",
            "dateAdded",
            "dateClosed",
            "departmentName",
            "fkuserorder",
            "Custom Column 6",
          ]}
          _columnVisibility={{
            ordered: [
              { c3Reason5: false },
              { orcoStatus: true },
              { c3Reason6: false },
              { c4Reason7: false },
              { c4Reason8: false },
              { closedBy: false },
              { URL: false },
              { category3: false },
              { category4: false },
              { transactionId: false },
              { dateClosed: false },
              { id: false },
              { fkuserorder: false },
            ],
          }}
          _compatibilityMode={false}
          calculatedColumns={[
            "Custom Column 1",
            "Custom Column 2",
            "Custom Column 3",
            "Custom Column 4",
            "Custom Column 6",
          ]}
          columnAlignment={{ ordered: [{ "Custom Column 6": "left" }] }}
          columnColors={{
            ordered: [
              { c1Reason2: "" },
              { c2Reason3: "" },
              { c3Reason5: "" },
              { orcoStatus: "{{self ==\"Open\" ? '#9FE2BF' : 'Salmon'}}" },
              { c2Reason4: "" },
              { c3Reason6: "" },
              { c4Reason7: "" },
              { c4Reason8: "" },
              { closedBy: "" },
              { payment: "" },
              { name: "" },
              { URL: "" },
              { dateAdded: "" },
              { category1: "" },
              { category2: "" },
              { category3: "" },
              { "Custom Column 1": "" },
              { category4: "" },
              { "Custom Column 2": "" },
              { "Custom Column 3": "" },
              { transactionId: "" },
              { Issue: "" },
              { "Custom Column 4": "" },
              { dateClosed: "" },
              { id: "" },
              { "Custom Column 6": "" },
              { departmentName: "" },
              { fkuserorder: "" },
              { createdBy: "" },
              { c1Reason1: "" },
            ],
          }}
          columnEditable={{
            ordered: [
              { "Custom Column 2": true },
              { "Custom Column 3": false },
              { "Custom Column 4": false },
              { URL: false },
              { "Custom Column 6": false },
            ],
          }}
          columnFormats={{ ordered: [{ "Custom Column 6": "button" }] }}
          columnHeaderNames={{
            ordered: [
              { "Custom Column 6": "Edit" },
              { category4: "category4" },
            ],
          }}
          columnMappers={{
            ordered: [{ "Custom Column 6": "Close Orco" }, { orcoStatus: "" }],
          }}
          columnTypeSpecificExtras={{
            ordered: [
              {
                "Custom Column 6": {
                  ordered: [
                    { buttonType: "action" },
                    { action: "table1Trigger" },
                    {
                      buttonDisabled:
                        '{{currentRow.orcoStatus !="Open" ? 1 :0}}',
                    },
                  ],
                },
              },
            ],
          }}
          customButtonName=""
          data="{{switch1.value ?getAllOrcosforOrder.data : GetOpenOrcosforOder.data}}"
          defaultSortByColumn="dateAdded"
          defaultSortDescending={true}
          doubleClickToEdit={true}
          rowColor=""
          showBoxShadow={false}
        />
      </View>
    </Container>
    <Include src="./src/tabbedContainer1.rsx" />
    <Include src="./src/container2.rsx" />
  </Frame>
</App>

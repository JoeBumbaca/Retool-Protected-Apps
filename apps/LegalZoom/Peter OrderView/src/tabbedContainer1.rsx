<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
>
  <View id="e3fcd" label="Customer Questionnaire" viewKey="View 1">
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="637d9" value="Tab 1" />
      <Option id="441e2" value="Tab 2" />
      <Option id="c04bf" value="Tab 3" />
    </Tabs>
    <IFrame
      id="iFrame1"
      src="https://dev-lzapps/Proofer/{{ProductSelect.value}}"
      title="{{ self.src }}"
    />
  </View>
  <View id="a798d" viewKey="Documents">
    <IFrame
      id="DocumentsIframe"
      allowCamera={true}
      allowDownloads={true}
      allowForms={true}
      allowFullscreen={true}
      allowGeolocation={true}
      allowMicrophone={true}
      allowModals={true}
      allowPayment={true}
      allowPopups={true}
      allowSameOrigin={true}
      allowTopNavigation={true}
      showTopBar={true}
      src="https://dev.ngf-navigator.dev.aws-01.legalzoom.com/ngf-navigator/?processingOrderId={{urlProcessingNumber.value}}&customerId={{orderItemsQuery.data.order.customerId }}"
      title="{{ self.src }}"
    />
  </View>
  <View id="59c7a" viewKey="Fullfilment History">
    <TableLegacy
      id="historyTable"
      _columns={[
        "createdDate",
        "updatedBy",
        "description",
        "status",
        "additionalInfo",
      ]}
      _columnSummaryTypes={{ ordered: [{ orderItemId: "" }] }}
      _columnSummaryValues={{ ordered: [{ orderItemId: "" }] }}
      _columnVisibility={{
        ordered: [
          { reason: true },
          { id: false },
          { categoryID: false },
          { status: false },
        ],
      }}
      _compatibilityMode={false}
      calculatedColumns={["Custom Column 1", "Custom Column 2"]}
      columnAlignment={{
        ordered: [{ orderItemId: "left" }, { updatedBy: "left" }],
      }}
      columnColors={{
        ordered: [
          { updatedBy: "" },
          { status: "" },
          { history: "" },
          { additionalInfo: "" },
          { "Custom Column 1": "" },
          { createdDate: "" },
          { "Custom Column 2": "" },
          { orderItemId: "" },
          { description: "" },
        ],
      }}
      columnEditable={{ ordered: [{ status: true }] }}
      columnFormats={{ ordered: [{ orderItemId: "TextDataCell" }] }}
      columnHeaderNames={{
        ordered: [
          { createdDate: "Date" },
          { additionalInfo: "Additional Information" },
          { updatedBy: "Updated By" },
          { description: "Description" },
        ],
      }}
      columnTypeProperties={{ ordered: [{ orderItemId: { ordered: [] } }] }}
      columnWidths={[
        { object: { id: "description", value: 222.25 } },
        { object: { id: "updatedBy", value: 180.921875 } },
        { object: { id: "createdDate", value: 178.921875 } },
      ]}
      customButtonName=""
      data="{{ orderHistoryQuery.data[0].history}}"
      defaultSortByColumn="createdDate"
      defaultSortDescending={true}
      disableRowSelectInteraction={true}
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
  </View>
  <View
    id="9cbc5"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Ledger"
  >
    <Container
      id="ledgerContainer"
      hoistFetching={true}
      showBody={true}
      style={{ ordered: [{ borderRadius: "0px" }] }}
      styleContext={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="d5e50" viewKey="View 1">
        <Include src="./containerPost.rsx" />
        <TableLegacy
          id="ledgerDataTable"
          _columns={[
            "noteType",
            "description",
            "status",
            "subject",
            "caseNumber",
            "userName",
            "dateTimeCreated",
            "infoType",
            "id",
            "caseComments",
            "caseCommentsSize",
            "recommendedKnowledgeArticles",
            "numRecommendedArticles",
            "processingNumber",
            "dateTimeCreatedInString",
            "userDepartment",
            "isGeneral",
          ]}
          _columnVisibility={{
            ordered: [
              { processingNumber: false },
              { dateTimeCreatedInString: false },
            ],
          }}
          _compatibilityMode={false}
          columnColors={{
            ordered: [
              { recommendedKnowledgeArticles: "" },
              { dateTimeCreatedInString: "" },
              { caseComments: "" },
              { caseCommentsSize: "" },
              { infoType: "" },
              { subject: "" },
              { noteType: "" },
              { dateTimeCreated: "" },
              { numRecommendedArticles: "" },
              { status: "" },
              { userName: "" },
              { caseNumber: "" },
              { id: "" },
              { processingNumber: "" },
              { description: "" },
              { userDepartment: "" },
              { isGeneral: "" },
            ],
          }}
          columnWidths={[{ object: { id: "dateTimeCreated", value: 146 } }]}
          customButtonName=""
          data="{{ getLedgerQuery.data.casesAndNotes }}"
          doubleClickToEdit={true}
          showBoxShadow={false}
        />
      </View>
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
  </View>
</Container>

<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <TableLegacy
      id="table1"
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Action 1" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Action 2" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      data={
        '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
      }
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
  </Frame>
</App>

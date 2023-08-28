<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text1"
      _defaultValue=""
      value="{{ query2.data }}"
      verticalAlign="center"
    />
    <TableLegacy
      id="table1"
      _columns={["id", "name", "email", "sales"]}
      _columnVisibility={{
        ordered: [
          { id: true },
          { name: true },
          { email: true },
          { sales: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [{ id: "" }, { name: "" }, { email: "" }, { sales: "" }],
      }}
      columns={["id", "name", "email", "sales"]}
      columnVisibility={{
        ordered: [
          { id: true },
          { name: true },
          { email: true },
          { sales: true },
        ],
      }}
      customButtonName=""
      data="{{ transformer1.value }}"
      pageSize={5}
    />
  </Frame>
</App>

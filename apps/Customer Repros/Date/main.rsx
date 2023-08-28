<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <TableLegacy
      id="table1"
      _columnSummaryTypes={{ ordered: [{ date: "" }] }}
      _columnSummaryValues={{ ordered: [{ date: "" }] }}
      _compatibilityMode={false}
      columnAlignment={{ ordered: [{ date: "left" }] }}
      columnColors={{
        ordered: [
          { id: "" },
          { name: "" },
          { email: "" },
          { sales: "" },
          { date: "" },
        ],
      }}
      columnFormats={{ ordered: [{ date: "DateTimeDataCell" }] }}
      columnMappers={{ ordered: [{ date: "" }] }}
      columnTypeProperties={{
        ordered: [
          {
            date: {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
        ],
      }}
      customButtonName=""
      data={
        '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37,\n  "date" : "2022-12-12"\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
      }
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <Date
      id="date1"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      value="{{ new Date() }}"
    />
  </Frame>
</App>

<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <TableLegacy
      id="table1"
      _columns={["id", "name", "email", "sales", "Custom Column 1"]}
      _columnSummaryTypes={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnSummaryValues={{ ordered: [{ "Custom Column 1": "" }] }}
      _compatibilityMode={false}
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{ ordered: [{ "Custom Column 1": "left" }] }}
      columnEditable={{ ordered: [{ "Custom Column 1": true }] }}
      columnFormats={{ ordered: [{ "Custom Column 1": "SingleTagDataCell" }] }}
      columnMappers={{
        ordered: [{ "Custom Column 1": "{{currentRow.sales}}" }],
      }}
      columnTypeProperties={{
        ordered: [
          {
            "Custom Column 1": {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "mapped" },
                { allowCustomValue: true },
                { optionLabels: null },
                { optionColors: null },
                { optionValues: null },
              ],
            },
          },
        ],
      }}
      customButtonName=""
      data={
        '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
      }
      doubleClickToEdit={true}
      overflowType="scroll"
      serverPaginated={true}
    />
    <Image
      id="image1"
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
    />
  </Frame>
</App>

<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
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
      data={
        '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
      }
      pageSize={5}
    />
    <TableLegacy
      id="table2"
      applyDynamicSettingsToColumnOrder={false}
      customButtonName=""
      data={
        '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
      }
      pageSize="10"
    />
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Text
      id="text2"
      value="Just made this change {{moment().format()}}"
      verticalAlign="center"
    />
    <Image
      id="image1"
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
    />
    <NumberInput
      id="numberInput1"
      currency="USD"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
  </Frame>
</App>

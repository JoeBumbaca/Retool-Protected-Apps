<Screen id="peopleListScreen" title="People List">
  <CollectionView
    id="collectionView1"
    bodyByIndex="{{item.sales}}"
    data="{{getRows.data}}"
    prefixIconByIndex="bold/interface-user-single"
    prefixIconColorByIndex=""
    prefixImageFitByIndex="cover"
    prefixImageShapeByIndex="square"
    prefixImageSizeByIndex="1 to 1"
    prefixImageSourceByIndex="{{item.image}}"
    prefixTypeByIndex="image"
    showSeparator={true}
    subtitleByIndex="{{item.email}}"
    subtitleLengthByIndex={2}
    suffixIconByIndex="bold/interface-arrows-button-right"
    suffixTextByIndex="text"
    suffixTypeByIndex="none"
    suffixValueByIndex="false"
    titleByIndex="{{item.name}}"
  >
    <Event
      event="press"
      method="navigateTo"
      params={{ ordered: [{ screenPluginId: "peopleDetailsScreen" }] }}
      type="navigator"
    />
  </CollectionView>
  <DatePicker
    id="datePicker1"
    displayTimeZone="local"
    label="Date"
    mode="date"
    value="{{ new Date() }}"
    valueTimeZone="local"
  />
  <NumberInput id="numberInput1" placeholder={0} stepSize={1} />
  <Multiselect
    id="multiselect1"
    labelPosition="top"
    labels="['Foo', 'Bar', 'Baz']"
    placeholder="Select options"
    value="[]"
    values="['foo', 'bar', 'baz']"
  />
</Screen>

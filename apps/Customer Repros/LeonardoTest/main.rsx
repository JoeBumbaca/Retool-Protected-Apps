<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <ListView id="listView1" instances="{{vehicleTypes.data.length}}">
      <NumberInput
        id="numberInput1"
        currency="USD"
        inputValue={0}
        label="{{vehicleTypes.data[i]}}"
        placeholder="Enter value"
        showSeparators={true}
        showStepper={true}
        value={0}
      />
    </ListView>
  </Frame>
</App>

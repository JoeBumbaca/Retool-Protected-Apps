<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <TextInput
      id="textInput1"
      _disclosedFields={{ array: [] }}
      hidden="false"
      placeholder="Enter value"
    />
    <NumberInput
      id="numberInput1"
      _disclosedFields={{ array: [] }}
      currency="USD"
      hidden="false"
      inputValue={0}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Button id="button1" styleVariant="solid" text="Button" />
    <Image
      id="image1"
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
    />
  </Frame>
</App>

<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Image
      id="image1"
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      src="https://images.pexels.com/photos/296282/pexels-photo-296282.jpeg?cs=srgb&dl=pexels-lukas-296282.jpg&fm=jpg"
    />
    <NumberInput
      id="numberInput1"
      _disclosedFields={{ array: [] }}
      currency="USD"
      inputValue={0}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <NumberInput
      id="numberInput2"
      _disclosedFields={{ array: [] }}
      currency="USD"
      inputValue={0}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Button"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>

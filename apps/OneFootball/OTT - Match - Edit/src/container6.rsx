<Container
  id="container6"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "rgba(255, 255, 255, 0)" }] }}
>
  <Header>
    <Text
      id="containerTitle4"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="b4056" viewKey="View 1">
    <NumberInput
      id="select_encoding_before_mins"
      allowNull={true}
      currency="USD"
      label="Encoding minutes before kickoff"
      placeholder="Inherit from Competition"
      showSeparators={true}
      showStepper={true}
      value="{{getProductBySKU.data.encoding_build_up_minutes}}"
    />
    <NumberInput
      id="select_encoding_after_mins"
      allowNull={true}
      currency="USD"
      label="Encoding minutes after the final whistle"
      placeholder="Inherit from Competition"
      showSeparators={true}
      showStepper={true}
      value="{{getProductBySKU.data.encoding_wrap_up_minutes}}"
    />
    <NumberInput
      id="select_live_before_mins"
      allowNull={true}
      currency="USD"
      label="Minutes live before kickoff"
      placeholder="Inherit from Competition"
      showSeparators={true}
      showStepper={true}
      value="{{getProductBySKU.data.live_build_up_minutes}}"
    />
    <NumberInput
      id="select_live_after_mins"
      allowNull={true}
      currency="USD"
      label="Minutes live after the final whistle"
      placeholder="Inherit from Competition"
      showSeparators={true}
      showStepper={true}
      value="{{getProductBySKU.data.live_wrap_up_minutes}}"
    />
  </View>
</Container>

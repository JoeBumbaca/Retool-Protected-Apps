<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <NavigationWidget id="navigation1" />
    <TextInput
      id="textInput1"
      _defaultValue=""
      placeholder="Enter value"
      value="Hey There {{current_user.fullName}}"
    />
    <Image
      id="image1"
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
    />
    <Text
      id="text1"
      _defaultValue=""
      value="this is here now"
      verticalAlign="center"
    />
  </Frame>
</App>

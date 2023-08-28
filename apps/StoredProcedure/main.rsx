<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <Text
      id="text1"
      value="Results from stored procedure: {{query4.data['@userCount']}}"
      verticalAlign="center"
    />
  </Frame>
</App>

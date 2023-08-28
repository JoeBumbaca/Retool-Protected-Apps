<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <Text
      id="dispatchID"
      _defaultValue=""
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Module
      id="syncMod1"
      dispatchId=""
      name="syncMod"
      pageUuid="4c3a4ffe-e129-11ec-8762-ff87bd7c884f"
    />
  </Frame>
</App>

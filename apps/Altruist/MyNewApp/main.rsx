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
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
    />
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="f3a70" value="Tab 1" />
          <Option id="b0788" value="Tab 2" />
          <Option id="6aa1e" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="dab29" viewKey="View 1" />
      <View id="65872" viewKey="View 2" />
      <View id="10ad9" viewKey="View 3" />
    </Container>
  </Frame>
</App>

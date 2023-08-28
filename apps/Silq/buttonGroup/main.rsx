<App>
  <Include src="./functions.rsx" />
  <AppStyles
    id="$appStyles"
    css="div._retool-ContainerWidget2 > div > div > div > div > div > span > div > section > div > div > div > div > div:nth-child(-n+3) > div {padding: 0px;}"
  />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Container
      id="container1"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      style={{ ordered: [{ background: "canvas" }, { border: "canvas" }] }}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="b97da" viewKey="View 1">
        <Text id="text1" value="Edit" verticalAlign="center" />
        <Icon
          id="icon2"
          horizontalAlign="center"
          icon="line/interface-add-square"
        >
          <Event
            event="click"
            method="confetti"
            params={{ ordered: [] }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
        <Icon
          id="icon1"
          horizontalAlign="center"
          icon="line/interface-edit-copy"
        >
          <Event
            event="click"
            method="confetti"
            params={{ ordered: [] }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Icon>
      </View>
    </Container>
    <ButtonGroup id="buttonGroup1" values="[1,2]" />
  </Frame>
</App>

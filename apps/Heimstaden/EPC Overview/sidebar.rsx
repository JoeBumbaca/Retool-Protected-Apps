<SidebarFrame
  id="sidebarFrame1"
  isHiddenOnMobile={true}
  showFooter={true}
  showHeader={true}
  width=""
>
  <Header>
    <Image
      id="image1"
      _disclosedFields={{ array: [] }}
      dbBlobId="ecb826d3-9653-4c65-9c1f-a3bd11827b7d"
      fit="contain"
      heightType="fixed"
      src="https://build.mywork.heimstaden.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
      srcType="dbBlobId"
    />
  </Header>
  <Body>
    <Module
      id="mainNavigation1"
      name="main_navigation"
      output1="{{output1.value}}"
      pageUuid="8de47693-762f-4e42-93ed-a70ad36fa281"
    />
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      _disclosedFields={{ array: [] }}
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>

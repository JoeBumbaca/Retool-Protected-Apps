<Frame
  id="$header"
  isHiddenOnDesktop={false}
  isHiddenOnMobile={false}
  sticky={true}
  style={{
    ordered: [
      { "accent-background": "rgb(60, 146, 220)" },
      { "primary-surface": "rgb(249, 249, 249)" },
    ],
  }}
  type="header"
>
  <Navigation
    id="navigation1"
    itemMode="static"
    src="https://www.legalzoom.com/resources/img/lzr/nav/lz-logo.svg"
    style={{ ordered: [{ highlightText: "rgb(0, 102, 255)" }] }}
  >
    <Option
      id="55a89"
      highlight="true"
      icon="bold/shipping-box-2"
      iconPosition="left"
      itemType="custom"
      label="Package Groups"
    >
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "9f417850-4b12-11ed-95fe-bf0f6273d27c" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Option>
    <Option
      id="27569"
      icon="bold/interface-help-question-circle"
      iconPosition="left"
      itemType="app"
      label="Help"
    />
  </Navigation>
  <Avatar
    id="avatar1"
    fallback="{{ current_user.fullName }}"
    imageSize={32}
    label="{{ current_user.fullName }}"
    labelAlign="right"
    labelCaption="{{ current_user.email }}"
    labelPosition="left"
    src="{{ current_user.profilePhotoUrl }}"
    style={{ ordered: [{ background: "highlight" }] }}
  />
  <TextInput
    id="textInput1"
    hideLabel={true}
    iconBefore="bold/interface-search"
    label=""
    placeholder="Search"
  />
</Frame>

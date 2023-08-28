<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    sticky={false}
    style={{ ordered: [{ canvas: "hsl(208, 70%, 55%)" }] }}
    type="main"
  >
    <Container
      id="collapsibleContainer1"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="collapsibleTitle1"
          _defaultValue=""
          value="#### Container title"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle1"
          _defaultValue={false}
          horizontalAlign="right"
          iconForFalse="down"
          iconForTrue="up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ collapsibleContainer1.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleContainer1"
            pluginInstance={null}
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="daf71" viewKey="View 1" />
    </Container>
    <Container
      id="container1"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          _defaultValue=""
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="154da" viewKey="View 1" />
    </Container>
    <Container
      id="tabbedContainer1"
      currentViewIndex={0}
      currentViewKey={0}
      disabled=""
      heightType="fixed"
      hidden={null}
      hoistFetching={true}
      maintainSpaceWhenHidden={null}
      overflowType="hidden"
      showBody={true}
      showHeader={true}
      showInEditor={null}
      transition="slide"
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="f2dda" value="Tab 1" />
          <Option id="bd110" value="Tab 2" />
          <Option id="f4930" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="0" label="Tab One" viewKey={0} />
      <View id="1" label="Tab Two" viewKey={1} />
    </Container>
    <TableLegacy
      id="table1"
      _compatibilityMode={false}
      customButtonName=""
      data={
        '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
      }
      doubleClickToEdit={true}
    />
    <NumberInput
      id="numberInput3"
      currency="USD"
      inputValue={0}
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Form
      id="form1"
      hoistFetching={true}
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      styleContext={{ ordered: [{ textDark: "success" }] }}
    >
      <Header>
        <Text
          id="formTitle1"
          _defaultValue=""
          value="#### Form title"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="textInput1"
          _defaultValue=""
          formDataKey="email"
          iconBefore="bold/mail-send-envelope"
          label="Email"
          patternType="email"
          placeholder="you@example.com"
          required={true}
          style={{ ordered: [{ text: "primary" }] }}
        />
        <TextInput
          id="textInput2"
          _defaultValue=""
          formDataKey="firstName"
          label="First name"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="textInput3"
          _defaultValue=""
          formDataKey="lastName"
          label="Last name"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="textInput4"
          _defaultValue=""
          formDataKey="googleId"
          label="Google ID"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="textInput5"
          _defaultValue=""
          formDataKey="hashedPassword"
          label="Hashed password"
          placeholder="Enter value"
          required={true}
        />
        <DateTime
          id="dateTime1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="createdAt"
          iconBefore="bold/interface-calendar"
          label="Created at"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <DateTime
          id="dateTime2"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="updatedAt"
          iconBefore="bold/interface-calendar"
          label="Updated at"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <NumberInput
          id="numberInput1"
          _defaultValue={null}
          currency="USD"
          formDataKey="id"
          label="ID"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextArea
          id="textArea1"
          _defaultValue=""
          autoResize={true}
          formDataKey="googleToken"
          label="Google token"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <NumberInput
          id="numberInput2"
          _defaultValue={null}
          currency="USD"
          formDataKey="organizationId"
          label="Organization ID"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextInput
          id="textInput6"
          _defaultValue=""
          formDataKey="profilePhotoUrl"
          label="Profile photo URL"
          patternType="url"
          placeholder="retool.com"
          required={true}
          textBefore="https://"
        />
        <DateTime
          id="dateTime3"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="lastLoggedIn"
          iconBefore="bold/interface-calendar"
          label="Last logged in"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <Checkbox
          id="checkbox1"
          _defaultValue={false}
          formDataKey="enabled"
          label="Enabled"
        />
        <TextInput
          id="textInput7"
          _defaultValue=""
          formDataKey="resetPasswordToken"
          label="Reset password token"
          placeholder="Enter value"
          required={true}
        />
        <DateTime
          id="dateTime4"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="resetPasswordExpires"
          iconBefore="bold/interface-calendar"
          label="Reset password expires"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <TextInput
          id="textInput8"
          _defaultValue=""
          formDataKey="sid"
          label="Sid"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="textInput9"
          _defaultValue=""
          formDataKey="userName"
          label="User name"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="textInput10"
          _defaultValue=""
          formDataKey="twoFactorAuthSecret"
          label="Two factor auth secret"
          placeholder="Enter value"
          required={true}
        />
        <Checkbox
          id="checkbox2"
          _defaultValue={false}
          formDataKey="twoFactorAuthEnabled"
          label="Two factor auth enabled"
        />
        <DateTime
          id="dateTime5"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="lastActive"
          iconBefore="bold/interface-calendar"
          label="Last active"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <Checkbox
          id="checkbox3"
          _defaultValue={false}
          formDataKey="salesCTADismissed"
          label="Sales cta dismissed"
        />
        <Checkbox
          id="checkbox4"
          _defaultValue={false}
          formDataKey="tutorialCTADismissed"
          label="Tutorial cta dismissed"
        />
        <DateTime
          id="dateTime6"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="passwordExpiresAt"
          iconBefore="bold/interface-calendar"
          label="Password expires at"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="form1SubmitToUsers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <TextInput
      id="textInput11"
      _defaultValue=""
      formDataKey="twoFactorAuthSecret"
      label="Two factor auth secret"
      placeholder="Enter value"
      required={true}
    />
  </Frame>
</App>

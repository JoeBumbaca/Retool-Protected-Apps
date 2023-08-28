<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      primaryKeyColumnId="da2be"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="470c3"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="hashedPassword"
        label="Hashed password"
        placeholder="Enter value"
        position="center"
        size={474.546875}
      />
      <Column
        id="da2be"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.546875}
      />
      <Column
        id="6cd13"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        key="email"
        label="Email"
        position="center"
        size={200.359375}
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="2c2e4"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="firstName"
        label="First name"
        placeholder="Enter value"
        position="center"
        size={77.140625}
      />
      <Column
        id="51028"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="lastName"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={82.953125}
      />
      <Column
        id="1946e"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="profilePhotoUrl"
        label="Profile photo URL"
        placeholder="Enter value"
        position="center"
        size={116.6875}
      />
      <Column
        id="91437"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="googleId"
        label="Google ID"
        placeholder="Enter value"
        position="center"
        size={72.359375}
      />
      <Column
        id="a36a3"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="googleToken"
        label="Google token"
        placeholder="Enter value"
        position="center"
        size={93.140625}
      />
      <Column
        id="5a9d0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true }}
        key="organizationId"
        label="Organization ID"
        placeholder="Enter value"
        position="center"
        size={105.53125}
      />
      <Column
        id="7b231"
        alignment="left"
        format="datetime"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={154.03125}
      />
      <Column
        id="d7c5f"
        alignment="left"
        format="datetime"
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={154.03125}
      />
      <Column
        id="1accf"
        alignment="left"
        format="datetime"
        key="lastLoggedIn"
        label="Last logged in"
        placeholder="Enter value"
        position="center"
        size={153.125}
      />
      <Column
        id="8850e"
        alignment="left"
        format="boolean"
        key="enabled"
        label="Enabled"
        placeholder="Enter value"
        position="center"
        size={62.875}
      />
      <Column
        id="ac801"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="resetPasswordToken"
        label="Reset password token"
        placeholder="Enter value"
        position="center"
        size={321.484375}
      />
      <Column
        id="1d5da"
        alignment="left"
        format="datetime"
        key="resetPasswordExpires"
        label="Reset password expires"
        placeholder="Enter value"
        position="center"
        size={154.359375}
      />
      <Column
        id="26b38"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="sid"
        label="Sid"
        placeholder="Enter value"
        position="center"
        size={287.5}
      />
      <Column
        id="ffee1"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        key="userName"
        label="User name"
        position="center"
        size={198.484375}
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="2a3e5"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="twoFactorAuthSecret"
        label="Two factor auth secret"
        placeholder="Enter value"
        position="center"
        size={434.75}
      />
      <Column
        id="cb4eb"
        alignment="left"
        format="boolean"
        key="twoFactorAuthEnabled"
        label="Two factor auth enabled"
        placeholder="Enter value"
        position="center"
        size={156.890625}
      />
      <Column
        id="e2a6d"
        alignment="left"
        format="datetime"
        key="lastActive"
        label="Last active"
        placeholder="Enter value"
        position="center"
        size={154.03125}
      />
      <Column
        id="efa48"
        alignment="left"
        format="boolean"
        key="salesCTADismissed"
        label="Sales cta dismissed"
        placeholder="Enter value"
        position="center"
        size={130.890625}
      />
      <Column
        id="a146c"
        alignment="left"
        format="boolean"
        key="tutorialCTADismissed"
        label="Tutorial cta dismissed"
        placeholder="Enter value"
        position="center"
        size={143.390625}
      />
      <Column
        id="f8362"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="passwordExpiresAt"
        label="Password expires at"
        placeholder="Enter value"
        position="center"
        size={132.84375}
      />
      <Column
        id="dbea6"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="passwordlessToken"
        label="Passwordless token"
        placeholder="Enter value"
        position="center"
        size={132.046875}
      />
      <Column
        id="3808e"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="passwordlessTokenExpiresAt"
        label="Passwordless token expires at"
        placeholder="Enter value"
        position="center"
        size={192.015625}
      />
      <Column
        id="0bd06"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="userType"
        label="User type"
        placeholder="Select option"
        position="center"
        size={73.34375}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f094c"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="metadata"
        label="Metadata"
        placeholder="Enter value"
        position="center"
        size={1005}
      />
      <Column
        id="b8257"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="externalIdentifier"
        label="External identifier"
        placeholder="Enter value"
        position="center"
        size={119.046875}
      />
      <Column
        id="99e3e"
        alignment="left"
        cellTooltip="{{ item }}"
        format="string"
        key="githubId"
        label="Github ID"
        placeholder="Enter value"
        position="center"
        size={70.484375}
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</App>

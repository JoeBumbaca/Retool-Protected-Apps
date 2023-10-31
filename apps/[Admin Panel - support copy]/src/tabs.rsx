<Container
  id="tabs"
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
      id="tabs3"
      _defaultValue={null}
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabs"
      value="{{ self.values[0] }}"
    >
      <Option id="b82a2" value="Tab 1" />
      <Option id="49db3" value="Tab 2" />
      <Option id="881dd" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Token Setup" viewKey={0}>
    <TextInput
      id="tokenInput"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      disabled="true"
      label="Token"
      labelAlign="right"
      labelWidth="15"
      placeholder="No token found. Click to get token ->"
      required={true}
      value={'{{ access_token.value || "" }}'}
    />
    <Button
      id="stagingTokenButton"
      _disclosedFields={{ array: [] }}
      disabled=""
      style={{ ordered: [{ background: "hsl(141, 20%, 46%)" }] }}
      styleVariant="solid"
      submitTargetId=""
      text="Staging"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "https://authco.sightfull.com/authorize?client_id=fEsoMgJcscBjEjLjB5SpwnmIHZpdUvPs&response_type=token&response_mode=fragment&audience=https://api.sightfull.com/&scope=openid%20profile%20email&redirect_uri={{urlparams.href.split('/').slice(0,5).join('/')}}%3F_releaseVersion={{urlparams._releaseVersion}}",
            },
            {
              options: { ordered: [{ forceReload: false }, { newTab: false }] },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="productionTokenButton"
      _disclosedFields={{ array: [] }}
      disabled=""
      style={{ ordered: [{ background: "#c74438ff" }] }}
      styleVariant="solid"
      submitTargetId=""
      text="Production"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "https://auth.sightfull.com/authorize?client_id=SGmy3teE0hUrZc6Cl1Kkhk9rASjkGe4q&response_type=token&response_mode=fragment&audience=https://api.sightfull.com/&scope=openid%20profile%20email&redirect_uri={{urlparams.href.split('/').slice(0,5).join('/')}}%3F_releaseVersion={{urlparams._releaseVersion}}",
            },
            {
              options: { ordered: [{ forceReload: false }, { newTab: false }] },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <RadioGroup
      id="role"
      _data={[]}
      _defaultValue={null}
      data="{{ Object.keys(parseSightfullJwt(tokenInput.value)['tenant_roles']) }}"
      label="Role"
      labelPosition="top"
      labels=""
      required={true}
      value="staff"
      values="{{ (item) }}"
    >
      <Option id="9f2f9" disabled={false} hidden={false} value="Option 1" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="IsStaffRole"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <RadioGroup
      id="stamp"
      _data={[]}
      _defaultValue={null}
      data={
        '{{ parseSightfullJwt(tokenInput.value).stamps.filter(o=>o!="localhost") }}'
      }
      label="Stamp"
      labelPosition="top"
      labels=""
      required={true}
      value=""
      values="{{ (item) }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTenants"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <RadioGroup
      id="tenantIdPicker"
      _data={[]}
      _defaultValue={null}
      data={
        '{{ GetTenants.data.tenants.filter(x=>parseSightfullJwt(tokenInput.value).tenant_roles[role.value].includes(x.tid) || parseSightfullJwt(tokenInput.value).tenant_roles[role.value].includes("*")).map(o=>o.tid).filter((tid)=>!(tid&0x8000)) }}'
      }
      deprecatedLabels="{{ self.values.map(o=>`${GetTenants.data.tenants.filter(x=>x.tid==o)[0].name} 0x${o.toString(16)} (${o})`) }}"
      groupLayout="wrap"
      hideLabel={false}
      label="Tenant ID"
      labelPosition="top"
      labels="{{ self.deprecatedLabels[i] }}"
      labelWidth="25"
      required={true}
      value=""
      values="{{ (item) }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CurrentTenant"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ IsStaffRole.data}}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="TenantMetadata"
        type="datasource"
        waitMs="100"
        waitType="debounce"
      />
    </RadioGroup>
    <Modal
      id="newTenantModal"
      buttonText="New Tenant"
      closeOnOutsideClick={true}
      hidden={'{{role.value!="staff" || stamp.value==""}}'}
      modalHeightType="auto"
    >
      <Form
        id="newTenantForm"
        disableSubmit={
          '{{newTenantNameTextbox.value=="" || newTenantIDTextbox.value == ""}}'
        }
        heightType="fixed"
        hidden={null}
        hoistFetching={true}
        maintainSpaceWhenHidden={null}
        overflowType="hidden"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showInEditor={null}
      >
        <Body>
          <TextInput
            id="newTenantIDTextbox"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            label="Tenant ID"
            showClear={true}
            value="{{ (tenantIdPicker.values.slice(-1)[0]+2).toString()}}"
          />
          <Text
            id="text7"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            disableMarkdown={true}
            hidden={'{{newTenantIDTextbox.value==""}}'}
            horizontalAlign="center"
            value="{{`0x${parseInt(newTenantIDTextbox.value).toString(16)}`}}"
            verticalAlign="center"
          />
          <TextInput
            id="newTenantNameTextbox"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            label="Name"
            showClear={true}
          />
        </Body>
        <Footer>
          <Button
            id="formButton3"
            _disclosedFields={{ array: [] }}
            submit={true}
            submitTargetId="newTenantForm"
            text="Create new tenant"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="CreateNewTenant"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Button
      id="btnOpenSightfull"
      _disclosedFields={{ array: [] }}
      hidden={'{{stamp.value=="" || tenantIdPicker.value==""}}'}
      styleVariant="solid"
      text="Open Sightfull"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "https://latest.app.sightfull.com/#?_stamp={{stamp.value}}&_tenant={{tenantIdPicker.value}}",
            },
            { options: { ordered: [{ newTab: true }] } },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Alert
      id="alert1"
      description="Click one of the buttons above to get a token"
      events={[]}
      hidden={'{{ tokenInput.value != "" }}'}
      title="No token"
      type="warning"
    />
    <Alert
      id="alert2"
      description="Use the selectors above to select a tenant"
      events={[]}
      hidden={
        '{{ tokenInput.value == "" || (stamp.value != "" && role.value != "" && tenantIdPicker.value != "") }}'
      }
      maintainSpaceWhenHidden={false}
      showInEditor={false}
      title="No tenant selected"
    />
    <Alert
      id="alert4"
      description="Please ask for staff access role"
      events={[]}
      hidden={
        '{{ tokenInput.value == "" || (tokenInput.value != "" &&  Object.keys(parseSightfullJwt(tokenInput.value).tenant_roles).includes("staff"))}}\n'
      }
      title="No staff role"
      type="error"
    />
    <Alert
      id="alert3"
      description="You are all good to go! {{CurrentTenant.data.tenants_by_pk.name}}"
      events={[]}
      hidden={'{{ tokenInput.value == "" || CurrentTenant.data == null }}'}
      maintainSpaceWhenHidden={false}
      showInEditor={false}
      title="Great job"
      type="success"
    />
    <KeyValueMap
      id="keyValue1"
      data={'{\n  "a": 1,\n  "b": 2,\n  "c": 3\n}'}
      rows={["a", "b", "c"]}
      rowVisibility={{ ordered: [{ a: true }, { b: true }, { c: true }] }}
    />
  </View>
  <View id="1" label="Sherlock" viewKey={1}>
    <Include src="./tabs2.rsx" />
  </View>
  <View id="2" label="Jobs" viewKey={2}>
    <Include src="./JobsTabs.rsx" />
  </View>
  <View id="3" label="Feature Flags" viewKey={3}>
    <TableLegacy
      id="featureFlagsTable"
      _columns={["user_id", "key", "value"]}
      _columnVisibility={{
        ordered: [
          { created_at: false },
          { name: true },
          { sales: true },
          { tid: false },
          { user_id: true },
          { value: true },
          { updated_at: false },
          { id: true },
          { email: true },
          { features: true },
          { key: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Delete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "DeleteFeatureFlag" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: '{{ currentRow.user_id == "" }}' },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      checkboxRowSelect={false}
      columnAlignment={{
        ordered: [
          { value: "center" },
          { user_id: "left" },
          { key: "left" },
          { "Custom Column 1": "center" },
          { "Custom Column 2": "left" },
          { "Custom Column 3": "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { created_at: "" },
          { name: "" },
          { sales: "" },
          { tid: "" },
          { user_id: "" },
          { value: "" },
          { updated_at: "" },
          { id: "" },
          { email: "" },
          { features: "" },
          { key: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ value: true }, { user_id: true }, { key: true }],
      }}
      columnFormats={{
        ordered: [
          { user_id: "dropdown" },
          { key: "dropdown" },
          { value: "boolean" },
          { "Custom Column 1": "dropdown" },
          { "Custom Column 2": "dropdown" },
          { "Custom Column 3": "checkbox" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "User" },
          { "Custom Column 2": "Key" },
          { "Custom Column 3": "Value" },
        ],
      }}
      columnMappers={{
        ordered: [
          { user_id: "" },
          { "Custom Column 1": "{{ currentRow.user_id }}" },
          { "Custom Column 2": "{{ currentRow.key }}" },
          { "Custom Column 3": "{{ currentRow.value }}" },
        ],
      }}
      columnMappersRenderAsHTML={{ ordered: [{ "Custom Column 1": true }] }}
      columnRestrictedEditing={{
        ordered: [{ key: "" }, { user_id: "" }, { value: "" }],
      }}
      columns={["created_at", "tid", "user_id", "key", "updated_at", "value"]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            key: {
              ordered: [
                { dropdownValues: "{{ GetPotentialFeatureFlags.data}}" },
              ],
            },
          },
          {
            user_id: {
              ordered: [
                {
                  dropdownValues:
                    '{{ ["00000000-0000-0000-0000-000000000000"].concat(GetAllUsers.data.users.map(u => u.id)) }}',
                },
                {
                  dropdownLabels:
                    '{{ ["All users"].concat(GetAllUsers.data.users.map(u => `${u.first_name} ${u.last_name} (${u.email})`)) }}',
                },
              ],
            },
          },
          {
            "Custom Column 1": {
              ordered: [
                {
                  dropdownValues:
                    '{{ ["00000000-0000-0000-0000-000000000000"].concat(GetAllUsers.data.users.map(u => u.id)) }}',
                },
                {
                  dropdownLabels:
                    '{{ ["All users"].concat(GetAllUsers.data.users.map(u => `${u.first_name} ${u.last_name} (${u.email})`)) }}',
                },
              ],
            },
          },
          {
            "Custom Column 2": {
              ordered: [
                {
                  dropdownValues:
                    '["pulse.metrics.charts.showLegendInThumbnail", "pulse.metrics.charts.showTitleInThumbnail","pulse.metrics.executiveViewEnabled","pulse.metrics.executiveViewDefault","pulse.dataHygiene.enabled"]',
                },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { created_at: false },
          { name: true },
          { sales: true },
          { tid: false },
          { user_id: true },
          { value: true },
          { updated_at: false },
          { id: true },
          { email: true },
          { features: true },
          { key: true },
        ],
      }}
      columnWidths={[
        { object: { id: "user_id", value: 318.546875 } },
        { object: { id: "key", value: 609.0625 } },
      ]}
      customButtonName=""
      data={
        '{{ (GetFeatureFlags.data == null ||  GetFeatureFlags.data.features.length == 0) ? [{\n  "user_id": "",\n  "key": "Click here to create the first feature flag",\n  "value": null\n}] : GetFeatureFlags.data.features }}'
      }
      defaultSelectedRow="none"
      defaultSortByColumn="user_id"
      dynamicColumnSettings={
        '[\n  {\n    "name": "user_id",\n    "type": "dropdown"\n  },\n  {\n    "name": "key",\n    "type": "dropdown",\n  },\n  {\n    "name": "value",\n    "type": "checkbox"\n  }\n]'
      }
      events={[
        {
          ordered: [
            { event: "saveNew" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "UpsertFeatureFlag" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "UpsertFeatureFlag" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      freezeActionButtonColumns={true}
      pageSize={21}
      rowHeight="compact"
      saveChangesDisabled="{{ featureFlagsTable.recordUpdates.length > 1 }}"
      selectRowByDefault={false}
      showAddRowButton={true}
      showColumnBorders={true}
      showDownloadButton={false}
      useCompactMode={true}
    />
  </View>
  <View id="4" label="Data Hygiene" viewKey={4}>
    <TableLegacy
      id="table2"
      _columns={[
        "severity",
        "object_id",
        "object_type",
        "object_name",
        "dimension",
        "issue_group_name",
        "issue_extra_message",
        "object_current_value",
        "detection_status",
        "user_action",
      ]}
      _columnVisibility={{
        ordered: [
          { dimension: true },
          { user_action: true },
          { object_current_value: true },
          { object_name: true },
          { detection_status: true },
          { data_issues: true },
          { user_id: true },
          { value: true },
          { issue_group_name: true },
          { issue_extra_message: false },
          { object_type: true },
          { object_id: false },
          { features: true },
          { severity: true },
          { key: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      checkboxRowSelect={false}
      columnColors={{
        ordered: [
          { dimension: "" },
          { user_action: "" },
          { object_current_value: "" },
          { object_name: "" },
          { detection_status: "" },
          { data_issues: "" },
          { user_id: "" },
          { value: "" },
          { issue_group_name: "" },
          { issue_extra_message: "" },
          { object_type: "" },
          { object_id: "" },
          { features: "" },
          { severity: "" },
          { key: "" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnHeaderNames={{ ordered: [{ "Custom Column 1": "iouoiu" }] }}
      columns={[
        "severity",
        "object_id",
        "object_type",
        "object_name",
        "dimension",
        "issue_group_name",
        "issue_extra_message",
        "object_current_value",
        "detection_status",
        "user_action",
      ]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnVisibility={{
        ordered: [
          { dimension: true },
          { user_action: true },
          { object_current_value: true },
          { object_name: true },
          { detection_status: true },
          { data_issues: true },
          { user_id: true },
          { value: true },
          { issue_group_name: true },
          { issue_extra_message: false },
          { object_type: true },
          { object_id: false },
          { features: true },
          { severity: true },
          { key: true },
        ],
      }}
      columnWidths={[
        { object: { id: "severity", value: 71.359375 } },
        { object: { id: "object_type", value: 100.953125 } },
        { object: { id: "issue_group_name", value: 374.78125 } },
        { object: { id: "object_current_value", value: 136.015625 } },
        { object: { id: "detection_status", value: 113.875 } },
        { object: { id: "user_action", value: 94.78125 } },
        { object: { id: "object_name", value: 377.453125 } },
        { object: { id: "dimension", value: 124.78125 } },
      ]}
      customButtonName=""
      data="{{ GetAllDataHygieneIssues.data.data_issues }}"
      defaultSelectedRow="none"
      pageSize={19}
      rowHeight="compact"
      selectRowByDefault={false}
      showColumnBorders={true}
      useCompactMode={true}
    />
    <Button
      id="hygieneDeleteFixed"
      _disclosedFields={{ array: [] }}
      iconBefore="bold/interface-delete-bin-2"
      styleVariant="solid"
      submitTargetId=""
      text="Delete all Fixed issues"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="DeleteFixedHygieneIssues"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="5" label="Data Overrides" viewKey={5}>
    <TableLegacy
      id="DataOverridesTable"
      _columns={[
        "object_id",
        "dimension",
        "value",
        "comment",
        "last_modified_by",
        "edited_at",
        "status",
        "updated_at",
        "source_value",
      ]}
      _columnVisibility={{
        ordered: [
          { last_modified_by: true },
          { dimention: true },
          { dimension: true },
          { created_at: true },
          { name: true },
          { sales: true },
          { order: true },
          { value: true },
          { data_overrides: true },
          { dimenstion: true },
          { updated_at: true },
          { id: true },
          { object_id: true },
          { email: true },
          { workspaces: true },
          { comment: true },
        ],
      }}
      _disclosedFields={{ array: [] }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Delete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "DeleteDataOverride" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: '{{ currentRow.object_id == "" }}' },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      checkboxRowSelect={false}
      columnAlignment={{
        ordered: [
          { "Custom Column 1": "right" },
          { "Custom Column 2": "left" },
          { "Custom Column 4": "left" },
          { "Custom Column 6": "left" },
          { "Custom Column 3": "left" },
          { object_id: "left" },
          { dimension: "left" },
          { updated_at: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { last_modified_by: "" },
          { dimention: "" },
          { dimension: "" },
          { edited_at: "" },
          { created_at: "" },
          { name: "" },
          { sales: "" },
          { source_value: "" },
          { order: "" },
          { value: "" },
          { data_overrides: "" },
          { status: "" },
          { dimenstion: "" },
          { updated_at: "" },
          { id: "" },
          { object_id: "" },
          { email: "" },
          { workspaces: "" },
          { comment: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { last_modified_by: true },
          { dimension: true },
          { created_at: false },
          { value: true },
          { dimenstion: true },
          { "Custom Column 1": false },
          { "Custom Column 2": false },
          { updated_at: false },
          { "Custom Column 3": false },
          { "Custom Column 4": false },
          { "Custom Column 10": false },
          { "Custom Column 5": true },
          { "Custom Column 11": false },
          { "Custom Column 6": false },
          { object_id: true },
          { "Custom Column 12": false },
          { "Custom Column 7": false },
          { "Custom Column 13": false },
          { "Custom Column 8": false },
          { "Custom Column 14": false },
          { "Custom Column 9": false },
          { comment: true },
        ],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "default" },
          { "Custom Column 2": "default" },
          { "Custom Column 4": "default" },
          { "Custom Column 6": "default" },
          { "Custom Column 3": "default" },
          { object_id: "TextDataCell" },
          { dimension: "TextDataCell" },
          { updated_at: "DateTimeDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "object_id" },
          { "Custom Column 2": "dimension" },
          { "Custom Column 3": "value" },
          { "Custom Column 4": "comment" },
          { "Custom Column 5": "created_at" },
          { "Custom Column 6": "updated_at" },
          { "Custom Column 7": "last_modified_by" },
          { "Custom Column 8": "wefwfwe" },
        ],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 8": "" },
          { "Custom Column 3": "{{!IsDataEditorRole.data}}" },
        ],
      }}
      columnRestrictedEditing={{
        ordered: [
          { "Custom Column 1": "{{!IsDataEditorRole.data}}" },
          { "Custom Column 2": "{{!IsDataEditorRole.data}}" },
          { "Custom Column 4": "{{!IsDataEditorRole.data}}" },
          { object_id: "" },
        ],
      }}
      columns={[
        "object_id",
        "dimension",
        "value",
        "created_at",
        "updated_at",
        "comment",
        "last_modified_by",
      ]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnTypeProperties={{
        ordered: [
          {
            "Custom Column 1": {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
          { "Custom Column 2": { ordered: [] } },
          { "Custom Column 6": { ordered: [] } },
          { object_id: { ordered: [] } },
          { dimension: { ordered: [] } },
          {
            updated_at: {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { last_modified_by: true },
          { dimention: true },
          { dimension: true },
          { created_at: true },
          { name: true },
          { sales: true },
          { order: true },
          { value: true },
          { data_overrides: true },
          { dimenstion: true },
          { updated_at: true },
          { id: true },
          { object_id: true },
          { email: true },
          { workspaces: true },
          { comment: true },
        ],
      }}
      columnWidths={[
        { object: { id: "last_modified_by", value: 325.3125 } },
        { object: { id: "created_at", value: 208.8125 } },
        { object: { id: "comment", value: 230.21875 } },
        { object: { id: "object_id", value: 149.515625 } },
        { object: { id: "value", value: 91 } },
        { object: { id: "dimension", value: 132.96875 } },
        { object: { id: "updated_at", value: 144.953125 } },
      ]}
      customButtonName=""
      data={
        '{{ GetAllDataOverrides.data.data_overrides.length == 0 ? [{"object_id": "", "dimension": "", "value": "", "comment": "", "created_at": "", "updated_at": "", "last_modified_by": ""}] : GetAllDataOverrides?.data?.data_overrides }}'
      }
      defaultSelectedRow="none"
      defaultSortByColumn="object_id"
      downloadRawData={true}
      emptyMessage={
        '{{IsDataViewerRole.data ? "No rows found": "⛔️ ❗️Chosen role can\'t access  tenant\'s data ❗️⛔️"}}'
      }
      events={[
        {
          ordered: [
            { event: "saveNew" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "InsertDataOverride" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "UpdateDataOverrides" },
            { targetId: null },
            { params: { ordered: [{ src: "DataOverridesTable.changeSet" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      freezeActionButtonColumns={true}
      pageSize={17}
      rowHeight="compact"
      saveChangesDisabled="false"
      selectRowByDefault={false}
      showAddRowButton={true}
      showDownloadButton={false}
      useCompactMode={true}
    />
    <Modal id="ImportOverridesFromCsvModal" buttonText="Upload CSV">
      <FileDropzone
        id="OverridesCsvDropZone"
        _disclosedFields={{ array: [] }}
        iconBefore="bold/programming-browser-search"
        label=""
        labelPosition="top"
        placeholder="Drop Overrides CSV"
      />
      <Button
        id="DataOverridesUploadCsvButton"
        _disclosedFields={{ array: [] }}
        styleVariant="solid"
        text="Upload Csv"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="ImportOverridesFromCsv"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Modal>
    <Button
      id="DownloadCsvButton"
      _disclosedFields={{ array: [] }}
      loading="false"
      styleVariant="solid"
      submitTargetId=""
      text="Download CSV"
    >
      <Event
        enabled=""
        event="click"
        method="exportData"
        params={{
          ordered: [
            { fileType: "csv" },
            { data: "{{DataOverridesToCsv.value}}" },
            { fileName: "data_overrides" },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Modal
      id="DataOverrideHistoryModal"
      buttonText="History"
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "GetDataOverrideHistory" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      modalWidth="75%"
    >
      <TableLegacy
        id="DataOverrideHistoryTable"
        _compatibilityMode={false}
        columnColors={{
          ordered: [
            { last_modified_by: "" },
            { dimension: "" },
            { data_overrides_history: "" },
            { created_at: "" },
            { value: "" },
            { data_overrides: "" },
            { status: "" },
            { updated_at: "" },
            { object_id: "" },
            { comment: "" },
          ],
        }}
        customButtonName=""
        data="{{GetDataOverrideHistory.data.data_overrides_history}}"
        doubleClickToEdit={true}
      />
    </Modal>
  </View>
  <View id="6" label="Workspaces" viewKey={6}>
    <TableLegacy
      id="workspacesTable"
      _columns={[
        "order",
        "id",
        "name",
        "collection_type",
        "is_dashboard",
        "Dashboard?",
      ]}
      _columnVisibility={{
        ordered: [
          { id: true },
          { order: true },
          { name: true },
          { "Dashboard?": true },
          { is_dashboard: true },
          { collection_type: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Export as JSON" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "ExportWorkspace" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Delete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "DeleteWorkspace" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      checkboxRowSelect={false}
      columnColors={{
        ordered: [
          { id: "" },
          { order: "" },
          { name: "" },
          { "Dashboard?": "" },
          { is_dashboard: "" },
          { collection_type: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ order: true }, { name: true }, { is_dashboard: false }],
      }}
      columnRestrictedEditing={{
        ordered: [
          { order: "{{!IsDataEditorRole.data}}" },
          { name: "{{!IsDataEditorRole.data}}" },
        ],
      }}
      columns={[
        "order",
        "id",
        "name",
        "collection_type",
        "is_dashboard",
        "Dashboard?",
      ]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnVisibility={{
        ordered: [
          { id: true },
          { order: true },
          { name: true },
          { "Dashboard?": true },
          { is_dashboard: true },
          { collection_type: true },
        ],
      }}
      columnWidths={[
        { object: { id: "order", value: 166.890625 } },
        { object: { id: "id", value: 330.0625 } },
        { object: { id: "__retool__action_list", value: 240.171875 } },
        { object: { id: "name", value: 511.53125 } },
      ]}
      customButtonName=""
      data="{{ GetAllWorkspaces.data }}"
      defaultSelectedRow="none"
      defaultSortByColumn="order"
      emptyMessage={
        '{{IsDataViewerRole.data ? "No rows found": "⛔️ ❗️Chosen role can\'t access  tenant\'s data ❗️⛔️"}}'
      }
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "UpsertWorkspace" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      pageSize={20}
      rowHeight="compact"
      saveChangesDisabled="{{ workspacesTable.recordUpdates.length != 1 }}"
      selectRowByDefault={false}
      showColumnBorders={true}
      useCompactMode={true}
    />
    <Modal id="importWorkspace" buttonText="Import" closeOnOutsideClick={true}>
      <Include src="./container1.rsx" />
    </Modal>
    <Modal
      id="modal1"
      buttonText="Edit Signals"
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "GetAllSignalsInWorkspace" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
            {
              eventParams: {
                ordered: [{ onlyRespondToUserInteraction: true }],
              },
            },
          ],
        },
      ]}
      modalWidth="60%"
    >
      <TableLegacy
        id="signalsInWorkspaceTable"
        _columns={[
          "order",
          "feed_id",
          "signal",
          "resolved",
          "signal_id",
          "reason",
        ]}
        _columnVisibility={{
          ordered: [
            { reason: false },
            { signal: true },
            { feed_signals: true },
            { name: true },
            { order: true },
            { signal_id: false },
            { resolved: true },
            { id: true },
            { feed_id: false },
            { workspaces: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        checkboxRowSelect={false}
        columnAlignment={{
          ordered: [
            { resolved: "left" },
            { signal: "left" },
            { order: "left" },
          ],
        }}
        columnColors={{
          ordered: [
            { reason: "" },
            { signal: "" },
            { feed_signals: "" },
            { name: "" },
            { order: "" },
            { signal_id: "" },
            { resolved: "" },
            { id: "" },
            { feed_id: "" },
            { workspaces: "" },
          ],
        }}
        columnEditable={{ ordered: [{ order: true }] }}
        columnFormats={{
          ordered: [
            { resolved: "CheckboxDataCell" },
            { signal: "string" },
            { order: "NumberDataCell" },
          ],
        }}
        columnFrozenAlignments={{ ordered: [{ order: "left" }] }}
        columnHeaderNames={{
          ordered: [
            { resolved: "Resolved" },
            { signal: "Signal" },
            { order: "Order" },
          ],
        }}
        columnMappers={{
          ordered: [
            { signal: "{{ self.message }}" },
            { resolved: '{{ self ? "✅" : "❌" }}' },
          ],
        }}
        columnMappersRenderAsHTML={{ ordered: [{ signal: false }] }}
        columns={[
          "order",
          "feed_id",
          "signal",
          "resolved",
          "signal_id",
          "reason",
        ]}
        columnSummaryTypes={{ ordered: [] }}
        columnSummaryValues={{ ordered: [] }}
        columnTypeProperties={{
          ordered: [{ order: { ordered: [{ showSeparators: false }] } }],
        }}
        columnVisibility={{
          ordered: [
            { reason: false },
            { signal: true },
            { feed_signals: true },
            { name: true },
            { order: true },
            { signal_id: false },
            { resolved: true },
            { id: true },
            { feed_id: false },
            { workspaces: true },
          ],
        }}
        columnWidths={[
          { object: { id: "order", value: 277.84375 } },
          { object: { id: "signal", value: 664.328125 } },
        ]}
        customButtonName=""
        data="{{ GetAllSignalsInWorkspace.data.feeds_by_pk.feed_signals }}"
        disableSorting={{ ordered: [{ signal: false }] }}
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "UpsertFeedSignal" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        pageSize={7}
        showColumnBorders={true}
      />
    </Modal>
  </View>
  <View id="7" label="Signals" viewKey={7}>
    <TableLegacy
      id="signalsTable"
      _columns={[
        "id",
        "author",
        "created_at",
        "updated_at",
        "edited_at",
        "state",
        "message",
        "attachment",
        "Custom Column 1",
        "insight_type",
        "insight_id",
        "feed_signals",
      ]}
      _columnVisibility={{
        ordered: [
          { insight_type: true },
          { insight_id: true },
          { attachment: true },
          { message: true },
          { created_at: true },
          { feed_signals: false },
          { author: true },
          { name: true },
          { order: true },
          { state: true },
          { "Custom Column 1": true },
          { updated_at: true },
          { id: true },
          { feed: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Delete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "DeleteSignal" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: '{{ role.value != "superuser"}}' },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Unpin all" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "UnpinSignalFromEverywhere" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: '{{ role.value != "superuser"}}' },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Publish" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "PublishSignal" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={["Custom Column 1"]}
      checkboxRowSelect={false}
      columnColors={{
        ordered: [
          { insight_type: "" },
          { insight_id: "" },
          { attachment: "" },
          { message: "" },
          { edited_at: "" },
          { created_at: "" },
          { feed_signals: "" },
          { author: "" },
          { name: "" },
          { order: "" },
          { author_id: "" },
          { state: "" },
          { "Custom Column 1": "" },
          { updated_at: "" },
          { id: "" },
          { feed: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { order: true },
          { name: true },
          { attachment: true },
          { id: false },
          { "Custom Column 2": false },
          { author_id: true },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { name: "Workspace" },
          { "Custom Column 1": "Workspaces" },
          { "Custom Column 2": "arch" },
        ],
      }}
      columnMappers={{
        ordered: [
          { author: "{{self.email}}" },
          {
            "Custom Column 1":
              "{{ currentRow.feed_signals.filter((a) => a.feed.workspace != null).map((b) => `${b.feed.workspace.name}${b.resolved ? ' *' : ''}`).join(', ') }}",
          },
          { "Custom Column 2": "{{ currentRow.feed_signals[0].resolved}}" },
        ],
      }}
      columnRestrictedEditing={{
        ordered: [{ attachment: "{{!IsDataEditorRole.data}}" }],
      }}
      columns={[
        "id",
        "author",
        "created_at",
        "state",
        "message",
        "attachment",
        "Custom Column 1",
        "insight_type",
        "insight_id",
        "feed_signals",
        "updated_at",
      ]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnVisibility={{
        ordered: [
          { insight_type: true },
          { insight_id: true },
          { attachment: true },
          { message: true },
          { created_at: true },
          { feed_signals: false },
          { author: true },
          { name: true },
          { order: true },
          { state: true },
          { "Custom Column 1": true },
          { updated_at: true },
          { id: true },
          { feed: true },
        ],
      }}
      columnWidths={[
        { object: { id: "order", value: 166.890625 } },
        { object: { id: "created_at", value: 100.21875 } },
        { object: { id: "message", value: 200.234375 } },
        { object: { id: "attachment", value: 195.125 } },
        { object: { id: "insight_type", value: 154.671875 } },
        { object: { id: "author", value: 177.34375 } },
        { object: { id: "id", value: 74.0625 } },
        { object: { id: "__retool__action_list", value: 232 } },
        { object: { id: "state", value: 145.015625 } },
      ]}
      customButtonName=""
      data="{{ GetAllSignals.data.signals }}"
      defaultSelectedRow="none"
      defaultSortByColumn="order"
      emptyMessage={
        '{{IsDataViewerRole.data ? "No rows found": "⛔️ ❗️Chosen role can\'t access  tenant\'s data ❗️⛔️"}}'
      }
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "UpsertSignal" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      pageSize={23}
      rowHeight="compact"
      saveChangesDisabled="{{ signalsTable.recordUpdates.length != 1 }}"
      selectRowByDefault={false}
      showColumnBorders={true}
      useCompactMode={true}
    />
  </View>
  <View id="8" label="Tenant Settings" viewKey={8}>
    <Include src="./TenantSettingsTabs.rsx" />
  </View>
  <View id="9" label="GraphQL (WIP)" viewKey={9}>
    <CustomComponent
      id="customComponent1"
      allowPopups={true}
      allowPopupsToEscapeSandbox={true}
      allowSameOrigin={true}
      allowTopNavigation={true}
      iframeCode={
        '<html>\n  <head>\n    <title>Simple GraphiQL Example</title>\n    <link href="https://unpkg.com/graphiql/graphiql.min.css" rel="stylesheet" />\n  </head>\n  <body style="margin: 0;">\n    <div id="graphiql" style="height: 100vh;"></div>\n\n    <script\n      crossorigin\n      src="https://unpkg.com/react/umd/react.production.min.js"\n    ></script>\n    <script\n      crossorigin\n      src="https://unpkg.com/react-dom/umd/react-dom.production.min.js"\n    ></script>\n    <script\n      crossorigin\n      src="https://unpkg.com/graphiql/graphiql.min.js"\n    ></script>\n\n    <script>\n      \n\t\t\twindow.Retool.subscribe(function(model) {\n        const fetcher = GraphiQL.createFetcher({ url: model.graphqlServer, headers: { "authorization": model.authorization, "x-role": model.role, "x-tenant-id": model.tenant} });\n\n        ReactDOM.render(\n          React.createElement(GraphiQL, { fetcher: fetcher }),\n          document.getElementById(\'graphiql\'),\n        );      \n      })\n\n    </script>\n  </body>\n</html>\n'
      }
      model={
        '{\n  "graphqlServer": "https://api.{{stamp.value}}.sightfull.com/v1/graphql",\n  "authorization": "Bearer {{tokenInput.value}}",\n  "role": {{role.value}},\n  "tenant": {{tenantIdPicker.value}}\n}'
      }
    />
  </View>
  <View id="10" label="Feeds" viewKey={10}>
    <Select
      id="FeedUserSelector"
      _defaultValue={null}
      allowDeselect={true}
      data="{{ GetAllUsers.data.users  }}"
      disabled="{{!IsDataViewerRole.data}}"
      disabledByIndex=""
      label="User"
      labels={
        '{{`${item["first_name"]} ${item["last_name"]}(${item["email"]})`}}'
      }
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.id}}"
    />
    <TableLegacy
      id="FeedSignalsTable"
      _columns={[
        "signal_id",
        "author",
        "feed_id",
        "signal",
        "order",
        "reason",
        "message",
        "created_at",
        "created_at_feed",
        "updated_at",
        "updated_at_feed",
        "attachment",
        "resolved",
        "id",
        "author_id",
      ]}
      _columnSummaryTypes={{
        ordered: [{ resolved: "checkedCount" }, { created_at: "" }],
      }}
      _columnSummaryValues={{ ordered: [{ resolved: "" }, { created_at: "" }] }}
      _columnVisibility={{
        ordered: [
          { sub: true },
          { insight_type: false },
          { insight_id: false },
          { l_pin: true },
          { c: true },
          { attachment: true },
          { reason: true },
          { updated_at_n: true },
          { updated_at_feed: true },
          { first_pin: true },
          { message: true },
          { updated_at_: true },
          { signal: false },
          { created_at: true },
          { feed_signals: true },
          { crea: true },
          { author: true },
          { updated_at_pin: true },
          { order: false },
          { author_id: false },
          { 0: true },
          { state: false },
          { signal_id: true },
          { created_at_feed: true },
          { last_name: true },
          { updated_at: true },
          { resolved: true },
          { first_name: true },
          { id: false },
          { feed_id: false },
          { email: true },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Unpin" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "UnpinSignalFromFeed" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnAlignment={{
        ordered: [{ resolved: "center" }, { created_at: "left" }],
      }}
      columnColors={{
        ordered: [
          { sub: "" },
          { insight_type: "" },
          { insight_id: "" },
          { l_pin: "" },
          { c: "" },
          { attachment: "" },
          { reason: "" },
          { updated_at_n: "" },
          { updated_at_feed: "" },
          { first_pin: "" },
          { message: "" },
          { updated_at_: "" },
          { signal: "" },
          { created_at: "" },
          { feed_signals: "" },
          { crea: "" },
          { author: "" },
          { updated_at_pin: "" },
          { order: "" },
          { author_id: "" },
          { 0: "" },
          { state: "" },
          { signal_id: "" },
          { created_at_feed: "" },
          { last_name: "" },
          { updated_at: "" },
          { resolved: "" },
          { first_name: "" },
          { id: "" },
          { feed_id: "" },
          { email: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ "Custom Column 1": false }, { id: false }],
      }}
      columnFormats={{
        ordered: [{ resolved: "CheckboxDataCell" }, { created_at: "default" }],
      }}
      columnHeaderNames={{
        ordered: [
          { created_at: "created_at" },
          { updated_at: "updated_at" },
          { "Custom Column 1": "message" },
        ],
      }}
      columnMappers={{
        ordered: [
          { author: "{{self.email}}" },
          { reason: "{{self instanceof Array ? self.at(-1) : self }}" },
          { "Custom Column 1": "{{ self }}" },
        ],
      }}
      columns={[
        "signal_id",
        "author",
        "feed_id",
        "signal",
        "order",
        "reason",
        "message",
        "created_at",
        "created_at_feed",
        "updated_at",
        "updated_at_feed",
        "attachment",
        "resolved",
        "id",
        "author_id",
      ]}
      columnTypeProperties={{
        ordered: [
          { resolved: { ordered: [{ falseDisplayValue: "empty" }] } },
          {
            created_at: {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { sub: true },
          { insight_type: false },
          { insight_id: false },
          { l_pin: true },
          { c: true },
          { attachment: true },
          { reason: true },
          { updated_at_n: true },
          { updated_at_feed: true },
          { first_pin: true },
          { message: true },
          { updated_at_: true },
          { signal: false },
          { created_at: true },
          { feed_signals: true },
          { crea: true },
          { author: true },
          { updated_at_pin: true },
          { order: false },
          { author_id: false },
          { 0: true },
          { state: false },
          { signal_id: true },
          { created_at_feed: true },
          { last_name: true },
          { updated_at: true },
          { resolved: true },
          { first_name: true },
          { id: false },
          { feed_id: false },
          { email: true },
        ],
      }}
      columnWidths={[
        { object: { id: "created_at_feed", value: 149 } },
        { object: { id: "updated_at", value: 166 } },
        { object: { id: "updated_at_feed", value: 155.75 } },
        { object: { id: "message", value: 280.703125 } },
        { object: { id: "created_at", value: 295 } },
      ]}
      customButtonName=""
      data="{{ GetAllFeedSignalsByUser.data.feeds_by_pk.feed_signals.map((o) => {
  o.updated_at_feed = o.updated_at
  o.created_at_feed = o.created_at
  Object.assign(o, o.signal)
  return o
}) }}"
      defaultSortByColumn="updated_at_feed"
      defaultSortDescending={true}
      doubleClickToEdit={true}
      emptyMessage={
        '{{IsDataViewerRole.data ? "No rows found": "⛔️ ❗️Chosen role can\'t access  tenant\'s data ❗️⛔️"}}'
      }
      pageSize="10"
      sortByRawValue={{ ordered: [{ updated_at: false }] }}
    />
  </View>
  <View
    id="905ef"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Users"
    viewKey="Users"
  >
    <TableLegacy
      id="usersTable"
      _columns={[
        "first_name",
        "id",
        "last_name",
        "email",
        "sub",
        "Custom Column 1",
        "Custom Column 2",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { sub: "checkedCount" },
          { "Custom Column 1": "checkedCount" },
          { "Custom Column 2": "" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { sub: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
        ],
      }}
      _columnVisibility={{
        ordered: [{ id: false }, { internal_metadata: false }],
      }}
      _compatibilityMode={false}
      _disclosedFields={{ array: [] }}
      actionButtonPosition="right"
      calculatedColumns={["Custom Column 1", "Custom Column 2"]}
      columnAlignment={{
        ordered: [
          { sub: "center" },
          { "Custom Column 1": "center" },
          { "Custom Column 2": "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { sub: "" },
          { users: "" },
          { internal_metadata: "" },
          { last_name: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
          { first_name: "" },
          { id: "" },
          { email: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ "Custom Column 1": true }, { "Custom Column 2": true }],
      }}
      columnFormats={{
        ordered: [
          { sub: "CheckboxDataCell" },
          { "Custom Column 1": "CheckboxDataCell" },
          { "Custom Column 2": "TextDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { sub: "has logged in" },
          { "Custom Column 1": "Onboarded?" },
          { "Custom Column 2": "state" },
        ],
      }}
      columnMappers={{
        ordered: [
          { sub: "{{ self ? true : false}}" },
          {
            "Custom Column 1":
              "{{ currentRow?.internal_metadata?.isOnboarded}}",
          },
          { "Custom Column 2": "{{ currentRow?.internal_metadata?.state}}" },
        ],
      }}
      columnRestrictedEditing={{
        ordered: [{ "Custom Column 1": "" }, { "Custom Column 2": "" }],
      }}
      columnTypeProperties={{
        ordered: [
          { sub: { ordered: [{ falseDisplayValue: "empty" }] } },
          { "Custom Column 1": { ordered: [{ falseDisplayValue: "x" }] } },
          { "Custom Column 2": { ordered: [] } },
        ],
      }}
      columnWidths={[
        { object: { id: "sub", value: 345.671875 } },
        { object: { id: "Custom Column 1", value: 156.46875 } },
      ]}
      customButtonName=""
      data="{{GetUsersForCS.data.users}}"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "UpdateUserMetadataForAll" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      freezeActionButtonColumns={true}
      rowHeight="compact"
      showBoxShadow={false}
    />
  </View>
  <View
    id="63eca"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Metrics"
    viewKey="Metrics"
  >
    <TableLegacy
      id="MetricTable"
      _columns={[
        "name",
        "flavor",
        "category",
        "order",
        "display_name",
        "export_config",
        "should_metric_run",
        "should_run_override",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { export_config: "" },
          { should_run: "checkedCount" },
          { should_run_override: "checkedCount" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { export_config: "" },
          { should_run: "" },
          { should_run_override: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [{ should_run: true }, { should_metric_run: true }],
      }}
      _compatibilityMode={false}
      _disclosedFields={{ array: [] }}
      actionButtonPosition="right"
      columnAlignment={{
        ordered: [
          { export_config: "left" },
          { should_run: "center" },
          { should_run_override: "center" },
        ],
      }}
      columnColors={{
        ordered: [
          { name: "" },
          { flavor: "" },
          { category: "" },
          { order: "" },
          { display_name: "" },
          { export_config: "" },
          { should_run_override: "" },
          { should_metric_run: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { export_config: true },
          { order: false },
          { category: true },
          { should_run: true },
          { should_run_override: true },
        ],
      }}
      columnFormats={{
        ordered: [
          { export_config: "JsonDataCell" },
          { should_run: "CheckboxDataCell" },
          { should_run_override: "CheckboxDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [{ "Custom Column 1": "should_metric_run" }],
      }}
      columnMappers={{
        ordered: [
          { should_run: "" },
          { "Custom Column 1": "{{self}}" },
          { should_run_override: "" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { export_config: { ordered: [] } },
          { should_run: { ordered: [{ falseDisplayValue: "empty" }] } },
          { should_run_override: { ordered: [{ falseDisplayValue: "-" }] } },
        ],
      }}
      columnWidths={[{ object: { id: "display_name", value: 301.25 } }]}
      customButtonName=""
      data="{{GetMetrics.data.metrics}}"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "EditManyMetrics" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      showBoxShadow={false}
    />
  </View>
  <Event
    enabled=""
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="ArgoList"
    type="datasource"
    waitMs="200"
    waitType="debounce"
  />
  <Event
    enabled=""
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="GetChosenDB2GraphConfig"
    type="datasource"
    waitMs="300"
    waitType="debounce"
  />
  <Event
    enabled=""
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="CurrentTenant"
    type="datasource"
    waitMs="200"
    waitType="debounce"
  />
  <Event
    enabled=""
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="GetJobs"
    type="datasource"
    waitMs="200"
    waitType="debounce"
  />
</Container>

<Container
  id="tabs2"
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
      id="tabs4"
      _defaultValue={null}
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabs2"
      value="{{ self.values[0] }}"
    >
      <Option id="2f57e" value="Tab 1" />
      <Option id="f5dfa" value="Tab 2" />
      <Option id="953a5" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Detections" viewKey={0}>
    <TableLegacy
      id="detectionsTable"
      _columns={[
        "display_name",
        "id",
        "config",
        "execution_options",
        "require_oversight",
        "schedule",
        "state",
        "type",
        "timeout_seconds",
        "job.status",
        "job.started_at",
        "job.progress",
        "job.last_successful_started_at",
        "job.last_successful_finished_at",
      ]}
      _columnVisibility={{
        ordered: [
          { timeout_seconds: false },
          { config: true },
          { "job.started_at": true },
          { "job.status": true },
          { display_name: true },
          { require_oversight: false },
          { state: true },
          { "job.last_successful_finished_at": false },
          { execution_options: true },
          { schedule: true },
          { type: true },
          { id: true },
          { job: true },
          { "job.progress": false },
          { "job.last_successful_started_at": false },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Delete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "DeleteSelectedDetection" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Reset State" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "ResetDetectionState" },
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
      columnAlignment={{
        ordered: [{ require_oversight: "center" }, { config: "left" }],
      }}
      columnColors={{
        ordered: [
          { timeout_seconds: "" },
          { config: "" },
          { "job.started_at": "" },
          { "job.status": "" },
          { display_name: "" },
          { require_oversight: "" },
          { state: "" },
          { "job.last_successful_finished_at": "" },
          { "Custom Column 1": "" },
          { execution_options: "" },
          { schedule: "" },
          { type: "" },
          { id: "" },
          { job: "" },
          { "job.progress": "" },
          { "job.last_successful_started_at": "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { display_name: true },
          { id: false },
          { execution_options: true },
          { require_oversight: true },
          { schedule: true },
          { type: true },
          { config: true },
          { state: false },
        ],
      }}
      columnFormats={{
        ordered: [{ require_oversight: "boolean" }, { config: "default" }],
      }}
      columnMappers={{ ordered: [{ config: "" }] }}
      columns={[
        "display_name",
        "id",
        "config",
        "execution_options",
        "require_oversight",
        "schedule",
        "state",
        "type",
        "timeout_seconds",
        "job.status",
        "job.started_at",
        "job.progress",
        "job.last_successful_started_at",
        "job.last_successful_finished_at",
      ]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnVisibility={{
        ordered: [
          { timeout_seconds: false },
          { config: true },
          { "job.started_at": true },
          { "job.status": true },
          { display_name: true },
          { require_oversight: false },
          { state: true },
          { "job.last_successful_finished_at": false },
          { execution_options: false },
          { schedule: true },
          { type: true },
          { id: true },
          { job: true },
          { "job.progress": false },
          { "job.last_successful_started_at": false },
        ],
      }}
      columnWidths={[
        { object: { id: "Custom Column 1", value: 122 } },
        { object: { id: "execution_options", value: 178.56533813476562 } },
        { object: { id: "job.last_successful_started_at", value: 84 } },
        { object: { id: "display_name", value: 267 } },
        { object: { id: "id", value: 232 } },
        { object: { id: "schedule", value: 110 } },
        { object: { id: "state", value: 75.296875 } },
        { object: { id: "job.started_at", value: 90 } },
        { object: { id: "config", value: 140 } },
      ]}
      customButtonName=""
      data="{{ GetAllDetections.data }}"
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "UpsertDetectionSaveChanges" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      freezeActionButtonColumns={true}
      pageSize={14}
      rowHeight="compact"
      saveChangesDisabled="{{ detectionsTable.recordUpdates.length > 1 }}"
      showAddRowButton={true}
      showColumnBorders={true}
      showDownloadButton={false}
      useCompactMode={true}
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      iconAfter="question"
      styleVariant="solid"
      submitTargetId=""
      text="Explain Cron"
      tooltipText="Explain Cron for: {{detectionsTable.selectedRow.data.schedule}}"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            { options: { ordered: [{ newTab: true }] } },
            {
              url: "https://crontab.guru/#{{detectionsTable.selectedRow.data.schedule}}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Modal
      id="newDetectionModal"
      buttonText="Presets"
      closeOnOutsideClick={true}
      modalHeight="500"
      modalWidth="50%"
    >
      <TableLegacy
        id="detectionPresetTable"
        _columns={[
          "display_name",
          "id",
          "execution_options",
          "require_oversight",
          "schedule",
          "type",
          "state",
          "config",
        ]}
        _columnVisibility={{
          ordered: [
            { dispalo: true },
            { config: true },
            { d: true },
            { execu: true },
            { require: true },
            { execution_: true },
            { require_oversought: true },
            { execution_o: true },
            { display_name: true },
            { require_overso: true },
            { name: true },
            { dispaly: true },
            { sales: true },
            { sche: true },
            { sa: true },
            { require_over: true },
            { tid: true },
            { require_oversight: true },
            { state: true },
            { exe: true },
            { execution_optio: true },
            { ex: true },
            { dispaly_: true },
            { re: true },
            { execution_optiobns: true },
            { execution_options: true },
            { schedule: true },
            { sch: true },
            { type: true },
            { id: true },
            { email: true },
            { dispaly_name: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        allowMultiRowSelect={true}
        applyDynamicSettingsToColumnOrder={false}
        checkboxRowSelect={false}
        columnAlignment={{ ordered: [{ require_oversight: "center" }] }}
        columnColors={{
          ordered: [
            { dispalo: "" },
            { config: "" },
            { d: "" },
            { execu: "" },
            { require: "" },
            { execution_: "" },
            { require_oversought: "" },
            { execution_o: "" },
            { display_name: "" },
            { require_overso: "" },
            { name: "" },
            { dispaly: "" },
            { sales: "" },
            { sche: "" },
            { sa: "" },
            { require_over: "" },
            { tid: "" },
            { require_oversight: "" },
            { state: "" },
            { exe: "" },
            { execution_optio: "" },
            { ex: "" },
            { dispaly_: "" },
            { re: "" },
            { execution_optiobns: "" },
            { execution_options: "" },
            { schedule: "" },
            { sch: "" },
            { type: "" },
            { id: "" },
            { email: "" },
            { dispaly_name: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { id: false },
            { execution_options: false },
            { require_oversight: false },
            { schedule: false },
            { type: false },
            { display_name: false },
            { state: false },
          ],
        }}
        columnFrozenAlignments={{ ordered: [{ require_oversight: null }] }}
        columns={[
          "display_name",
          "id",
          "execution_options",
          "require_oversight",
          "schedule",
          "type",
          "state",
          "config",
        ]}
        columnSummaryTypes={{ ordered: [] }}
        columnSummaryValues={{ ordered: [] }}
        columnVisibility={{
          ordered: [
            { dispalo: true },
            { config: true },
            { d: true },
            { execu: true },
            { require: true },
            { execution_: true },
            { require_oversought: true },
            { execution_o: true },
            { display_name: true },
            { require_overso: true },
            { name: true },
            { dispaly: true },
            { sales: true },
            { sche: true },
            { sa: true },
            { require_over: true },
            { tid: true },
            { require_oversight: true },
            { state: true },
            { exe: true },
            { execution_optio: true },
            { ex: true },
            { dispaly_: true },
            { re: true },
            { execution_optiobns: true },
            { execution_options: true },
            { schedule: true },
            { sch: true },
            { type: true },
            { id: true },
            { email: true },
            { dispaly_name: true },
          ],
        }}
        columnWidths={[
          { object: { id: "dispaly_name", value: 168.59375 } },
          { object: { id: "require_oversight", value: 63 } },
          { object: { id: "state", value: 38 } },
          { object: { id: "type", value: 84 } },
          { object: { id: "id", value: 170.09375 } },
          { object: { id: "display_name", value: 209 } },
          { object: { id: "execution_options", value: 130.703125 } },
        ]}
        customButtonName=""
        data="{{ GetAllDetectionTemplates.data }}"
        defaultSelectedRow="none"
        disableSorting={{ ordered: [{ execution_options: false }] }}
        pageSize={11}
        rowHeight="compact"
        selectRowByDefault={false}
        showColumnBorders={true}
        showDownloadButton={false}
        useCompactMode={true}
      />
      <Button
        id="button2"
        _disclosedFields={{ array: [] }}
        disabled="{{!detectionPresetTable.selectedRow.data}}"
        styleVariant="solid"
        submitTargetId=""
        text="Submit selected detections"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="UpsertDetectionsPreset"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Modal>
  </View>
  <View id="1" label="Subscription Management" viewKey={1}>
    <TableLegacy
      id="usersSubscriptionsTable"
      _columns={[
        "first_name",
        "last_name",
        "id",
        "email",
        "sub",
        "is_subscribed_all",
        "tags",
        "name",
        "subscribed_to",
        "subscribe_to_new_insights",
        "subscribed_to_tags",
      ]}
      _columnVisibility={{
        ordered: [
          { subscribed_to: true },
          { sub: true },
          { subscribe_to_new_insights: true },
          { name: true },
          { is_subscribed_all: true },
          { last_name: false },
          { subscribed_to_tags: true },
          { tags: false },
          { first_name: false },
          { id: false },
          { email: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            {
              actionButtonText:
                '{{usersSubscriptionsTable.data[i].subscribe_to_new_insights ? "Remove Auto-Subscribe" : "Auto-Subscribe" }}',
            },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "ToggleAutoSubscribe" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Subscribe To All" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "SubscribeToAllTags" },
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
      columnAlignment={{
        ordered: [
          { is_subscribed_all: "center" },
          { first_name: "left" },
          { last_name: "left" },
          { email: "left" },
          { sub: "left" },
          { "Custom Column 1": "left" },
          { subscribed_to_tags: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { subscribed_to: "" },
          { sub: "" },
          { subscribe_to_new_insights: "" },
          { name: "" },
          { is_subscribed_all: "" },
          { last_name: "" },
          { subscribed_to_tags: "" },
          { tags: "" },
          { first_name: "" },
          { id: "" },
          { email: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ "Custom Column 1": false }, { subscribed_to_tags: true }],
      }}
      columnFormats={{
        ordered: [
          { is_subscribed_all: "boolean" },
          { first_name: "string" },
          { last_name: "string" },
          { email: "string" },
          { sub: "string" },
          { "Custom Column 1": "string" },
          { subscribed_to_tags: "default" },
        ],
      }}
      columnHeaderNames={{ ordered: [{ "Custom Column 1": "Full name" }] }}
      columnMappers={{
        ordered: [
          {
            "Custom Column 1":
              "{{ currentRow.first_name }} {{ currentRow.last_name }}",
          },
        ],
      }}
      columns={[
        "first_name",
        "last_name",
        "id",
        "email",
        "sub",
        "is_subscribed_all",
        "tags",
        "name",
        "subscribed_to",
        "subscribe_to_new_insights",
        "subscribed_to_tags",
      ]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnTypeProperties={{
        ordered: [{ subscribed_to_tags: { ordered: [] } }],
      }}
      columnVisibility={{
        ordered: [
          { subscribed_to: true },
          { sub: true },
          { subscribe_to_new_insights: true },
          { name: true },
          { is_subscribed_all: true },
          { last_name: false },
          { subscribed_to_tags: true },
          { tags: false },
          { first_name: false },
          { id: false },
          { email: true },
        ],
      }}
      columnWidths={[
        { object: { id: "first_name", value: 133.359375 } },
        { object: { id: "last_name", value: 120.875 } },
        { object: { id: "sub", value: 288.171875 } },
        { object: { id: "is_subscribed_all", value: 175.703125 } },
        { object: { id: "name", value: 121.03125 } },
        { object: { id: "email", value: 168.203125 } },
        { object: { id: "subscribe_to_new_insights", value: 44.203125 } },
        { object: { id: "subscribed_to_tags", value: 300 } },
      ]}
      customButtonName=""
      data="{{ UsersWithTags.data }}"
      defaultSortByColumn="sub"
      defaultSortDescending={true}
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "UpsertSubscriptionSaveChanges" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      freezeActionButtonColumns={true}
      pageSize={18}
      rowHeight="compact"
      showColumnBorders={true}
      useCompactMode={true}
    />
  </View>
  <View id="2" label="Insights" viewKey={2}>
    <TableLegacy
      id="InsightTypesTable"
      _columns={[
        "display_name",
        "auto_approve_default",
        "auto_approve_override",
        "auto_approve",
        "visible_default",
        "visible_override",
        "visible",
        "id",
        "tags",
      ]}
      _columnVisibility={{
        ordered: [
          { display_name: true },
          { subscribe_to_new_insights: true },
          { name: true },
          { sales: true },
          { auto_approve_override: true },
          { visible: true },
          { insight_types: true },
          { visible_default: true },
          { subscribed_to_tags: true },
          { tags: false },
          { visible_override: true },
          { id: true },
          { email: true },
          { auto_approve: true },
          { auto_approve_default: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            {
              actionButtonText:
                '{{InsightTypesTable.data[i].visible ? "Hide" : "Make Visible"}}',
            },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "ToggleHiddenOverride" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            {
              actionButtonText:
                '{{InsightTypesTable.data[i].auto_approve ? "Don\'t Auto-approve" : "Make Auto-Approve"}}',
            },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "ToggleAutoApprove" },
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
          { display_name: "" },
          { subscribe_to_new_insights: "" },
          { name: "" },
          { sales: "" },
          { auto_approve_override: "" },
          { visible: "green" },
          { insight_types: "" },
          { visible_default: "" },
          { subscribed_to_tags: "" },
          { tags: "" },
          { visible_override: "" },
          { id: "" },
          { email: "" },
          { auto_approve: "green\n" },
          { auto_approve_default: "" },
        ],
      }}
      columns={[
        "display_name",
        "auto_approve_default",
        "auto_approve_override",
        "auto_approve",
        "visible_default",
        "visible_override",
        "visible",
        "id",
        "tags",
      ]}
      columnVisibility={{
        ordered: [
          { display_name: true },
          { subscribe_to_new_insights: true },
          { name: true },
          { sales: true },
          { auto_approve_override: true },
          { visible: true },
          { insight_types: true },
          { visible_default: true },
          { subscribed_to_tags: true },
          { tags: false },
          { visible_override: true },
          { id: true },
          { email: true },
          { auto_approve: true },
          { auto_approve_default: true },
        ],
      }}
      columnWidths={[
        { object: { id: "display_name", value: 365.4375 } },
        { object: { id: "auto_approve_override", value: 51.5 } },
        { object: { id: "auto_approve", value: 64.890625 } },
        { object: { id: "visible_override", value: 49.640625 } },
        { object: { id: "auto_approve_default", value: 70 } },
        { object: { id: "visible", value: 107 } },
        { object: { id: "visible_default", value: 89.640625 } },
      ]}
      customButtonName=""
      data="{{GetAllInsights.data}}"
      pageSize={10}
    />
  </View>
  <View
    id="9ec1e"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Emails"
  >
    <TableLegacy
      id="usersEmailTable"
      _columns={[
        "first_name",
        "last_name",
        "email",
        "sub",
        "tags",
        "id",
        "name",
        "subscribe_to_new_insights",
        "subscribed_to_tags",
      ]}
      _columnVisibility={{
        ordered: [
          { subscribed_to: true },
          { sub: true },
          { subscribe_to_new_insights: false },
          { name: true },
          { is_subscribed_all: true },
          { last_name: false },
          { subscribed_to_tags: false },
          { tags: false },
          { first_name: false },
          { id: true },
          { email: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Welcome Email" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "SendWelcomeEmail" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Trial Expires Soon Email" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "SendTrialExpiresSoon" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                "{{CurrentTenant.data.tenants_by_pk.trial_end == null}}",
            },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      checkboxRowSelect={false}
      columnAlignment={{
        ordered: [
          { is_subscribed_all: "center" },
          { first_name: "left" },
          { last_name: "left" },
          { email: "left" },
          { sub: "left" },
          { "Custom Column 1": "left" },
          { subscribed_to_tags: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { subscribed_to: "" },
          { sub: "" },
          { subscribe_to_new_insights: "" },
          { name: "" },
          { is_subscribed_all: "" },
          { last_name: "" },
          { subscribed_to_tags: "" },
          { tags: "" },
          { first_name: "" },
          { id: "" },
          { email: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { "Custom Column 1": false },
          { subscribed_to_tags: true },
          { email: true },
          { name: true },
        ],
      }}
      columnFormats={{
        ordered: [
          { is_subscribed_all: "boolean" },
          { first_name: "string" },
          { last_name: "string" },
          { email: "string" },
          { sub: "string" },
          { "Custom Column 1": "string" },
          { subscribed_to_tags: "default" },
        ],
      }}
      columnHeaderNames={{ ordered: [{ "Custom Column 1": "Full name" }] }}
      columnMappers={{
        ordered: [
          {
            "Custom Column 1":
              "{{ currentRow.first_name }} {{ currentRow.last_name }}",
          },
        ],
      }}
      columns={[
        "first_name",
        "last_name",
        "id",
        "email",
        "sub",
        "is_subscribed_all",
        "tags",
        "name",
        "subscribed_to",
        "subscribe_to_new_insights",
        "subscribed_to_tags",
      ]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnTypeProperties={{
        ordered: [{ subscribed_to_tags: { ordered: [] } }],
      }}
      columnVisibility={{
        ordered: [
          { subscribed_to: true },
          { sub: true },
          { subscribe_to_new_insights: true },
          { name: true },
          { is_subscribed_all: true },
          { last_name: false },
          { subscribed_to_tags: true },
          { tags: false },
          { first_name: false },
          { id: false },
          { email: true },
        ],
      }}
      columnWidths={[
        { object: { id: "first_name", value: 133.359375 } },
        { object: { id: "last_name", value: 120.875 } },
        { object: { id: "sub", value: 288.171875 } },
        { object: { id: "is_subscribed_all", value: 175.703125 } },
        { object: { id: "email", value: 168.203125 } },
        { object: { id: "subscribe_to_new_insights", value: 44.203125 } },
        { object: { id: "subscribed_to_tags", value: 234 } },
        { object: { id: "id", value: 128.796875 } },
        { object: { id: "name", value: 194.03125 } },
      ]}
      customButtonName=""
      data="{{ UsersWithTags.data }}"
      defaultSortByColumn="sub"
      defaultSortDescending={true}
      events={[
        {
          ordered: [
            { event: "saveNew" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "CreateUser" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      freezeActionButtonColumns={true}
      pageSize={18}
      rowHeight="compact"
      showAddRowButton={true}
      showColumnBorders={true}
      useCompactMode={true}
    />
  </View>
</Container>

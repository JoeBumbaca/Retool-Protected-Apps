<Container
  id="JobsTabs"
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
      id="tabs6"
      _defaultValue={null}
      itemMode="static"
      navigateContainer={true}
      targetContainerId="JobsTabs"
      value="{{ self.values[0] }}"
    >
      <Option id="e0b83" value="Tab 1" />
      <Option id="bade3" value="Tab 2" />
      <Option id="c4176" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Status" viewKey={0}>
    <TableLegacy
      id="jobsStatusTable"
      _columns={[
        "status",
        "statusPretty",
        "name",
        "started_at",
        "progress",
        "Custom Column 1",
        "updated_at",
        "last_successful_finished_at",
        "tid",
        "version",
        "created_at",
        "config",
        "last_successful_started_at",
      ]}
      _columnSummaryTypes={{ ordered: [{ "Custom Column 2": "" }] }}
      _columnSummaryValues={{ ordered: [{ "Custom Column 2": "" }] }}
      _columnVisibility={{
        ordered: [
          { config: true },
          { server: true },
          { last_successful_finished_at: false },
          { "apigw-requestid": true },
          { statusPretty: true },
          { created_at: false },
          { name: true },
          { progress: true },
          { last_successful_started_at: true },
          { "content-type": true },
          { date: true },
          { tid: false },
          { started_at: true },
          { status: false },
          { jobs: true },
          { "Custom Column 1": false },
          { updated_at: true },
          { version: false },
          { "content-length": true },
          { connection: true },
        ],
      }}
      _disclosedFields={{ array: [] }}
      _unfilteredSelectedIndex=""
      actionButtonColumnName="Incremental Actions"
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Reset" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "ResetJobLastSuccessful" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                '{{!currentRow.name.startsWith("DB2Graph-")}}',
            },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Back 2 Weeks" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "ResetJobLastSuccessfull2W" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                '{{!currentRow.name.startsWith("DB2Graph-") && currentRow.name != "Tailor"}}',
            },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={["Custom Column 1"]}
      checkboxRowSelect={false}
      columnAlignment={{
        ordered: [
          { progress: "center" },
          { status: "center" },
          { statusPretty: "center" },
          { "Custom Column 2": "left" },
          { updated_at: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { config: "" },
          { server: "" },
          { last_successful_finished_at: "" },
          { "apigw-requestid": "" },
          {
            statusPretty:
              "{{ currentRow.status == 'started' ? 'yellow' : currentRow.status == 'finished' ? 'green' : 'red' }}",
          },
          { created_at: "" },
          { name: "" },
          { progress: "" },
          { last_successful_started_at: "" },
          { "content-type": "" },
          { date: "" },
          { tid: "" },
          { started_at: "" },
          {
            status:
              "{{ currentRow.status == 'started' ? 'yellow' : currentRow.status == 'finished' ? 'green' : 'red' }}",
          },
          { jobs: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
          { updated_at: "" },
          { version: "" },
          { "content-length": "" },
          { connection: "" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 2": false }] }}
      columnFormats={{
        ordered: [
          { progress: "percent" },
          { "Custom Column 2": "TextDataCell" },
          { updated_at: "string" },
        ],
      }}
      columnFrozenAlignments={{
        ordered: [{ statusPretty: null }, { name: null }],
      }}
      columnHeaderNames={{
        ordered: [
          { last_successful_finished_at: "Last Success (finish)" },
          { statusPretty: '" "' },
          { name: "Name" },
          { progress: "Progress" },
          { last_successful_started_at: "Last Success (started)" },
          { started_at: "Started" },
          { status: "Status" },
          { "Custom Column 1": "Duration" },
          { "Custom Column 2": "Config" },
          { updated_at: "Duration" },
        ],
      }}
      columnMappers={{
        ordered: [
          { status: '""' },
          { progress: "{{ self / 100.0 }}" },
          { statusPretty: '{{self || "❓"}}' },
          {
            "Custom Column 1":
              "{{ elapsedTime(currentRow.started_at, currentRow.updated_at)}}",
          },
          {
            last_successful_finished_at:
              '{{currentRow.last_successful_finished_at == null ? "" : elapsedTime(currentRow.last_successful_finished_at, new Date()) + " ago"}}',
          },
          {
            started_at:
              '{{currentRow.started_at == null ? "" : elapsedTime(currentRow.started_at, new Date()) + " ago"}}',
          },
          { "Custom Column 2": "{{JSON.stringify(currentRow.config) }}" },
          {
            updated_at:
              "{{ elapsedTime(currentRow.started_at, currentRow.updated_at)}}",
          },
        ],
      }}
      columnMappersRenderAsHTML={{
        ordered: [{ status: true }, { statusPretty: true }],
      }}
      columns={[
        "status",
        "statusPretty",
        "name",
        "started_at",
        "progress",
        "Custom Column 1",
        "updated_at",
        "last_successful_started_at",
        "last_successful_finished_at",
        "tid",
        "version",
        "created_at",
        "config",
      ]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnTypeProperties={{
        ordered: [{ "Custom Column 2": { ordered: [] } }],
      }}
      columnVisibility={{
        ordered: [
          { config: true },
          { server: true },
          { last_successful_finished_at: false },
          { "apigw-requestid": true },
          { statusPretty: true },
          { created_at: false },
          { name: true },
          { progress: true },
          { last_successful_started_at: false },
          { "content-type": true },
          { date: true },
          { tid: false },
          { started_at: true },
          { status: false },
          { jobs: true },
          { "Custom Column 1": false },
          { updated_at: true },
          { version: false },
          { "content-length": true },
          { connection: true },
        ],
      }}
      columnWidths={[
        { object: { id: "last_successful_started_at", value: 101 } },
        { object: { id: "name", value: 150.09375 } },
        { object: { id: "statusPretty", value: 47.53125 } },
        { object: { id: "progress", value: 78.34375 } },
        { object: { id: "started_at", value: 181.03125 } },
        { object: { id: "config", value: 221.828125 } },
      ]}
      customButtonName=""
      data="{{ GetJobs.data }}"
      defaultSortByColumn="updated_at"
      defaultSortDescending={true}
      disableSorting={{ ordered: [{ "Custom Column 2": true }] }}
      events={[]}
      freezeActionButtonColumns={true}
      pageSize={18}
      rowHeight="compact"
      showColumnBorders={true}
      showDownloadButton={false}
      sortMappedValue={{ ordered: [{ started_at: true }] }}
      useCompactMode={true}
    />
    <Timeline
      id="timeline1"
      isGrouped={true}
      items="{{ GetJobsTimeline.data.map((x) => x.name) }}"
      sortedDesc={true}
      timestamps="{{ GetJobsTimeline.data.map((x) => x.time) }}"
    />
  </View>
  <View id="1" label="Argo" viewKey={1}>
    <TableLegacy
      id="argoTable"
      _columns={[
        "Custom Column 1",
        "Custom Column 2",
        "Custom Column 3",
        "Custom Column 4",
        "Custom Column 6",
        "Custom Column 5",
        "status",
        "spec",
        "metadata",
      ]}
      _columnsWithLegacyBackgroundColor={{ set: ["Custom Column 2"] }}
      _columnVisibility={{
        ordered: [
          { name: true },
          { sales: true },
          { metadata: false },
          { status: false },
          { "Custom Column 1": true },
          { "Custom Column 2": true },
          { "Custom Column 3": true },
          { "Custom Column 4": true },
          { "Custom Column 5": true },
          { id: true },
          { "Custom Column 6": false },
          { spec: false },
          { email: true },
        ],
      }}
      _compatibilityMode={false}
      _disclosedFields={{ array: [] }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Terminate" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "ArgoTerminate" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled: '{{currentRow.status.phase != "Running"}}',
            },
          ],
        },
        {
          ordered: [
            { actionButtonText: "Coralogix" },
            { actionButtonType: "openExternalUrl" },
            { actionButtonQuery: "" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            {
              actionButtonUrl:
                'https://sightfull.app.coralogix.us/#/query-new/logs?query=(kubernetes.labels.workflows_argoproj_io%5C/workflow:(%22{{argoTable.selectedRow.data.metadata.name}}%22))%20AND%20NOT%20kubernetes.labels.app:"rabbitmq"%20%20AND%20(kubernetes.container_name:"main" OR kubernetes.container_name:"init")&viewName=Argo%20view&time=from:{{argoTable.selectedRow.data.status.startedAt}},to:{{argoTable.selectedRow.data.status.finishedAt ? new Date(new Date(argoTable.selectedRow.data.status.finishedAt).getTime() + 5*60*1000).toISOString() : "now" }}&page=0',
            },
            { actionButtonNewWindow: true },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={[
        "Custom Column 1",
        "Custom Column 2",
        "Custom Column 3",
        "Custom Column 4",
        "Custom Column 5",
        "Custom Column 6",
      ]}
      checkboxRowSelect={false}
      columnAlignment={{
        ordered: [
          { "Custom Column 3": "center" },
          { "Custom Column 4": "center" },
          { "Custom Column 1": "left" },
          { "Custom Column 2": "center" },
          { "Custom Column 5": "center" },
          { "Custom Column 6": "center" },
        ],
      }}
      columnColors={{
        ordered: [
          { 11: "" },
          { 22: "" },
          { 33: "" },
          { 12: "" },
          { 23: "" },
          { 34: "" },
          { 13: "" },
          { 24: "" },
          { 35: "" },
          { 14: "" },
          { 25: "" },
          { 36: "" },
          { 15: "" },
          { 26: "" },
          { 37: "" },
          { 16: "" },
          { 27: "" },
          { 38: "" },
          { 17: "" },
          { 28: "" },
          { 39: "" },
          { 18: "" },
          { 29: "" },
          { 19: "" },
          { name: "" },
          { sales: "" },
          { metadata: "" },
          { 0: "" },
          { 1: "" },
          { 2: "" },
          { status: "" },
          { 3: "" },
          { 4: "" },
          { 5: "" },
          { 6: "" },
          { "Custom Column 1": "" },
          { 7: "" },
          {
            "Custom Column 2":
              "{{ currentRow.status.phase == 'Running' ? 'yellow' : currentRow.status.phase == 'Succeeded' ? 'green' : 'red' }}",
          },
          { 8: "" },
          { "Custom Column 3": "" },
          { 9: "" },
          { "Custom Column 4": "" },
          { "Custom Column 5": "" },
          { id: "" },
          { "Custom Column 6": "" },
          { spec: "" },
          { 40: "" },
          { email: "" },
          { 30: "" },
          { 41: "" },
          { 20: "" },
          { 31: "" },
          { 42: "" },
          { 10: "" },
          { 21: "" },
          { 32: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 3": "DateTimeDataCell" },
          { "Custom Column 4": "DateTimeDataCell" },
          { "Custom Column 6": "TextDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "Name" },
          { "Custom Column 2": "Status" },
          { "Custom Column 3": "Started at" },
          { "Custom Column 4": "Finished at" },
          { "Custom Column 5": "Duration" },
          { "Custom Column 6": "Progress" },
        ],
      }}
      columnMappers={{
        ordered: [
          {
            "Custom Column 1":
              "{{currentRow.metadata.name.replace('argovisor-etl-generated-tenant-', '')}}",
          },
          { "Custom Column 2": "{{currentRow.status.phase}}" },
          { "Custom Column 3": "{{currentRow.status.startedAt }}" },
          { "Custom Column 4": "{{currentRow.status.finishedAt}}" },
          {
            "Custom Column 5":
              "{{ elapsedTime(currentRow.status.startedAt, currentRow.status.finishedAt ) }}",
          },
          { "Custom Column 6": "{{ currentRow.status.progress }}" },
        ],
      }}
      columns={[
        "Custom Column 1",
        "Custom Column 2",
        "Custom Column 3",
        "Custom Column 4",
        "Custom Column 6",
        "Custom Column 5",
        "status",
        "spec",
        "metadata",
      ]}
      columnSummaryTypes={{ ordered: [] }}
      columnSummaryValues={{ ordered: [] }}
      columnTypeProperties={{
        ordered: [
          {
            "Custom Column 3": {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
          {
            "Custom Column 4": {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
          { "Custom Column 6": { ordered: [] } },
        ],
      }}
      columnVisibility={{
        ordered: [
          { name: true },
          { sales: true },
          { metadata: false },
          { status: false },
          { "Custom Column 1": true },
          { "Custom Column 2": true },
          { "Custom Column 3": true },
          { "Custom Column 4": true },
          { "Custom Column 5": true },
          { id: true },
          { "Custom Column 6": false },
          { spec: false },
          { email: true },
        ],
      }}
      columnWidths={[
        { object: { id: "Custom Column 5", value: 205.984375 } },
        { object: { id: "Custom Column 1", value: 247.40625 } },
      ]}
      customButtonName=""
      data="{{[...ArgoList?.data?.argo_list?.workflows, ... TinyTenantArgoList?.data?.argo_list?.workflows]}}"
      defaultSelectedRow="none"
      defaultSortByColumn="Custom Column 3"
      defaultSortDescending={true}
      freezeActionButtonColumns={true}
      pageSize="10"
      selectRowByDefault={false}
      showColumnBorders={true}
      sortByRawValue={{ ordered: [{ "Custom Column 3": false }] }}
      sortMappedValue={{ ordered: [{ "Custom Column 3": true }] }}
      useCompactMode={true}
    />
    <Modal
      id="newWorkflowModal"
      _disclosedFields={{ array: ["border-color", "accent-background"] }}
      buttonText="Run ETL"
      closeOnOutsideClick={true}
      events={[]}
      modalHeightType="auto"
      modalWidth="50%"
      style={{
        ordered: [
          { "accent-background": "#3c92dc" },
          { "border-color": "#3c92dc" },
        ],
      }}
    >
      <Form
        id="JobRunnerForm"
        disabled=""
        disableSubmit="{{!IsStaffRole.data}}"
        heightType="fixed"
        hidden={null}
        hoistFetching={true}
        loading="{{ ArgoRun.isFetching }}"
        maintainSpaceWhenHidden={null}
        overflowType="hidden"
        requireValidation={true}
        showBody={true}
        showFooter={true}
        showInEditor={null}
      >
        <Body>
          <SegmentedControl
            id="stepModeSwitch"
            _data={[]}
            _defaultValue={null}
            data="['From', 'Step']"
            deprecatedLabels=""
            hideLabel={true}
            iconPositionByIndex={null}
            label=""
            labels="{{ ['Run from', 'Run step'][i] }}"
            required={true}
            value="From"
            values="{{ item }}"
          />
          <Container
            id="runSpecificContainer"
            disabled=""
            heightType="fixed"
            hidden={null}
            hoistFetching={true}
            maintainSpaceWhenHidden={null}
            overflowType="hidden"
            selectedView="View 1"
            showBody={true}
            showHeader={true}
            showInEditor={null}
            style={{ ordered: [{ headerBackground: "#ededed" }] }}
          >
            <Header>
              <Text
                id="containerTitle2"
                _defaultValue=""
                _disclosedFields={{ array: [] }}
                value={
                  '<div style="text-transform: uppercase; font-weight: 500;">Run specific metrics / objects</div>'
                }
                verticalAlign="center"
              />
            </Header>
            <View id="" viewKey="View 1" />
            <Body>
              <RadioGroup
                id="specificObjectsTo"
                _data={[]}
                _defaultValue={null}
                data="[{{undefined}}, 'db2graph', 'babelfish', 'tailor']"
                deprecatedLabels=""
                disabledByIndex="{{ self.disabledValues.includes(item) }}"
                disabledValues={
                  '{{stepModeSwitch.value == "Step" ? _.without([\'db2graph\', \'babelfish\', \'tailor\'], stepSelector.value) : \nstepSelector.value == "babelfish" ? ["db2graph"] : stepSelector.value== "tailor" ? ["db2graph", "babelfish"] : stepSelector.value == "validator" ? ["db2graph", "babelfish", "tailor"] :[]}}'
                }
                label="Type of specific objects"
                labelPosition="top"
                labels="{{ ['None', 'Db2graph', 'Babelfish','Tailor'][i] }}"
                tooltipByIndex={
                  '{{i == 1 ? "DB2G will run non-incrementally on these objects, but it won\'t collect grabage" : ""}}'
                }
                value="{{undefined}}"
                values="{{ item }}"
              />
              <TextArea
                id="specificObjectNames"
                _defaultValue=""
                _disclosedFields={{ array: [] }}
                customValidation={
                  '{{ self.value.split(/\\r?\\n/).every((line) => RegExp(/^(?=.{3,60}$)\\*? ?\\w+( \\w+)* ?\\*?$/g).test(line)) ? "" : "Invalid char" }}'
                }
                disabled="{{ specificObjectsTo.value == undefined }}"
                label="Specific object names"
                labelPosition="top"
                minLines="4"
                placeholder={
                  'List of specific objects{{"\\n"}}Separated by new lines'
                }
                required="{{ specificObjectsTo.value != undefined }}"
              />
            </Body>
          </Container>
          <Listbox
            id="stepSelector"
            _data={[]}
            _defaultValue={null}
            circularImages={false}
            data="['tablefish','db2graph', 'babelfish', 'tailor','cacher', 'seeder', 'validator']"
            deprecatedLabels=""
            disabled=""
            label=""
            labelPosition="top"
            labels="{{ ['Tablefish','DB2Graph', 'Babelfish', 'Tailor', 'Cacher','GlobalFiltersSeeder','Validator'][i] }}"
            required={true}
            showSelectionIndicator={true}
            value="{{stepSelector.data[1]}}"
            values="{{ item }}"
          />
          <Modal
            id="JobRunnerAdvanedModal"
            buttonText="Advanced"
            closeOnOutsideClick={true}
            modalHeightType="auto"
          >
            <Form
              id="JobRunAdvancedForm"
              heightType="fixed"
              hidden={null}
              hoistFetching={true}
              maintainSpaceWhenHidden={null}
              overflowType="hidden"
              requireValidation={true}
              showBody={true}
              showInEditor={null}
            >
              <Body>
                <TextInput
                  id="OverrideSchemaRevision"
                  _defaultValue=""
                  _disclosedFields={{ array: [] }}
                  label="Override Schema Revision"
                  labelWidth="50"
                  pattern="^(feature|task|fix)?\/?[A-Za-z0-9-]{3,120}$"
                  patternType="regex"
                  placeholder="Enter git branch name"
                />
                <Text
                  id="text8"
                  _defaultValue=""
                  _disclosedFields={{ array: [] }}
                  horizontalAlign="center"
                  value="**Override Image tag**"
                  verticalAlign="center"
                />
                <TextInput
                  id="RunDb2graphOverrideImageTag"
                  _defaultValue=""
                  _disclosedFields={{ array: [] }}
                  disabled=""
                  label="db2graph"
                  labelWidth="40"
                  maxLength=""
                  minLength=""
                  pattern="^(latest)|(sha-[a-f0-9]{7})$"
                  patternType="regex"
                  placeholder="sha-x | latest"
                  showClear={true}
                />
                <TextInput
                  id="RunBabelfishOverrideImageTag"
                  _defaultValue=""
                  _disclosedFields={{ array: [] }}
                  disabled=""
                  label="babelfish"
                  labelWidth="40"
                  maxLength=""
                  minLength=""
                  pattern="^(latest)|(sha-[a-f0-9]{7})$"
                  patternType="regex"
                  placeholder="sha-x | latest"
                  showClear={true}
                />
                <TextInput
                  id="RunTailorOverrideImageTag"
                  _defaultValue=""
                  _disclosedFields={{ array: [] }}
                  disabled=""
                  label="tailor"
                  labelWidth="40"
                  maxLength=""
                  minLength=""
                  pattern="^(latest)|(sha-[a-f0-9]{7})$"
                  patternType="regex"
                  placeholder="sha-x | latest"
                  showClear={true}
                />
                <TextInput
                  id="RunValidatorOverrideImageTag"
                  _defaultValue=""
                  _disclosedFields={{ array: [] }}
                  disabled=""
                  label="validator"
                  labelWidth="40"
                  maxLength=""
                  minLength=""
                  pattern="^(latest)|(sha-[a-f0-9]{7})$"
                  patternType="regex"
                  placeholder="sha-x | latest"
                  showClear={true}
                />
              </Body>
              <Footer>
                <Button
                  id="formButton8"
                  _disclosedFields={{ array: [] }}
                  submit={true}
                  submitTargetId="JobRunAdvancedForm"
                  text="Save"
                />
              </Footer>
            </Form>
          </Modal>
          <Text
            id="text6"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            horizontalAlign="center"
            value="#### {{ ArgoRun.data.argoRun.msg }}"
            verticalAlign="center"
          />
          <Checkbox
            id="runTinyTenantCheckbox"
            _disclosedFields={{ array: [] }}
            label="Run Tiny Tenant"
          />
        </Body>
        <Footer>
          <Button
            id="formButton2"
            _disclosedFields={{ array: [] }}
            submit={true}
            submitTargetId="JobRunnerForm"
            text="Run"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="ArgoRun"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Button
      id="runMetricTester"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Run Metric Tester"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="RunMetricTester"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="runHermesButton"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Run Hermes"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="RunHermes"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="runUseratorButton"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Run Userator"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="RunUserator"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button4"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Run Sherlock"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="RunSherlock"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="clearCacheButton"
      _disclosedFields={{ array: ["tooltipText"] }}
      styleVariant="solid"
      text="Clear Cache"
      tooltipText="Clear cache to see updated metrics, done by changing last_successfull_run_ts (HACK)"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="PartialTailorSetLastSuccesfullRunTsToNow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <Event
    enabled=""
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="ArgoList"
    type="datasource"
    waitMs="30"
    waitType="debounce"
  />
  <Event
    enabled=""
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="GetJobs"
    type="datasource"
    waitMs="30"
    waitType="debounce"
  />
</Container>

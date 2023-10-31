<Container
  id="TenantSettingsTabs"
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
      id="settingsTabs"
      _defaultValue={null}
      disabled=""
      itemMode="static"
      navigateContainer={true}
      targetContainerId="TenantSettingsTabs"
      value="{{ self.values[0] }}"
    >
      <Option id="07ca4" value="Tab 1" />
      <Option id="8a08d" value="Tab 2" />
      <Option id="82ad5" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Tenant" viewKey={0}>
    <Form
      id="TenantSettingsForm"
      disabled=""
      disableSubmit=""
      heightType="fixed"
      hidden={null}
      hoistFetching={true}
      loading=""
      maintainSpaceWhenHidden={null}
      overflowType="hidden"
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showInEditor={null}
    >
      <Body>
        <TextInput
          id="tenant_name_textbox"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          label="Name"
          showClear={true}
          value={'{{CurrentTenant.data.tenants_by_pk.name??""}}'}
        />
        <Image
          id="tenant_logo_settings"
          _disclosedFields={{ array: [] }}
          altText="Tenant Logo"
          fit="contain"
          heightType="fixed"
          horizontalAlign="center"
          src={
            '{{tenant_logo_url_textbox.value?? CurrentTenant.data.tenants_by_pk.logo_url ?? "https://cdn.icon-icons.com/icons2/2385/PNG/512/image_broken_icon_144282.png"}}'
          }
        />
        <TextInput
          id="tenant_logo_url_textbox"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          label="Logo URL"
          placeholder="Enter logo url"
          showClear={true}
          tooltipText="https://logo.clearbit.com/{name}
https://dopiaza.org/tools/datauri/index.php"
          value={'{{CurrentTenant.data.tenants_by_pk.logo_url??""}}'}
        />
        <NumberInput
          id="tenant_fiscalyear_textbox"
          _defaultValue={null}
          _disclosedFields={{ array: [] }}
          currency="USD"
          decimalPlaces="0"
          label="Fiscal Year Start"
          labelWidth="75"
          max="11"
          min="-11"
          showSeparators={true}
          showStepper={true}
          value="{{CurrentTenant.data.tenants_by_pk.fiscal_year_start}}"
        />
        <TextInput
          id="TenantCodeName"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          label="Code name"
          placeholder="allenby"
        />
        <DateTime
          id="tenant_trial_end"
          _disclosedFields={{ array: ["iconBefore"] }}
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          displayTimeZone="00:00"
          iconBefore="bold/interface-calendar"
          label="Trial end date (UTC)"
          manageTimeZone={true}
          minuteStep={15}
          showClear={true}
          value="{{CurrentTenant.data.tenants_by_pk.trial_end ?? undefined}}"
          valueTimeZone="00:00"
        />
        <TextInput
          id="tenant_color_palette_textbox"
          _defaultValue=""
          _disclosedFields={{ array: ["customValidation"] }}
          customValidation={
            "{{ tenant_color_palette_textbox.value == ''   || tenant_color_palette_textbox.value.split(',').map(x=> x.length == 6).reduce((x,y) => x&& y) ? \"\" : \"The format is: FAFAFA,C1C1C1,10CE1D...\"}}"
          }
          label="Color Palette"
          placeholder="FF1800,353D40,D9D9D9,A1A5A6,F2B138,F2B138,D9AE79"
          showClear={true}
          value={'{{CurrentTenant.data.tenants_by_pk.graph_colors??""}}'}
        />
        <Text
          id="ColorPaletteRepresentation"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value={
            "{{tenant_color_palette_textbox.value.split(',').map((color, index) => '<span style=\"background-color:#'+ color + '\">Color' + (index+1) + '</span>').join(' ')}}"
          }
          verticalAlign="center"
        />
        <NumberInput
          id="tenant_decimal_digits"
          _defaultValue={null}
          _disclosedFields={{ array: [] }}
          allowNull={true}
          currency="USD"
          customValidation={
            "{{ tenant_color_palette_textbox.value == ''   || tenant_color_palette_textbox.value.split(',').map(x=> x.length == 6).reduce((x,y) => x&& y) ? \"\" : \"The format is: FAFAFA,C1C1C1,10CE1D...\"}}"
          }
          label="Decimal Digits"
          placeholder="Enforces decimal digits throughout pulse"
          showClear={true}
          showSeparators={true}
          showStepper={true}
          value=""
        />
        <DateTime
          id="tenant_last_sync"
          _disclosedFields={{ array: [] }}
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          displayTimeZone="00:00"
          iconBefore="bold/interface-calendar"
          label="Last sync (UTC)"
          manageTimeZone={true}
          minuteStep={15}
          value="{{CurrentTenant.data.tenants_by_pk.last_etl_synced }}"
          valueTimeZone="00:00"
        />
      </Body>
      <Footer>
        <Button
          id="formButton5"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="TenantSettingsForm"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertTenant"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Include src="./NewFivetranConenctorModal.rsx" />
    <Form
      id="internalMetadata"
      disabled="{{!IsStaffRole.data}}"
      hoistFetching={true}
      loading="{{UpsertTenantMetadata.isFetching || TenantMetadata.isFetching}}"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      tooltipText="saved in the backend for internal use, can't be seen by our clients"
    >
      <Header>
        <Text
          id="formTitle2"
          _disclosedFields={{ array: [] }}
          value="#### Internal Metadata"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <RadioGroup
          id="tenantState"
          itemMode="static"
          label="Tenant State"
          labelPosition="top"
          value="{{TenantMetadata.data.tenants_by_pk.internal_metadata?.tenantState}}"
        >
          <Option
            id="b0eca"
            disabled={false}
            hidden={false}
            value="Configuration"
          />
          <Option id="d25a5" value="POV" />
          <Option id="a5fd1" value="Active" />
          <Option id="da5fe" disabled={false} hidden={false} value="Stopped" />
          <Option id="1ffec" disabled={false} hidden={false} value="Sandbox" />
        </RadioGroup>
        <TextInput
          id="tenantOwner"
          _disclosedFields={{ array: [] }}
          label="Solution"
          labelWidth="30"
          placeholder="Enter value"
          tooltipText="The tenant owner in sightfull"
          value="{{TenantMetadata.data.tenants_by_pk.internal_metadata?.tenantOwner}}"
        />
        <TextInput
          id="tenantAE"
          _disclosedFields={{ array: [] }}
          label="AE"
          labelWidth="30"
          placeholder="Enter value"
          value="{{TenantMetadata.data.tenants_by_pk.internal_metadata?.tenantAE}}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton9"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="internalMetadata"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertTenantMetadata"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View
    id="cf8f8"
    hidden={false}
    iconPosition="left"
    label="TableFish"
    viewKey="9"
  >
    <Form
      id="TablefishForm"
      disableSubmit="{{isTablefishConfigInvalid.value}}"
      hoistFetching={true}
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle3"
          _disclosedFields={{ array: [] }}
          value="#### Tablefish Config"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <CheckboxGroup
          id="dbtSteps"
          disabled="{{ !editSpecificSteps.value }}"
          itemMode="static"
          label="Edit steps "
          labelPosition="top"
          value="{{ [...self.values] }}"
        >
          <Option id="d8527" label="run" value="run" />
          <Option id="9e374" value="snapshot" />
          <Option id="12258" value="test" />
        </CheckboxGroup>
        <Switch
          id="editSpecificSteps"
          _disclosedFields={{ array: [] }}
          label="Edit specific steps"
        />
        <TextInput
          id="projectPath"
          _disclosedFields={{ array: [] }}
          label="Project path"
          placeholder="/schemas/allenby/dbt/allenby_dbt"
          value={
            '{{GetJobsConfig?.data?.jobs.filter(conf=>conf.name==="tablefish")[0]?.config?.project_path ?? `/schemas/${TenantCodeName.value}/dbt/${TenantCodeName.value}_dbt`}}'
          }
        />
        <TextInput
          id="snapshotSchema"
          _disclosedFields={{ array: [] }}
          disabled="{{!overrideTablefishSnapshot.value}}"
          label="Snapshot Schema"
          placeholder="Enter value"
          value={
            '{{GetJobsConfig?.data?.jobs?.filter(conf=>conf.name==="tablefish")[0]?.config?.snapshot_schema?? `snapshots_0x${decimalToHex(CurrentTenant.data.tenants_by_pk.tid, 8).toLocaleLowerCase()}`}}'
          }
        />
        <Switch
          id="overrideTablefishSnapshot"
          _disclosedFields={{ array: [] }}
          label="Override snapshot schema"
        />
        <Text
          id="text12"
          _disclosedFields={{ array: [] }}
          horizontalAlign="center"
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="ℹ️ **Used for calculated Fields !**"
          verticalAlign="center"
        />
        <TextInput
          id="tablefishSalesforceSchema"
          _disclosedFields={{ array: [] }}
          disabled="{{!isSalesforceDbt.value}}"
          label="Salesforce schema"
          placeholder="Enter value"
          value={
            '{{GetJobsConfig?.data?.jobs.filter(conf=>conf.name==="tablefish")[0]?.config?.schema ?? "salesforce_fakery"}}'
          }
        />
        <Switch
          id="isSalesforceDbt"
          _disclosedFields={{ array: [] }}
          label="Override salesforce source data schema"
          value="false
"
        />
      </Body>
      <Footer>
        <Button
          id="updateTablefishConf"
          _disclosedFields={{ array: [] }}
          hidden=""
          maintainSpaceWhenHidden={true}
          submit={true}
          submitTargetId="TablefishForm"
          text="Submit"
        />
        <Text
          id="tablefishConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isTablefishConfigInvalid.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertTablefishConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="1" label="DB2Graph" viewKey="1">
    <RadioGroup
      id="ChosenDB2Graph"
      _defaultValue={null}
      data="['Salesforce', 'NetSuite', 'HubSpot', 'Targets']"
      deprecatedLabels=""
      labelPosition="top"
      labels=""
      value="{{ self.values[0] }}"
      values="{{ item }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetChosenDB2GraphConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <Form
      id="DB2GraphConfig"
      _hasSubmitEvents={false}
      disableSubmit="{{ isDB2GConfigInvalid.value }}"
      hoistFetching={true}
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value="#### DB2Graph {{ ChosenDB2Graph.value }} Config"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="db2graphDefaultConfigPath"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          label="Default config path"
          placeholder="/schemas/default/db2graph/config.yaml"
          style={{
            ordered: [
              {
                background:
                  '{{GetChosenDB2GraphConfig.data.jobs[0]?.config?.config_path == db2graphDefaultConfigPath.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetChosenDB2GraphConfig.data.jobs[0]?.config?.config_path ?? "/schemas/default/db2graph/config.yaml"}}'
          }
        />
        <TextInput
          id="db2graphSchema"
          _defaultValue=""
          _disclosedFields={{ array: ["background"] }}
          disabled="{{!EditDb2graphSchema.value}}"
          hidden={'{{ ChosenDB2Graph.value == "Targets" }}'}
          label="schema"
          readOnly="{{!EditDb2graphSchema.value}}"
          style={{
            ordered: [
              {
                background:
                  '{{GetChosenDB2GraphConfig?.data?.jobs?.[0]?.config?.schema == db2graphSchema.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value="{{GetChosenDB2GraphConfig?.data?.jobs?.[0]?.config?.schema ?? `${ChosenDB2Graph.value.toLocaleLowerCase()}_0x${decimalToHex(CurrentTenant.data.tenants_by_pk.tid, 8).toLocaleLowerCase()}`}}"
        />
        <Switch
          id="EditDb2graphSchema"
          _defaultValue={false}
          _disclosedFields={{ array: [] }}
          disabled="{{!IsStaffRole.data}}"
          hidden={'{{ChosenDB2Graph.value == "Targets" }}'}
          label="Edit"
          value="false"
        />
        <TextInput
          id="db2graphSpecificConfigPath"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          label="Specific config path"
          placeholder="/schemas/<client>/db2graph/config.yaml"
          style={{
            ordered: [
              {
                background:
                  '{{GetChosenDB2GraphConfig.data.jobs[0]?.config?.specific_config_path == db2graphSpecificConfigPath.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value="{{GetChosenDB2GraphConfig.data.jobs[0]?.config?.specific_config_path ?? `/schemas/${TenantCodeName.value}/db2graph/config.yaml`}}"
        />
        <Switch
          id="db2graphIncremental"
          _defaultValue={false}
          _disclosedFields={{ array: [] }}
          disabled="false"
          hidden=""
          label="Incremental"
          value={
            '{{GetChosenDB2GraphConfig.data.jobs[0]?.config?.incremental ?? ChosenDB2Graph.value != "Targets"}}'
          }
        />
        <Switch
          id="db2graphShiftDates"
          _defaultValue={false}
          _disclosedFields={{ array: [] }}
          disabled={'{{IsProduction.data && stamp.value != "preprod"}}'}
          hidden=""
          label="Shift dates"
          value="{{GetChosenDB2GraphConfig.data.jobs[0]?.config?.shift_dates ?? false}}"
        />
      </Body>
      <Footer>
        <Button
          id="SumbitDb2graphConfig"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="DB2GraphConfig"
          text="Submit"
        />
        <Text
          id="db2gConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isDB2GConfigInvalid.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertChosenDB2GraphConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="invalid"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "warning" },
                  { title: "invalid" },
                  { duration: "3" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="2" label="Babelfish" viewKey={2}>
    <Form
      id="BabelfishConfigForm"
      disabled="{{!IsStaffRole.data}}"
      disableSubmit="{{!IsStaffRole.data || isBabelfishConfigInvalid.value}}"
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
          id="BabelfishDepsConfigPath"
          _defaultValue=""
          _disclosedFields={{ array: ["background"] }}
          label="Dependencies config path"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.jobs.filter(x=>x.name=="Babelfish")[0]?.config?.config_path == BabelfishDepsConfigPath.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="Babelfish")[0]?.config?.config_path ?? `/schemas/default/dependencies.yaml`}}'
          }
        />
        <TextInput
          id="BabelfishConfigPath"
          _defaultValue=""
          _disclosedFields={{ array: ["background"] }}
          label="Specific config path"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.jobs.filter(x=>x.name=="Babelfish")[0]?.config?.specific_config_path == BabelfishConfigPath.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="Babelfish")[0]?.config?.specific_config_path ?? `/schemas/${TenantCodeName.value}/babel`}}'
          }
        />
        <DateTime
          id="BabelfishLargeDeletionsUntil"
          _disclosedFields={{ array: ["iconBefore"] }}
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Allow Large Deletions Until"
          minuteStep={15}
          value={
            '{{new Date(GetJobsConfig.data.jobs.filter(x=>x.name=="Babelfish")[0]?.config?.largeDeletionsUntil ?? new Date())}}'
          }
        />
      </Body>
      <Footer>
        <Button
          id="formButton4"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="BabelfishConfigForm"
          text="Submit"
        />
        <Text
          id="babelfishConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isBabelfishConfigInvalid.value.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
      </Footer>
      <Event
        enabled="{{IsStaffRole.data && GetJobsConfig.data != undefined}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertBabelfishConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="3" label="Tailor" viewKey={3}>
    <Form
      id="TailorConfigForm"
      disabled="{{!IsStaffRole.data}}"
      disableSubmit="{{!IsStaffRole.data || isTailorConfigInvalid.value }}"
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
          id="TailorConfigPath"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          label="Default config path"
          placeholder="/schemas/default/tailor-op"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.jobs.filter(x=>x.name=="Tailor")[0]?.config?.config_path == TailorConfigPath.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="Tailor")[0]?.config?.config_path ?? `/schemas/default/tailor-op`}}'
          }
        />
        <TextInput
          id="TailorSpecificConfigPath"
          _defaultValue=""
          _disclosedFields={{ array: ["background"] }}
          label="Specific config path"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.jobs.filter(x=>x.name=="Tailor")[0]?.config?.specific_config_path == TailorSpecificConfigPath.value ? "#FFFFFF": "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="Tailor")[0]?.config?.specific_config_path ?? `/schemas/${TenantCodeName.value}/tailor`}}'
          }
        />
        <DateTime
          id="TailorLargeDeletionsUntil"
          _disclosedFields={{ array: ["iconBefore"] }}
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Allow Large Deletions Until"
          minuteStep={15}
          value={
            '{{new Date(GetJobsConfig.data.jobs.filter(x=>x.name=="Tailor")[0]?.config?.largeDeletionsUntil ?? new Date())}}'
          }
        />
      </Body>
      <Footer>
        <Button
          id="formButton6"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="TailorConfigForm"
          text="Submit"
        />
        <Text
          id="tailorConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isTailorConfigInvalid.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
      </Footer>
      <Event
        enabled="{{IsStaffRole.data && GetJobsConfig.data != undefined}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertTailorConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="4" label="Argovisor" viewKey={4}>
    <Form
      id="ArgohConfigForm"
      disabled="{{!IsStaffRole.data || GetJobsConfig.data == undefined}}"
      disableSubmit="{{isArgovisorConfigInvalid.value}}"
      heightType="fixed"
      hidden={null}
      hoistFetching={true}
      maintainSpaceWhenHidden={null}
      overflowType="hidden"
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showInEditor={null}
    >
      <Body>
        <TextInput
          id="ArgovisorSchedule"
          _defaultValue=""
          _disclosedFields={{
            array: ["patternType", "pattern", "tooltipText"],
          }}
          label="Schedule"
          pattern="^((((\d+,)+\d+|(\d+(\/|-)\d+)|\d+|\*) ?){5})$"
          patternType="regex"
          tooltipText="https://crontab.guru/#{{ArgovisorSchedule.value}}"
          value="{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith('argovisor-tenant'))[0]?.schedule ?? GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith('argovisor'))[0]?.schedule ??'0 0 * * *'}}"
        />
        <Switch
          id="db2graphSalesforceEnabled"
          _defaultValue={false}
          _disclosedFields={{ array: [] }}
          label="DB2graph-Salesforce"
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.db2graphConfig.stepsAppendArgs.filter(x=>x.includes("salesforce"))[0] ?? false}}'
          }
        />
        <TextInput
          id="TailorConcurrentJobs"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          customValidation="{{parseInt(self.value) < 8 ? null : 'Too high!'}}"
          label="Tailor concurrent workers"
          labelWidth="50"
          tooltipText="Not more than 5 is recommended"
          value={
            "{{GetJobsConfig.data.jobs.filter(x=>x.name==\"argovisor\")[0]?.config.tailorConfig.concurrentJobsCount ?? '3'}}"
          }
        />
        <TextInput
          id="ArgovisorTailorOverrideImageTag"
          _defaultValue=""
          _disclosedFields={{ array: ["patternType", "pattern"] }}
          disabled="{{!EditArgovisorOverrideTags.value}}"
          label="tailor"
          labelWidth="50"
          maxLength=""
          minLength=""
          pattern="(latest|sha-[a-z0-9]{7})"
          patternType="regex"
          placeholder="sha-x | latest"
          showClear={true}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.tailorConfig.overrideImageTag ?? ""}}'
          }
        />
        <Switch
          id="db2graphNetsuiteEnabled"
          _defaultValue={false}
          _disclosedFields={{ array: [] }}
          label="DB2graph-NetSuite"
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.db2graphConfig.stepsAppendArgs.filter(x=>x.includes("netsuite"))[0] ?? false}}'
          }
        />
        <TextInput
          id="ArgovisorSchemaRevision"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          label="Schema Revision"
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.schemaRepositoryRevision ?? `HEAD`}}'
          }
        />
        <Switch
          id="db2graphHubSpotEnabled"
          _defaultValue={false}
          _disclosedFields={{ array: [] }}
          label="DB2Graph-HubSpot"
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.db2graphConfig.stepsAppendArgs.filter(x=>x.includes("hubspot"))[0] ?? false}}'
          }
        />
        <TextInput
          id="workerRetryLimit"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          label="Tailor workers retry limit"
          labelWidth="50"
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.tailorConfig.workerRetryLimit ?? `3`}}'
          }
        />
        <Switch
          id="db2graphTargetsEnabled"
          _defaultValue={false}
          _disclosedFields={{ array: [] }}
          label="DB2graph-Targets"
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.db2graphConfig.stepsAppendArgs.filter(x=>x.includes("targets"))[0] ?? false}}'
          }
        />
        <Text
          id="text9"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          horizontalAlign="center"
          value="**Override Image tags**"
          verticalAlign="center"
        />
        <Switch
          id="EditArgovisorOverrideTags"
          _defaultValue={false}
          _disclosedFields={{ array: [] }}
          disabled="{{!IsStaffRole.data}}"
          label="Edit"
          value="false"
        />
        <TextInput
          id="ArgovisorDb2graphOverrideImageTag"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          disabled="{{!EditArgovisorOverrideTags.value}}"
          label="db2graph"
          labelWidth="50"
          maxLength=""
          minLength=""
          pattern="(latest|sha-[a-z0-9]{7})"
          patternType="regex"
          placeholder="sha-x | latest"
          showClear={true}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.db2graphConfig.overrideImageTag ?? ""}}'
          }
        />
        <TextInput
          id="ArgovisorBabelfishOverrideImageTag"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          disabled="{{!EditArgovisorOverrideTags.value}}"
          label="babelfish"
          labelWidth="50"
          maxLength=""
          minLength=""
          pattern="(latest|sha-[a-z0-9]{7})"
          patternType="regex"
          placeholder="sha-x | latest"
          showClear={true}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.babelfishConfig.overrideImageTag ?? ""}}'
          }
        />
        <TextInput
          id="ArgovisorValidatorOverrideImageTag"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          disabled="{{!EditArgovisorOverrideTags.value}}"
          label="validator"
          labelWidth="50"
          maxLength=""
          minLength=""
          pattern="(latest|sha-[a-z0-9]{7})"
          patternType="regex"
          placeholder="sha-x | latest"
          showClear={true}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="argovisor")[0]?.config.validatorConfig.overrideImageTag ?? ""}}'
          }
        />
        <NumberInput
          id="daysToKeepSucceededWorkflows"
          _disclosedFields={{ array: [] }}
          currency="USD"
          inputValue={0}
          label="History days"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value={0}
        />
      </Body>
      <Footer>
        <Button
          id="suspendButton2"
          _disclosedFields={{ array: [] }}
          disabled="{{(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? true) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgba(247, 202, 113, 1)" }] }}
          styleVariant="solid"
          text="Suspend"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="SuspendCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="resumeButton2"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgb(247, 202, 113)" }] }}
          styleVariant="solid"
          text="Resume"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="ResumeCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="deleteButton2"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0] ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "danger" }] }}
          styleVariant="solid"
          text="DELETE"
          tooltipText="Delete job cron"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="DeleteCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="argovisorConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isArgovisorConfigInvalid.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
        <Button
          id="formButton7"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="ArgohConfigForm"
          text={
            '{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + \'-tenant\'))[0] ?? false) ? "Create" : "Update" }}'
          }
        />
      </Footer>
      <Event
        enabled="{{IsStaffRole.data && GetJobsConfig.data != undefined}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertArgovisorConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="5" label="Sherlock" viewKey={5}>
    <Form
      id="SherlockConfigForm"
      _hasSubmitEvents={false}
      disableSubmit="{{isSherlockConfigInvalid.value}}"
      hoistFetching={true}
      initialData=""
      requireValidation={true}
      resetAfterSubmit=""
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Body>
        <TextInput
          id="SherlockTenantConfigPath"
          _defaultValue=""
          _disclosedFields={{ array: ["background"] }}
          disabled=""
          label="Tenant Config Path"
          labelWidth="37"
          placeholder="Enter value"
          readOnly="{{!IsStaffRole.data}}"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.jobs.filter(x=>x.name=="sherlock")[0]?.config?.configFilePath ??   GetJobsConfig.data.jobs.filter(x=>x.name=="userator")[0]?.config?.configFilePath == SherlockTenantConfigPath.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="sherlock")[0]?.config?.configFilePath ??   GetJobsConfig.data.jobs.filter(x=>x.name=="userator")[0]?.config?.configFilePath ?? `/schemas/${TenantCodeName.value}/config.yaml`}}'
          }
        />
        <TextInput
          id="SherlockSchedule"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          disabled=""
          label="Schedule"
          labelWidth="37"
          placeholder="Enter value"
          readOnly="{{!IsStaffRole.data}}"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(\'sherlock-tenant\'))[0]?.schedule == SherlockSchedule.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          tooltipText="https://crontab.guru/#{{ArgovisorSchedule.value}}"
          value="{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith('sherlock-tenant'))[0]?.schedule ??'0 0 * * *'}}"
        />
        <TextInput
          id="schemaRepoRevision"
          _defaultValue=""
          _disclosedFields={{ array: ["background"] }}
          label="Schema Repo Revision"
          placeholder={
            '{{ArgovisorSchemaRevision.value ?? "fork/default-no-op"}}'
          }
          style={{
            ordered: [
              {
                background:
                  "{{GetJobsConfig.data.argo_params.filter(x => x.name?.startsWith('sherlock-tenant'))[0]?.extra_params?.filter(x => x.name == 'schemaRevision')[0]?.value ?? GetJobsConfig.data.argo_params.filter(x => x.name?.startsWith('userator-tenant'))[0]?.extra_params?.filter(x => x.name == 'schemaRevision')[0]?.value == schemaRepoRevision.value ? \"#FFFFFF\" : \"#696969\"}}",
              },
            ],
          }}
          value={
            "{{ GetJobsConfig.data.argo_params.filter(x => x.name?.startsWith('sherlock-tenant'))[0]?.extra_params?.filter(x => x.name == 'schemaRevision')[0]?.value ?? GetJobsConfig.data.argo_params.filter(x => x.name?.startsWith('userator-tenant'))[0]?.extra_params?.filter(x => x.name == 'schemaRevision')[0]?.value ?? \"HEAD\"}}"
          }
        />
      </Body>
      <Footer>
        <Button
          id="suspendButton"
          _disclosedFields={{ array: [] }}
          disabled="{{(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? true) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgba(247, 202, 113, 1)" }] }}
          styleVariant="solid"
          text="Suspend"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="SuspendCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="resumeButton"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgb(247, 202, 113)" }] }}
          styleVariant="solid"
          text="Resume"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="ResumeCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="deleteButton"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0] ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "danger" }] }}
          styleVariant="solid"
          text="DELETE"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="DeleteCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="sherlockConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isSherlockConfigInvalid.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
        <Button
          id="updateButton"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="SherlockConfigForm"
          text={
            '{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + \'-tenant\'))[0] ?? false) ? "Create" : "Update" }}'
          }
        />
      </Footer>
      <Event
        enabled="{{IsStaffRole.data && GetJobsConfig.data != undefined}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertSherlockConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="6" label="Metric-Tester" viewKey={6}>
    <Form
      id="MetricTesterConfigForm"
      _hasSubmitEvents={false}
      disableSubmit="{{isMetricTesterConfigInvalid.value}}"
      hoistFetching={true}
      initialData=""
      requireValidation={true}
      resetAfterSubmit=""
      showBody={true}
      showFooter={true}
      showHeader={true}
      tooltipText="Metric Tester"
    >
      <Body>
        <TextInput
          id="MetricTesterSchedule"
          _defaultValue=""
          _disclosedFields={{
            array: ["pattern", "background", "tooltipText", "patternType"],
          }}
          disabled=""
          label="Schedule"
          labelWidth="37"
          pattern="^((((\d+,)+\d+|(\d+(\/|-)\d+)|\d+|\*) ?){5})$"
          patternType="regex"
          placeholder="Enter value"
          readOnly="{{!IsStaffRole.data}}"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(\'metric-tester-tenant\'))[0]?.schedule == MetricTesterSchedule.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          tooltipText="https://crontab.guru/#{{ArgovisorSchedule.value}}"
          value="{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith('metric-tester-tenant'))[0]?.schedule ??'0 4 * * *'}}"
        />
        <NumberInput
          id="MetricTesterNumThreads"
          _disclosedFields={{ array: ["background"] }}
          currency="USD"
          disabled={
            '{{stamp.value != "preprod" && stamp.value != "staging" && !stamp.value.startsWith("dev")}}'
          }
          inputValue={0}
          label="Number of Threads"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.jobs.filter(x=>x.name=="metric-tester")[0]?.config?.num_threads == MetricTesterNumThreads.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="metric-tester")[0]?.config?.num_threads ?? 2}}'
          }
        />
        <JSONEditor
          id="MetricTesterConfigJson"
          events={[]}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="metric-tester")[0]?.config?.metric_groups ?? {\n  "critical": {\n    "append_metrics": []\n  },\n  "critical_finance": {\n    "append_metrics": []\n  },\n  "documentation": {\n    "append_metrics": []\n  },\n  "dont_run": {\n    "append_metrics": []\n  }\n}}}\n\n'
          }
        />
        <Text
          id="text10"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value="#### 📗 Configuration how to

Metric tester works in hierarchical configuration groups. A metric's configuration is the first group it matches its patterns.

For the tester to not run a metric, add it to the **dont_run** group.

To see the default config - sightcode/infra/tools/metric_tester/config/default_config.yaml"
          verticalAlign="center"
        />
      </Body>
      <Footer>
        <Button
          id="suspendButton3"
          _disclosedFields={{ array: [] }}
          disabled="{{(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? true) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgba(247, 202, 113, 1)" }] }}
          styleVariant="solid"
          text="Suspend"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="SuspendCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="resumeButton3"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgb(247, 202, 113)" }] }}
          styleVariant="solid"
          text="Resume"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="ResumeCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="deleteButton3"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0] ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "danger" }] }}
          styleVariant="solid"
          text="DELETE"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="DeleteCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="AlerterSubmitButton"
          _disclosedFields={{ array: [] }}
          hidden="false"
          submit={true}
          submitTargetId="MetricTesterConfigForm"
          text={
            '{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + \'-tenant\'))[0] ?? false) ? "Create" : "Update" }}'
          }
        />
        <Text
          id="metricTesterConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isMetricTesterConfigInvalid.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
      </Footer>
      <Event
        enabled="{{IsStaffRole.data && GetJobsConfig.data != undefined}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertMetricTesterConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View
    id="30cb7"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Cacher"
  >
    <Form
      id="CacherConfigForm"
      _hasSubmitEvents={false}
      disabled=""
      disableSubmit="{{isCacherConfigInvalid.value}}"
      hoistFetching={true}
      initialData=""
      requireValidation={true}
      resetAfterSubmit=""
      showBody={true}
      showFooter={true}
      showHeader={true}
      tooltipText="Metric Tester"
    >
      <Body>
        <JSONEditor
          id="CacherJsonConfig"
          events={[]}
          value={
            '{{ GetJobsConfig.data.jobs.filter(x=>x.name=="cacher")[0]?.config?.metrics ?? [] }}\n\n'
          }
        />
        <NumberInput
          id="CacherAsyncWorkers"
          _disclosedFields={{ array: ["background", "min", "max"] }}
          currency="USD"
          disabled={
            '{{stamp.value != "preprod" && stamp.value != "staging" && !stamp.value.startsWith("dev")}}'
          }
          inputValue={0}
          label="Workers"
          max="6"
          min="1"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.jobs.filter(x=>x.name=="cacher")[0]?.config?.async_workers == CacherAsyncWorkers.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="cacher")[0]?.config?.async_workers ?? 2}}'
          }
        />
        <Text
          id="DefaultRangeConfigText"
          _disclosedFields={{ array: [] }}
          value="**Default range config:**"
          verticalAlign="center"
        />
        <JSONEditor
          id="CacherDefaultRangeJsonConfig"
          events={[]}
          maintainSpaceWhenHidden={false}
          showInEditor={false}
          value={
            '{{ GetJobsConfig.data.jobs.filter(x=>x.name=="cacher")[0]?.config?.range ?? {"month": [-12, 0], "quarter": [-5, 0], "fyear": [-2, 0]} }}\n\n'
          }
        />
        <Modal
          id="AddMetricToCaherConfigModal"
          buttonText="Add metric"
          modalHeight="250"
          modalWidth="30%"
        >
          <TextInput
            id="CacherPulseURLtoAdd"
            _disclosedFields={{ array: [] }}
            label="Metric URL"
            labelWidth="15"
            labelWrap={true}
            patternType="url"
            placeholder="Paste here"
          />
          <Button
            id="AddURLCacherButton"
            _disclosedFields={{ array: [] }}
            disabled="{{!IsStaffRole.data || !CacherPulseURLtoAdd.value}}"
            styleVariant="solid"
            text="Add"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="UpsertCacherConfig"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Modal>
      </Body>
      <Footer>
        <Text
          id="cacherConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isCacherConfigInvalid.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
        <Button
          id="CacherSubmitButton"
          _disclosedFields={{ array: [] }}
          hidden="false"
          submit={true}
          submitTargetId="CacherConfigForm"
          text="Submit"
        />
      </Footer>
      <Event
        enabled="{{IsStaffRole.data && GetJobsConfig.data != undefined}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertCacherConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="7" label="Userator" viewKey={7}>
    <Form
      id="UseratorConfigForm"
      _hasSubmitEvents={false}
      disableSubmit="{{isUseratorConfigInvalid.value}}"
      hoistFetching={true}
      initialData=""
      requireValidation={true}
      resetAfterSubmit=""
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Body>
        <TextInput
          id="UseratorTenantConfigPath"
          _defaultValue=""
          _disclosedFields={{ array: ["background"] }}
          disabled=""
          label="Tenant Config Path"
          labelWidth="37"
          placeholder="Enter value"
          readOnly="{{!IsStaffRole.data}}"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.jobs.filter(x=>x.name=="userator")[0]?.config?.configFilePath ??GetJobsConfig.data.jobs.filter(x=>x.name=="sherlock")[0]?.config?.configFilePath == UseratorTenantConfigPath.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="userator")[0]?.config?.configFilePath ??GetJobsConfig.data.jobs.filter(x=>x.name=="sherlock")[0]?.config?.configFilePath ?? `/schemas/${TenantCodeName.value}/config.yaml`}}'
          }
        />
        <TextInput
          id="useratorSchemaRepo"
          _defaultValue=""
          _disclosedFields={{ array: ["background"] }}
          label="Schema Repo Revision"
          placeholder={
            '{{ArgovisorSchemaRevision.value ?? "fork/default-no-op"}}'
          }
          style={{
            ordered: [
              {
                background:
                  "{{GetJobsConfig.data.argo_params.filter(x => x.name?.startsWith('userator-tenant'))[0]?.extra_params?.filter(x => x.name == 'schemaRevision')[0]?.value || GetJobsConfig.data.argo_params.filter(x => x.name?.startsWith('sherlock-tenant'))[0]?.extra_params?.filter(x => x.name == 'schemaRevision')[0]?.value == useratorSchemaRepo.value ? \"#FFFFFF\" : \"#696969\"}}",
              },
            ],
          }}
          value="{{ GetJobsConfig.data.argo_params.filter(x => x.name?.startsWith('userator-tenant'))[0]?.extra_params?.filter(x => x.name == 'schemaRevision')[0]?.value || GetJobsConfig.data.argo_params.filter(x => x.name?.startsWith('sherlock-tenant'))[0]?.extra_params?.filter(x => x.name == 'schemaRevision')[0]?.value || 'HEAD'}}"
        />
        <Checkbox
          id="useratorMutedCheckbox"
          _defaultValue={false}
          _disclosedFields={{ array: [] }}
          label="Is Dry Run ?
"
          value={
            '{{GetJobsConfig.data.jobs.filter(x=>x.name=="userator")[0]?.config?.isDryRun ?? false}}'
          }
        />
        <TextInput
          id="UseratorSchedule"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          disabled=""
          label="Schedule"
          labelWidth="37"
          placeholder="Enter value"
          readOnly="{{!IsStaffRole.data}}"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(\'userator-tenant\'))[0]?.schedule == UseratorSchedule.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          tooltipText="https://crontab.guru/#{{ArgovisorSchedule.value}}"
          value="{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith('userator-tenant'))[0]?.schedule ??'0 0 * * *'}}"
        />
        <TextInput
          id="useratorSalesforceSchema"
          _defaultValue=""
          _disclosedFields={{ array: ["background"] }}
          label="Salesforce DB"
          placeholder="salesforce_schema"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.jobs.filter(x=>x.name=="userator")[0]?.config?.salesforceSchema ??GetChosenDB2GraphConfig.data.jobs[0]?.config?.schema == useratorSalesforceSchema.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          value={
            '{{GetJobsConfig?.data?.jobs?.filter(x=>x.name=="userator")[0]?.config?.salesforceSchema ??GetChosenDB2GraphConfig.data.jobs[0]?.config?.schema ?? `${ChosenDB2Graph.value.toLocaleLowerCase()}_0x${decimalToHex(CurrentTenant.data.tenants_by_pk.tid, 8).toLocaleLowerCase()}`}}'
          }
        />
      </Body>
      <Footer>
        <Button
          id="suspendButton4"
          _disclosedFields={{ array: [] }}
          disabled="{{(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? true) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgba(247, 202, 113, 1)" }] }}
          styleVariant="solid"
          text="Suspend"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="SuspendCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="resumeButton4"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgb(247, 202, 113)" }] }}
          styleVariant="solid"
          text="Resume"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="ResumeCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="deleteButton4"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0] ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "danger" }] }}
          styleVariant="solid"
          text="DELETE"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="DeleteCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="submitUseratorForm"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="UseratorConfigForm"
          text={
            '{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + \'-tenant\'))[0] ?? false) ? "Create" : "Update" }}'
          }
        />
        <Text
          id="useratorConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isUseratorConfigInvalid.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
      </Footer>
      <Event
        enabled="{{IsStaffRole.data && GetJobsConfig.data != undefined}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertUseratorConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="8" label="Hermes" viewKey={8}>
    <Form
      id="HermesConfigForm"
      _hasSubmitEvents={false}
      disableSubmit="{{isHermesConfigInvalid.value}}"
      hoistFetching={true}
      initialData=""
      requireValidation={true}
      resetAfterSubmit=""
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Body>
        <TextInput
          id="HermesSchedule"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          disabled=""
          label="Schedule"
          labelWidth="37"
          placeholder="Enter value"
          readOnly="{{!IsStaffRole.data}}"
          style={{
            ordered: [
              {
                background:
                  '{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(\'hermes-tenant\'))[0]?.schedule == HermesSchedule.value ? "#FFFFFF" : "#696969"}}',
              },
            ],
          }}
          tooltipText="https://crontab.guru/#{{ArgovisorSchedule.value}}"
          value="{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith('hermes-tenant'))[0]?.schedule ??'0 0 * * *'}}"
        />
      </Body>
      <Footer>
        <Button
          id="suspendButton5"
          _disclosedFields={{ array: [] }}
          disabled="{{(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? true) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgba(247, 202, 113, 1)" }] }}
          styleVariant="solid"
          text="Suspend"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="SuspendCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="resumeButton5"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0]?.isSuspended ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "rgb(247, 202, 113)" }] }}
          styleVariant="solid"
          text="Resume"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="ResumeCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="deleteButton5"
          _disclosedFields={{ array: [] }}
          disabled="{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + '-tenant'))[0] ?? false) || !IsStaffRole.data}}"
          style={{ ordered: [{ background: "danger" }] }}
          styleVariant="solid"
          text="DELETE"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="DeleteCronByTabName"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="submitHermesForm"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="HermesConfigForm"
          text={
            '{{!(GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + \'-tenant\'))[0] ?? false) ? "Create" : "Update" }}'
          }
        />
        <Text
          id="hermesConfigIndicator"
          _disclosedFields={{ array: [] }}
          value={
            '{{!isHermesConfigInvalid.value ? "Config is Valid for upsert ✅" : "Config is Invalid for upsert⛔ ⛔"}}'
          }
          verticalAlign="center"
        />
      </Footer>
      <Event
        enabled="{{IsStaffRole.data && GetJobsConfig.data != undefined}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertHermesConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View
    id="3c95f"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Tiny Tenant"
    viewKey="10"
  >
    <Text
      id="tinyTenantInfo"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      heightType="fixed"
      hidden="{{ !CurrentTinyTenant.data || CurrentTinyTenant.data.error }}"
      value={
        '### {{ CurrentTinyTenant?.data?.tenants_by_pk == null ? "Tiny tenant not configured" : CurrentTinyTenant.data.tenants_by_pk.name}}\n{{ CurrentTinyTenant?.data?.tenants_by_pk != null ?  `0x${decimalToHex(CurrentTinyTenant?.data?.tenants_by_pk?.tid, 8)}` : ""}} {{ CurrentTinyTenant?.data?.tenants_by_pk != null ?  `(${CurrentTinyTenant.data.tenants_by_pk.tid})` : ""}}'
      }
      verticalAlign="center"
    />
    <Button
      id="syncTinyTenant"
      _disclosedFields={{ array: [] }}
      hidden=""
      maintainSpaceWhenHidden={true}
      submitTargetId=""
      text="Sync Tiny Tenant"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="SyncTinyTenant"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="3e138"
    disabled={false}
    hidden={false}
    icon="bold/interface-alert-warning-triangle"
    iconPosition="left"
    viewKey="Delete Tenant"
  >
    <Button
      id="button6"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Stop All Jobs"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="DeleteAllCrons"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button7"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ background: "warning" }] }}
      styleVariant="solid"
      text={'Change tenant to "Deprecated"'}
    >
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                '{{CurrentTenant.data.tenants_by_pk.name??""}} (Deprecated)',
            },
          ],
        }}
        pluginId="tenant_name_textbox"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertTenant"
        type="datasource"
        waitMs="50"
        waitType="debounce"
      />
    </Button>
    <Include src="./deleteTenantGraphButton.rsx" />
  </View>
  <Event
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="GetJobsConfig"
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
    waitMs="200"
    waitType="debounce"
  />
  <Event
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="GetJobs"
    type="datasource"
    waitMs="200"
    waitType="debounce"
  />
</Container>

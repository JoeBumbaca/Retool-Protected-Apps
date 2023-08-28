<Modal
  id="NewFivetranConenctorModal"
  buttonText="Create New Fivetran Connector"
  disabled={
    '{{((GetJobs.data?.filter(x=>x.name=="DB2Graph-Salesforce")[0]?.last_successful_finished_at ?? null) != null  || GetJobs.data == null) && false}}'
  }
  events={[]}
  modalHeight="400"
>
  <Select
    id="selectorConnectorType"
    automaticItemColors={true}
    itemMode="static"
    label="Select connector type"
    overlayMaxHeight={375}
    placeholder="Select connector"
    showSelectionIndicator={true}
    value="salesforce"
  >
    <Option id="bcbd8" label="Salesforce Production" value="salesforce" />
    <Option id="a8191" label="Salesforce Sandbox" value="salesforce_sandbox" />
    <Option
      id="56cde"
      disabled={false}
      hidden={false}
      label="Hubspot"
      value="hubspot"
    />
  </Select>
  <Button
    id="GenerateConnectCardButton"
    _disclosedFields={{ array: [] }}
    disabled=""
    styleVariant="solid"
    text="Generate Connect Card"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="CreateConnector"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="CopyToClipBoard"
    _disclosedFields={{ array: [] }}
    disabled=""
    styleVariant="outline"
    text="Copy link to clipboard"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          {
            value:
              "{{CreateConnector.data?.fivetran_create_connector?.result?.url}}",
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <TextInput
    id="ActivationEmailInput"
    _disclosedFields={{ array: [] }}
    customValidation={
      '{{ RegExp(/^\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*(\\.\\w{2,3})+$/).test(self.value) ? "" : "Invalid email" }}'
    }
    disabled=""
    label="Email"
    patternType="email"
    placeholder="Enter email"
  />
  <TextInput
    id="ActivationEmailInputName"
    _disclosedFields={{ array: [] }}
    disabled=""
    label="First name"
    placeholder="Enter first name"
  />
  <Button
    id="SendActivationMails"
    _disclosedFields={{ array: [] }}
    disabled={
      '{{(CreateConnector.data?.fivetran_create_connector?.result?.url ?? null) == null || ActivationEmailInput.value == "" || ActivationEmailInputName.value == ""}}'
    }
    styleVariant="solid"
    text="Send mail"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="SendActivationMail"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>

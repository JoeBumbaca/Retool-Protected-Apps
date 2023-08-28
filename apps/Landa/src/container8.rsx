<Container id="container8" hoistFetching={true} showBody={true}>
  <View id="635d0" viewKey="View 1">
    <Text
      id="text158"
      _defaultValue=""
      value="## Documents "
      verticalAlign="center"
    />
    <CheckboxGroup
      id="checkboxGroup1"
      _defaultValue={{ array: [] }}
      groupLayout="singleColumn"
      itemMode="static"
      label="Sourcing "
      labelPosition="top"
      value="{{ [self.values[0]] }}"
    >
      <Option id="bc240" value="Driver license" />
      <Option id="b55bf" value="Last personal tax report " />
      <Option id="1016f" value="Bank letter" />
      <Option
        id="eb2b9"
        disabled={false}
        hidden={false}
        value="Certificate of formation"
      />
      <Option
        id="3fa49"
        disabled={false}
        hidden={false}
        value="Certificate of Good Standing"
      />
      <Option
        id="aec38"
        disabled={false}
        hidden={false}
        value="IRS EIN Letter"
      />
      <Option
        id="0e65e"
        disabled={false}
        hidden={false}
        value="Operating Agreement (LLC)"
      />
      <Event
        event="change"
        method="validate"
        params={{ ordered: [] }}
        pluginId="fileInput5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </CheckboxGroup>
    <FileInput id="fileInput4" iconBefore="file" textBefore="Browse" />
    <FileInput id="fileInput5" iconBefore="file" textBefore="Browse" />
    <FileInput id="fileInput6" iconBefore="file" textBefore="Browse" />
    <FileInput id="fileInput7" iconBefore="file" textBefore="Browse" />
    <CheckboxGroup
      id="checkboxGroup2"
      _defaultValue={{ array: [] }}
      groupLayout="singleColumn"
      itemMode="static"
      label="Contract"
      labelPosition="top"
      value="{{ [self.values[0]] }}"
    >
      <Option id="bc240" value="Signed contract" />
      <Option id="b55bf" value="Letter of intent" />
      <Option id="1016f" value="Buyer Resolution" />
      <Event
        event="change"
        method="validate"
        params={{ ordered: [] }}
        pluginId="fileInput7"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </CheckboxGroup>
    <FileInput id="fileInput9" iconBefore="file" textBefore="Browse" />
    <CheckboxGroup
      id="checkboxGroup3"
      _defaultValue={{ array: [] }}
      groupLayout="singleColumn"
      itemMode="static"
      label="Due Dilligence"
      labelPosition="top"
      value="{{ [self.values[0]] }}"
    >
      <Option id="bc240" value="Lease" />
      <Option id="b55bf" value="Inspection" />
      <Option id="1016f" value="PSA assignment " />
      <Option
        id="39a82"
        disabled={false}
        hidden={false}
        value="Renovation bid"
      />
      <Option id="f87e2" disabled={false} hidden={false} value="Appraisal" />
      <Option
        id="52ab2"
        disabled={false}
        hidden={false}
        value="property condition disclosure"
      />
      <Option
        id="e0bb8"
        disabled={false}
        hidden={false}
        value="Certificate of Occupancy (if multi or new build)"
      />
      <Option
        id="412ff"
        disabled={false}
        hidden={false}
        value="Condo Documents"
      />
      <Option
        id="1e272"
        disabled={false}
        hidden={false}
        value="Property/Hazard Insurance"
      />
      <Option id="b05b1" disabled={false} hidden={false} value="T12" />
      <Option id="2eac6" disabled={false} hidden={false} value="HOA CCR" />
      <Option
        id="ca10c"
        disabled={false}
        hidden={false}
        value="Environmental Report"
      />
      <Option
        id="1bb7f"
        disabled={false}
        hidden={false}
        value="Current year Income & Expense report "
      />
      <Option
        id="fa4c7"
        disabled={false}
        hidden={false}
        value="Last year Income & Expense report"
      />
      <Option
        id="38cf1"
        disabled={false}
        hidden={false}
        value="Invoices for all expenses"
      />
      <Option
        id="e4416"
        disabled={false}
        hidden={false}
        value="Tax Assesment "
      />
      <Option
        id="f7704"
        disabled={false}
        hidden={false}
        value="Tax Overview (Land/Building)"
      />
      <Option id="1215d" disabled={false} hidden={false} value="Warranties " />
      <Option
        id="aca58"
        disabled={false}
        hidden={false}
        value="Current insurance policy"
      />
      <Option
        id="a3b71"
        disabled={false}
        hidden={false}
        value="Loand Term Sheet "
      />
      <Option
        id="bc8a7"
        disabled={false}
        hidden={false}
        value="Move out inspection"
      />
      <Event
        event="change"
        method="validate"
        params={{ ordered: [] }}
        pluginId="fileInput9"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </CheckboxGroup>
    <FileInput id="fileInput8" iconBefore="file" textBefore="Browse" />
    <CheckboxGroup
      id="checkboxGroup5"
      _defaultValue={{ array: [] }}
      groupLayout="singleColumn"
      itemMode="static"
      label="Closing"
      labelPosition="top"
      value="{{ [self.values[0]] }}"
    >
      <Option id="bc240" value="Loan Package" />
      <Option id="b55bf" value="Closing documents PDF" />
      <Option id="1016f" value="Closing documents CSV" />
      <Option
        id="39a82"
        disabled={false}
        hidden={false}
        value="Open work orders"
      />
      <Option
        id="f87e2"
        disabled={false}
        hidden={false}
        value="Approval for no material updates "
      />
      <Option
        id="52ab2"
        disabled={false}
        hidden={false}
        value="Tenant onboarding sheet,"
      />
      <Option
        id="e0bb8"
        disabled={false}
        hidden={false}
        value="Updated leases (If any)"
      />
      <Option
        id="412ff"
        disabled={false}
        hidden={false}
        value="Updated rent roll (If any)"
      />
      <Option
        id="1e272"
        disabled={false}
        hidden={false}
        value="Consessions amendment"
      />
      <Option
        id="959b3"
        disabled={false}
        hidden={false}
        value="Vacancy confirmation (photos)"
      />
      <Event
        event="change"
        method="validate"
        params={{ ordered: [] }}
        pluginId="fileInput9"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </CheckboxGroup>
    <Text
      id="text159"
      _defaultValue=""
      value="## Tasks "
      verticalAlign="center"
    />
    <CheckboxGroup
      id="checkboxGroup4"
      _defaultValue={{ array: [] }}
      groupLayout="singleColumn"
      itemMode="static"
      label="Sourcing "
      labelPosition="top"
      value="{{ [self.values[0]] }}"
    >
      <Option id="bc240" value="Pay appraisal fee" />
      <Option id="b55bf" value="Pay Earnest Money" />
      <Option id="1016f" value="Pay closing funds" />
      <Option
        id="eb2b9"
        disabled={false}
        hidden={false}
        value="Schedule photographer"
      />
      <Option
        id="3fa49"
        disabled={false}
        hidden={false}
        value="Schedule inspection"
      />
      <Option
        id="aec38"
        disabled={false}
        hidden={false}
        value="Schedule renovation project"
      />
      <Option
        id="0e65e"
        disabled={false}
        hidden={false}
        value="Utilities connection"
      />
      <Option
        id="a5ec0"
        disabled={false}
        hidden={false}
        value="Schedule Appraisal"
      />
      <Option
        id="6163e"
        disabled={false}
        hidden={false}
        value="Tenant onboarding"
      />
      <Event
        event="change"
        method="validate"
        params={{ ordered: [] }}
        pluginId="fileInput5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </CheckboxGroup>
    <Button id="button12" styleVariant="solid" text="Utilites connection" />
    <Button id="button14" styleVariant="solid" text="Schedule appraisal" />
    <Button id="button13" styleVariant="solid" text="Pay Earnest Money" />
  </View>
</Container>

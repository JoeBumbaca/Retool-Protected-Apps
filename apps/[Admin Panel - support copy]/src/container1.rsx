<Container
  id="container1"
  _viewLabels={[]}
  currentViewKey=""
  hoistFetching={true}
  selectedView="View 1"
  showBody={true}
  showHeader={true}
  transition="fade"
  viewLabels={{ array: [] }}
>
  <Header>
    <Text
      id="containerTitle1"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="#### Import From JSON"
      verticalAlign="center"
    />
  </Header>
  <View id="" viewKey="View 1" />
  <Body>
    <FileDropzone
      id="importedJsonWorkspace"
      _disclosedFields={{ array: [] }}
      hideLabel={false}
      iconBefore="bold/programming-browser-search"
      label=""
      labelPosition="top"
      parseFiles={true}
      placeholder="Drop exported workspace json file"
    />
    <TextInput
      id="workspaceImportName"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      label="Workspace Name"
      labelPosition="top"
      value="{{importedJsonWorkspace.parsedValue[0].name}}"
    />
    <Button
      id="button3"
      _disclosedFields={{ array: [] }}
      disabled="{{!workspaceImportName.value || importedJsonWorkspace.parsedValue.length == 0}}"
      styleVariant="solid"
      submitTargetId=""
      text="Upload"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ImportFromJson"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <JSONEditor id="preview" value="{{importedJsonWorkspace.parsedValue[0]}}" />
  </Body>
</Container>

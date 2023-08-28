<Container
  id="container1"
  hidden="{{!toggleLink1.value}}"
  hovered={true}
  showBody={true}
  showInEditor={true}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="6fa10" viewKey="View 1">
    <Text
      id="text1"
      hidden=""
      showInEditor={true}
      value="**{{planName.value}} Configuration**"
      verticalAlign="center"
    />
    <Select
      id="select9"
      data="{{ xRaPlanNames.data }}"
      emptyMessage="No options"
      hidden="{{planName.value.includes('FSA')}}"
      label=""
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showInEditor={true}
      showSelectionIndicator={true}
      value="{{planName.value !== 'LSA' ? self.data['0'].name : null}}"
      values="{{ item.name }}"
    >
      <Option id="d95f0" value="Option 1" />
      <Option id="f9212" value="Option 2" />
      <Option id="42ebf" value="Option 3" />
    </Select>
    <Select
      id="select1"
      allowDeselect={true}
      disabled="{{disableOptions.value}}"
      emptyMessage="No options"
      hidden=""
      itemMode="static"
      label="Grace Period"
      labelWidth="55"
      overlayMaxHeight={375}
      showInEditor={true}
      showSelectionIndicator={true}
    >
      <Option id="3bc5f" label="Yes" value="t" />
      <Option id="cdfc9" label="No" value="f" />
    </Select>
    <Select
      id="select2"
      allowDeselect={true}
      disabled="{{disableOptions.value}}"
      emptyMessage="No options"
      hidden=""
      itemMode="static"
      label="Rollover "
      labelWidth="55"
      overlayMaxHeight={375}
      showInEditor={true}
      showSelectionIndicator={true}
    >
      <Option id="3bc5f" label="Yes" value="t" />
      <Option id="cdfc9" label="No" value="f" />
    </Select>
    <Select
      id="select3"
      allowDeselect={true}
      disabled="{{disableOptions.value}}"
      emptyMessage="No options"
      hidden="{{select2.value !== 't'}}"
      itemMode="static"
      label="Unlimit Rollover"
      labelWidth="55"
      overlayMaxHeight={375}
      showInEditor={true}
      showSelectionIndicator={true}
    >
      <Option id="3bc5f" label="Yes" value="t" />
      <Option id="cdfc9" label="No" value="f" />
    </Select>
    <Select
      id="select4"
      allowDeselect={true}
      disabled="{{disableOptions.value}}"
      emptyMessage="No options"
      hidden=""
      itemMode="static"
      label="Runout"
      labelWidth="55"
      overlayMaxHeight={375}
      showInEditor={true}
      showSelectionIndicator={true}
    >
      <Option id="3bc5f" label="Yes" value="t" />
      <Option id="cdfc9" label="No" value="f" />
    </Select>
    <Select
      id="select5"
      allowDeselect={true}
      disabled="{{disableOptions.value}}"
      emptyMessage="No options"
      hidden="{{select4.value !== 't'}}"
      itemMode="static"
      label="Terminated Runout"
      labelWidth="55"
      overlayMaxHeight={375}
      showInEditor={true}
      showSelectionIndicator={true}
    >
      <Option id="3bc5f" label="Yes" value="t" />
      <Option id="cdfc9" label="No" value="f" />
    </Select>
    <Select
      id="select6"
      allowDeselect={true}
      disabled="{{disableOptions.value}}"
      emptyMessage="No options"
      hidden="{{planName.value.includes('FSA')}}"
      itemMode="static"
      label="Auto Adjudicat"
      labelWidth="55"
      overlayMaxHeight={375}
      showInEditor={true}
      showSelectionIndicator={true}
    >
      <Option id="3bc5f" label="Yes" value="t" />
      <Option id="cdfc9" label="No" value="f" />
    </Select>
    <Select
      id="select7"
      allowDeselect={true}
      disabled="{{disableOptions.value}}"
      emptyMessage="No options"
      hidden="{{planName.value.includes('FSA')}}"
      itemMode="static"
      label="Dep Coverage"
      labelWidth="55"
      overlayMaxHeight={375}
      showInEditor={true}
      showSelectionIndicator={true}
    >
      <Option id="3bc5f" label="Yes" value="t" />
      <Option id="cdfc9" label="No" value="f" />
    </Select>
    <Select
      id="select8"
      allowDeselect={true}
      disabled="{{disableOptions.value}}"
      emptyMessage="No options"
      hidden="{{planName.value.includes('FSA')}}"
      itemMode="static"
      label="Balance Avail"
      labelWidth="55"
      overlayMaxHeight={375}
      showInEditor={true}
      showSelectionIndicator={true}
    >
      <Option
        id="3bc5f"
        label="Contributions"
        tooltip="Contributions"
        value="Contributions"
      />
      <Option id="cdfc9" label="Day1" tooltip="Day1" value="Day1" />
    </Select>
  </View>
</Container>

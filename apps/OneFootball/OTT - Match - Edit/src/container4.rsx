<Container
  id="container4"
  hoistFetching={true}
  showBody={true}
  style={{
    ordered: [{ borderRadius: "0px" }, { border: "rgba(255, 255, 255, 0)" }],
  }}
  styleContext={{ ordered: [{ borderRadius: "0px" }] }}
>
  <Header>
    <Text
      id="containerTitle2"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="30ec8" viewKey="View 1">
    <TextInput
      id="textInput1"
      disabled="true"
      label="SKU"
      placeholder="Enter value"
      readOnly="true"
      value="{{getProductBySKU.data.sku}}"
    />
    <TextInput
      id="textInput2"
      disabled="true"
      label="Kickoff"
      placeholder="Enter value"
      readOnly="true"
      value="{{getProductBySKU.data.match.kickoff}}"
    />
    <TextInput
      id="textInput3"
      disabled="true"
      label="Team Home"
      placeholder="Enter value"
      readOnly="true"
      value="{{getProductBySKU.data.match.home_team.name}}"
    />
    <TextInput
      id="textInput4"
      disabled="true"
      label="Team Away"
      placeholder="Enter value"
      readOnly="true"
      value="{{getProductBySKU.data.match.away_team.name}}"
    />
    <Select
      id="selectPrice"
      allowDeselect={true}
      allowSearch={true}
      data={'{{[""].concat(getPrices.data.prices.map(p=>p.tier))}}\n'}
      deprecatedLabels=""
      label="PPV Price"
      labels=""
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{getProductBySKU.data.price}}"
      values="{{ item }}"
    />
    <CheckboxGroup
      id="checkboxMerchant"
      data="['apple', 'google', 'web', 'tv-os', 'google-tv', 'fire-tv', 'web-tv', 'distributed']"
      deprecatedLabels=""
      groupLayout="singleColumn"
      label="Match available in"
      labels="{{ ['Apple', 'Google', 'Web', 'Apple TV', 'Google TV', 'Fire TV', 'Web TV (Samsung, LG, etc..)', 'Distributed'][i] }}"
      value="{{getProductBySKU.data.merchant}}"
      values="{{ item }}"
    />
    <RadioGroup
      id="radioPushNotifications"
      data="[true, false, null]"
      deprecatedLabels=""
      groupLayout="singleColumn"
      label="Push Notifications"
      labels="{{ ['Enabled', 'Disabled', 'Inherit from Competition'][i] }}"
      value="{{getProductBySKU.data.push_enabled}}"
      values="{{ item }}"
    />
    <RadioGroup
      id="radioRecreateContent"
      disabled="{{getProductBySKU.data.source_of_truth === 'external'}}"
      groupLayout="singleColumn"
      hidden=""
      itemMode="static"
      label="Recreate Content in Stream Video Provider"
      labelCaption="only for OF sourced content"
      value="{{ self.values[0] }}"
    >
      <Option id="5207f" label="No" value="false" />
      <Option id="f1cc2" label="Yes" value="true" />
    </RadioGroup>
    <RadioGroup
      id="checkboxDRMEnabled"
      data="[false, true]"
      groupLayout="singleColumn"
      label="DRM protected"
      labels="{{['No', 'Yes'][i]}}"
      value="{{ getProductBySKU.data.drm_enabled }}"
      values="{{item}}"
    >
      <Option id="5207f" label="No" value="false" />
      <Option id="f1cc2" label="Yes" value="true" />
      <Event
        enabled="{{ !radioRecreateContent.disabled && !radioRecreateContent.value }}"
        event="change"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "warning" },
                  { duration: "4" },
                  {
                    title:
                      "Please set recreate content to true and read notes to change DRM",
                  },
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
      <Event
        enabled="{{ !radioRecreateContent.disabled && !radioRecreateContent.value }}"
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: "checkboxDRMEnabled.setValue(getProductBySKU.data.drm_enabled)",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <RadioGroup
      id="checkboxSalesDisabled"
      data="[false, true]"
      groupLayout="singleColumn"
      label="Sales disabled"
      labels="{{['No', 'Yes'][i]}}"
      value="{{ getProductBySKU.data.sales_disabled }}"
      values="{{item}}"
    >
      <Option id="5207f" label="No" value="false" />
      <Option id="f1cc2" label="Yes" value="true" />
      <Event
        enabled="{{ !radioRecreateContent.disabled && !radioRecreateContent.value }}"
        event="change"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "warning" },
                  { duration: "4" },
                  {
                    title:
                      "Please set recreate content to true and read notes to change DRM",
                  },
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
      <Event
        enabled="{{ !radioRecreateContent.disabled && !radioRecreateContent.value }}"
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: "checkboxSalesDisabled.setValue(getProductBySKU.data.drm_enabled)",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
  </View>
</Container>

<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Frame id="$main" type="main">
    <Text
      id="text1"
      _defaultValue=""
      value="#### Ad Annotations"
      verticalAlign="center"
    />
    <Text
      id="text2"
      _defaultValue=""
      value="#### Ad Extensions"
      verticalAlign="center"
    />
    <CheckboxGroup
      id="checkboxGroup_adAnnotations"
      _defaultValue={{ array: [] }}
      data="['adEnable4thLine','adEnableTopAd','adEnableSecurityBadge','adEnableBrand','adSmartAnnotations','MerchRating']"
      hideLabel={true}
      label="Ad Annotations"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      value="{{load_Config.data.adAnnotations}}"
      values="{{ item }}"
    />
    <CheckboxGroup
      id="checkboxGroup_adExtensions"
      _defaultValue={{ array: [] }}
      captionByIndex=""
      data="['LocalAds','longAdsTitle','osb','siteLink','CallExtension','favicon','adEnableProductAds','adEnableCalloutExtension','adEnableReview','adEnableActionExt','adImageExtensions']"
      disabledByIndex=""
      hiddenByIndex=""
      hideLabel={true}
      label="Ad Extensions"
      labelPosition="top"
      labels=""
      tooltipByIndex=""
      value="{{ load_Config.data.adExtensions }}"
      values=""
    >
      <Option id="b5085" disabled={false} hidden={false} value="LocalAds" />
      <Option id="df4d8" disabled={false} hidden={false} value="longAdsTitle" />
      <Option
        id="8ecb6"
        disabled={false}
        hidden={false}
        label="osb"
        value="Option 3"
      />
      <Option id="c3fd8" disabled={false} hidden={false} value="siteLink" />
      <Option id="f5c2a" disabled={false} hidden={false} value="Option 5" />
      <Option id="035f3" disabled={false} hidden={false} value="Option 6" />
      <Option id="77d33" disabled={false} hidden={false} value="Option 7" />
      <Option id="ba11a" disabled={false} hidden={false} value="Option 8" />
      <Option id="3ab20" disabled={false} hidden={false} value="Option 9" />
      <Option id="b4c08" disabled={false} hidden={false} value="Option 10" />
      <Option id="95b3e" disabled={false} hidden={false} value="Option 11" />
      <Option id="b6d51" disabled={false} hidden={false} value="Option 12" />
    </CheckboxGroup>
    <Text
      id="text3"
      _defaultValue=""
      value="#### Miscellaneous"
      verticalAlign="center"
    />
    <CheckboxGroup
      id="checkboxGroup_miscellaneous"
      _defaultValue={{ array: [] }}
      data="['bolding','moreSponsoredResults']"
      hideLabel={true}
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      value="{{ load_Config.data.miscellaneous }}"
      values="{{ item }}"
    />
    <Button id="button_saveFeedConfig" styleVariant="solid" text="Save">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_Config"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_feedSetting"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>

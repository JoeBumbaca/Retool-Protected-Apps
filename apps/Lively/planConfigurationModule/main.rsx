<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetOutput id="autoAdjudication" value="{{select6.value}}" />
  <GlobalWidgetOutput id="balanceAvailability" value="{{select8.value}}" />
  <GlobalWidgetOutput id="dependentCoverage" value="{{select7.value}}" />
  <GlobalWidgetOutput id="gracePeriodEnabled" value="{{select1.value}}" />
  <GlobalWidgetProp id="planName" defaultValue="LSA" />
  <GlobalWidgetOutput id="productName" value="{{select9.value}}" />
  <GlobalWidgetOutput id="rolloverEnabled" value="{{select2.value}}" />
  <GlobalWidgetOutput id="rolloverType" value="{{select3.value}}" />
  <GlobalWidgetOutput id="runoutEnabled" value="{{select4.value}}" />
  <GlobalWidgetOutput id="terminatedRunoutEnabled" value="{{select5.value}}" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Include src="./src/container1.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>

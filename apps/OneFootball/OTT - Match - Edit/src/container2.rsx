<Container
  id="container2"
  currentViewKey="{{ self.viewKeys[0] }}"
  disabled=""
  hidden={null}
  hoistFetching={true}
  maintainSpaceWhenHidden={null}
  overflowType="hidden"
  selectedView="View 1"
  showBody={true}
  showFooter={true}
  showHeader={true}
  showInEditor={null}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="container2"
      value="{{ self.values[0] }}"
    >
      <Option id="fa187" value="Tab 1" />
      <Option id="f83ac" value="Tab 2" />
      <Option id="f073b" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="" viewKey="Product Info" />
  <View
    id="fc349"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Localization"
  >
    <Container
      id="container5"
      hoistFetching={true}
      showBody={true}
      style={{ ordered: [{ border: "rgba(255, 255, 255, 0)" }] }}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="b4056" viewKey="View 1">
        <Select
          id="selectCommentaryLanguage"
          allowCustomValue={true}
          allowDeselect={true}
          allowSearch={true}
          data="['',
'de',
'en',
'es',
'fr',
'it',
'pt',
'sk',
'lv']"
          deprecatedLabels="['',
'de - Germany',
'en - English',
'es - Spanish',
'fr - French',
'it - Italian',
'pt - Portuguese',
'sk - Slovak',
'lv - Latvian']"
          label="Commentary language"
          labels="{{ self.deprecatedLabels[i] }}"
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{getProductBySKU.data.commentary_languages[0]}}"
          values="{{ item }}"
        />
        <TextArea
          id="textInputCountriesOfPurchase"
          autoResize={true}
          label="Countries of purchase (comma-separated)"
          minLines="8"
          placeholder="pt,en,de..."
          value="{{getProductBySKU.data.countries_of_purchase.join()}}"
        />
        <TextArea
          id="textInputCountriesOfConsumption"
          autoResize={true}
          label="Countries of consumption (comma-separated)"
          minLines="8"
          placeholder="pt,en,de..."
          value="{{getProductBySKU.data.countries_of_consumption.join()}}"
        />
      </View>
    </Container>
  </View>
  <View
    id="7e184"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Content Technical Info"
  >
    <Include src="./container6.rsx" />
    <Container
      id="container3"
      currentViewKey="{{(getProductBySKU.data.source_type === 'rtmp') ? 'rtmp' : getProductBySKU.data.source_type === 'hls' || getProductBySKU.data.source_type === 'srt' ? 'hls_or_srt' : 'sat_or_unknown' }}"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{
        ordered: [
          { border: "rgba(209, 209, 209, 0)" },
          { borderRadius: "0px" },
        ],
      }}
      styleContext={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="containerTitle1"
          value={
            '**Source Type:** {{ {rtmp:"RTMP",srt:"SRT-Caller(SRT)",udp:"SRT-Listener(UDP)"}[getProductBySKU.data.source_type] }}'
          }
          verticalAlign="center"
        />
      </Header>
      <View id="30ec8" viewKey="rtmp">
        <Select
          id="selectRtmp"
          data="{{ getRtmpSlots.data.slots }}"
          label="RTMP Slot"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="{{ getProductBySKU.data.path }}"
          showSelectionIndicator={true}
          value="{{ getProductBySKU.data.path }}"
          values="{{ item.name }}"
        />
      </View>
      <View
        id="c2001"
        disabled={false}
        hidden={false}
        iconPosition="left"
        viewKey="hls_or_srt"
      >
        <TextInput
          id="selectPathHlsOrSrt"
          disabled=""
          label="Path"
          placeholder="Enter value"
          readOnly=""
          value="{{getProductBySKU.data.path}}"
        />
      </View>
      <View
        id="49956"
        disabled={false}
        hidden={false}
        iconPosition="left"
        viewKey="sat_or_unknown"
      >
        <TextInput
          id="selectSatOrUnknown"
          disabled="true"
          label="Path"
          placeholder="Enter value"
          readOnly="true"
          value="{{ getProductBySKU.data.path }}"
        />
      </View>
    </Container>
  </View>
  <View
    id="63472"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Thumbnail"
  >
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs2"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="0c5ec" value="Tab 1" />
          <Option id="5331d" value="Tab 2" />
          <Option id="2e530" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="ae2d1" viewKey="Current">
        <Image
          id="image1"
          horizontalAlign="center"
          src="{{ getProductBySKU.data.thumbnail_url }}"
        />
      </View>
      <View id="b9fd9" viewKey="Upload">
        <FileDropzone
          id="select_thumbnail"
          appendNewSelection={true}
          iconBefore="upload"
          label="Thumbnail"
          labelCaption=".png only, max 128KB"
          placeholder="Select or drag and drop"
        />
      </View>
      <View id="87c81" viewKey="Link">
        <TextInput
          id="select_thumbnail_url"
          label="Thumbnail URL"
          labelCaption="Fill this if you want to use an image that is already uploaded"
          labelWidth="50"
          placeholder="Enter value"
        />
      </View>
    </Container>
  </View>
  <Body>
    <Include src="./container4.rsx" />
    <Text
      id="text5"
      style={{ ordered: [{ background: "canvas" }] }}
      value={
        '⚠️ Changing "PPV Price" will also update prices in Apple store and Google store'
      }
      verticalAlign="center"
    />
    <Text
      id="text6"
      style={{ ordered: [{ background: "canvas" }] }}
      value="* Removing match from all platforms will cause it to become unavailable immediately
* After platforms are "
      verticalAlign="center"
    />
    <Text
      id="text2"
      style={{ ordered: [{ background: "canvas" }] }}
      value="⚠️ SR currently does not support changing DRM on content update, so in order to change **is_drm** flag on an already created content you must:
* Change **DRM protected** field
* Set **Recreate content** field to true
* Once a new content has been crearted (~5 minutes), go to old content in SR admin and set it to error "
      verticalAlign="center"
    />
    <Text
      id="text4"
      style={{ ordered: [{ background: "canvas" }] }}
      value={
        '⚠️ Changing value for "Sales disabled" will cause QoS checks to be ignored for this product'
      }
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Button id="btnUpdate" disabled="" styleVariant="solid" text="Update">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="queryUpdateButton"
        type="datasource"
        waitMs="1000"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>

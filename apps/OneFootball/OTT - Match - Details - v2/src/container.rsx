<Container
  id="container"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="generalTabs"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="container"
      value="{{ self.values[0] }}"
    >
      <Option id="35dda" value="Tab 1" />
      <Option id="bb0ed" value="Tab 2" />
      <Option id="8eb29" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="8be98" viewKey="Product Info">
    <Container
      id="container2"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="**Thumbnail**"
          verticalAlign="center"
        />
      </Header>
      <View id="b4056" viewKey="View 1">
        <Image
          id="image4"
          horizontalAlign="center"
          src="{{ query_get_product.data.thumbnail_url }}"
        />
      </View>
    </Container>
    <Text
      id="text42"
      value="**Is available:** {{query_get_product.data.is_available == true ? 'Yes ✅' : 'No ❌'}}"
      verticalAlign="center"
    />
    <Text
      id="text13"
      value="**Partner:** {{ query_get_product.data.partner.key }} - {{ query_get_product.data.partner.display_name }}"
      verticalAlign="center"
    />
    <Text
      id="text40"
      value={
        '**Rights Id:** <a href="https://retool.onefootball.com/apps/OTT/OTT%20-%20Competitions%20-%20Details?rightsId={{query_get_product.data.rights_id}}">{{query_get_product.data.rights_id}}</a>'
      }
      verticalAlign="center"
    />
    <Text id="text36" value="**Match Available in:**" verticalAlign="center" />
    <ListView
      id="listView1"
      instances="{{query_get_product.data.merchant.length }}"
      rowKeys="{{query_get_product.data.merchant}}"
      showBorder={false}
      showDropShadow={false}
    >
      <Text
        id="text69"
        value="* {{query_get_product.data.merchant[i] }}"
        verticalAlign="center"
      />
    </ListView>
    <Text
      id="text8"
      value="**Competition:** {{query_get_product.data.match.competition.name}} ({{query_get_product.data.match.competition.id}})"
      verticalAlign="center"
    />
    <Text
      id="text41"
      value="**Sales disabled:** {{query_get_product.data.sales_disabled == true ? 'Yes' : 'No'}} "
      verticalAlign="center"
    />
    <Text
      id="text47"
      value="**DRM protected:** {{query_get_product.data.drm_enabled == true ? 'Yes' : 'No'}}"
      verticalAlign="center"
    />
    <Text
      id="text34"
      value="**Push notifications:** {{query_get_product.data.push_enabled == true ? 'Yes' : 'No'}}"
      verticalAlign="center"
    />
    <Text
      id="text35"
      value="**Price Tier:** {{query_get_product.data.price}}"
      verticalAlign="center"
    />
    <Text
      id="text83"
      value="**Status on AppStore:** TODO"
      verticalAlign="center"
    />
    <Text
      id="text44"
      value="**Source of truth:** {{query_get_product.data.source_of_truth}}"
      verticalAlign="center"
    />
    <Text
      id="text72"
      value="**Created Via:** {{query_get_product.data.created_via}}"
      verticalAlign="center"
    />
  </View>
  <View
    id="9c761"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Localization"
  >
    <Text
      id="text79"
      value="**Commentary language:** {{query_get_product.data.commentary_languages}}"
      verticalAlign="center"
    />
    <Text
      id="text80"
      value="**Countries of consumption:** 
{{query_get_product.data.countries_of_consumption}}"
      verticalAlign="center"
    />
    <Text
      id="text81"
      value="**Countries of purchase:** 
{{query_get_product.data.countries_of_purchase}}"
      verticalAlign="center"
    />
  </View>
  <View id="77a1c" viewKey="Content Technical Info">
    <Text
      id="text76"
      value="**Encoding start time offset:** {{ query_get_product.data.encoding_build_up_minutes }}m ({{ query_get_product.data.encoding_start_time.toLocaleString() }})"
      verticalAlign="center"
    />
    <Text
      id="text17"
      value="**Video Path Provider:** {{query_get_product.data.stream_provider}}"
      verticalAlign="center"
    />
    <Text
      id="text74"
      value="**Minutes before kickoff:** {{query_get_product.data.live_build_up_minutes}}m ({{ query_get_product.data.minutes_before_kickoff_time.toLocaleString() }})"
      verticalAlign="center"
    />
    <Text
      id="text24"
      value="**Status:** {{query_get_product.data.stream_state}}"
      verticalAlign="center"
    />
    <Text
      id="text75"
      value="**Minutes after final whistle:** {{query_get_product.data.live_wrap_up_minutes}}m"
      verticalAlign="center"
    />
    <Text
      id="text10"
      value="**Content Id:** {{query_get_product.data.content_id}}"
      verticalAlign="center"
    />
    <Text
      id="text77"
      value="**Encoding end time offset:** {{query_get_product.data.encoding_wrap_up_minutes}}m"
      verticalAlign="center"
    />
    <Text
      id="text26"
      value={
        '**Source Type:** {{\n{srt:"SRT-Caller(SRT)", udp:"SRT-Listener(UDP)", rtmp: "RTMP"}[query_get_product.data.source_type]\n}}'
      }
      verticalAlign="center"
    />
    <Text
      id="text20"
      value="**Path:** {{query_get_product.data.path}}"
      verticalAlign="center"
    />
    <Button
      id="button1"
      style={{ ordered: [{ background: "canvas" }] }}
      styleVariant="solid"
      text="Video Provider Backoffice - Stream Details"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "https://spott2.sportradar.com/content-manager/content-list/{{query_get_content_sportradar.data.data.event.id}}/event-target/{{query_get_content_sportradar.data.data.id}}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="c27c6"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Content QoS Checks"
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
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="3bd89" value="Tab 1" />
          <Option id="d650e" value="Tab 2" />
          <Option id="b55d0" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="77a04" viewKey="Source Signal">
        <TableLegacy
          id="table1"
          _columns={[
            "timestamp",
            "status",
            "path",
            "reason",
            "details",
            "video_height",
            "video_bit_rate",
            "video_avg_frame_rate",
          ]}
          _columnVisibility={{
            ordered: [
              { team_home: true },
              { period: true },
              { details: true },
              { video_avg_frame_rate: true },
              { rights_id: false },
              { season: true },
              { reason: true },
              { path: true },
              { score_away_first_half: true },
              { coverage: true },
              { kickoff: false },
              { group_name: true },
              { video_height: true },
              { away_team_id: false },
              { score_home: true },
              { home_team_name: false },
              { team_away: true },
              { provider: false },
              { minute: true },
              { score_home_first_half: true },
              { video_bit_rate: true },
              { Timestamp: true },
              { minute_display: true },
              { matchday: true },
              { type: true },
              { score_away: true },
              { id: false },
              { health: true },
              { away_team_name: false },
              { sku: false },
              { home_team_id: false },
              { stadium: true },
              { competition: true },
              { ts: true },
            ],
          }}
          _unfilteredSelectedIndex=""
          applyDynamicSettingsToColumnOrder={false}
          columnColors={{
            ordered: [
              { stream: "" },
              { team_home: "" },
              { period: "" },
              { details: "" },
              { video_avg_frame_rate: "" },
              { rights_id: "" },
              { season: "" },
              { reason: "" },
              { path: "" },
              { score_away_first_half: "" },
              { origin: "" },
              { coverage: "" },
              { kickoff: "" },
              { group_name: "" },
              { video_height: "" },
              { away_team_id: "" },
              { score_home: "" },
              { home_team_name: "" },
              { team_away: "" },
              { provider: "" },
              { status: "{{ self === 'ok' ? 'green' : 'red' }}" },
              { minute: "" },
              { score_home_first_half: "" },
              { video_bit_rate: "" },
              { Timestamp: "" },
              { timestamp: "" },
              { minute_display: "" },
              { matchday: "" },
              { type: "" },
              { score_away: "" },
              { id: "" },
              { health: "{{self == 'error' ? 'red' : 'green'}}" },
              { away_team_name: "" },
              { sku: "" },
              { home_team_id: "" },
              { stadium: "" },
              { competition: "" },
              { ts: "" },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { details: "Details" },
              { video_avg_frame_rate: "Video AVG Frame Rate" },
              { reason: "Reason" },
              { path: "Path" },
              { video_height: "Video Height" },
              { status: "Status" },
              { video_bit_rate: "Video Bit Rate" },
              { timestamp: "Timestamp" },
              { health: "Status" },
            ],
          }}
          columnMappers={{
            ordered: [
              { timestamp: "{{new Date(Date.parse(self)).toLocaleString()}}" },
            ],
          }}
          columns={[
            "Timestamp",
            "type",
            "health",
            "path",
            "reason",
            "details",
            "video_height",
            "video_bit_rate",
            "video_avg_frame_rate",
          ]}
          columnVisibility={{
            ordered: [
              { team_home: true },
              { period: true },
              { details: true },
              { video_avg_frame_rate: true },
              { rights_id: false },
              { season: true },
              { reason: true },
              { path: true },
              { score_away_first_half: true },
              { coverage: true },
              { kickoff: false },
              { group_name: true },
              { video_height: true },
              { away_team_id: false },
              { score_home: true },
              { home_team_name: false },
              { team_away: true },
              { provider: false },
              { minute: true },
              { score_home_first_half: true },
              { video_bit_rate: true },
              { Timestamp: true },
              { minute_display: true },
              { matchday: true },
              { type: true },
              { score_away: true },
              { id: false },
              { health: true },
              { away_team_name: false },
              { sku: false },
              { home_team_id: false },
              { stadium: true },
              { competition: true },
              { ts: true },
            ],
          }}
          columnWidths={[
            { object: { id: "timestamp", value: 225.203125 } },
            { object: { id: "path", value: 167.5625 } },
          ]}
          customButtonName=""
          data="{{ query_get_health_checks.data.origin }}"
          defaultSelectedRow="none"
          pageSize={21}
          selectRowByDefault={false}
          showColumnBorders={true}
        />
      </View>
      <View id="0f157" viewKey="Encoded Signal">
        <TableLegacy
          id="table7"
          _columns={[
            "timestamp",
            "status",
            "path",
            "reason",
            "details",
            "video_height",
            "video_bit_rate",
            "video_avg_frame_rate",
          ]}
          _columnVisibility={{
            ordered: [
              { team_home: true },
              { period: true },
              { details: true },
              { video_avg_frame_rate: false },
              { rights_id: false },
              { season: true },
              { reason: true },
              { path: true },
              { score_away_first_half: true },
              { coverage: true },
              { kickoff: false },
              { group_name: true },
              { video_height: false },
              { away_team_id: false },
              { score_home: true },
              { home_team_name: false },
              { team_away: true },
              { provider: false },
              { minute: true },
              { score_home_first_half: true },
              { video_bit_rate: false },
              { Timestamp: true },
              { minute_display: true },
              { matchday: true },
              { type: true },
              { score_away: true },
              { id: false },
              { health: true },
              { away_team_name: false },
              { sku: false },
              { home_team_id: false },
              { stadium: true },
              { competition: true },
              { ts: true },
            ],
          }}
          _unfilteredSelectedIndex=""
          applyDynamicSettingsToColumnOrder={false}
          columnColors={{
            ordered: [
              { team_home: "" },
              { period: "" },
              { details: "" },
              { video_avg_frame_rate: "" },
              { rights_id: "" },
              { season: "" },
              { reason: "" },
              { path: "" },
              { score_away_first_half: "" },
              { coverage: "" },
              { kickoff: "" },
              { group_name: "" },
              { video_height: "" },
              { away_team_id: "" },
              { score_home: "" },
              { home_team_name: "" },
              { team_away: "" },
              { provider: "" },
              { status: "{{ self === 'ok' ? 'green' : 'red' }}" },
              { minute: "" },
              { score_home_first_half: "" },
              { video_bit_rate: "" },
              { Timestamp: "" },
              { timestamp: "" },
              { minute_display: "" },
              { matchday: "" },
              { type: "" },
              { score_away: "" },
              { id: "" },
              { health: "{{self == 'error' ? 'red' : 'green'}}" },
              { away_team_name: "" },
              { sku: "" },
              { home_team_id: "" },
              { stadium: "" },
              { competition: "" },
              { ts: "" },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { health: "Status" },
              { path: "Path" },
              { reason: "Reason" },
              { details: "Details" },
              { status: "Status" },
              { timestamp: "Timestamp" },
            ],
          }}
          columnMappers={{
            ordered: [
              { timestamp: "{{new Date(Date.parse(self)).toLocaleString()}}" },
            ],
          }}
          columns={[
            "Timestamp",
            "type",
            "health",
            "path",
            "reason",
            "details",
            "video_height",
            "video_bit_rate",
            "video_avg_frame_rate",
          ]}
          columnVisibility={{
            ordered: [
              { team_home: true },
              { period: true },
              { details: true },
              { video_avg_frame_rate: true },
              { rights_id: false },
              { season: true },
              { reason: true },
              { path: true },
              { score_away_first_half: true },
              { coverage: true },
              { kickoff: false },
              { group_name: true },
              { video_height: true },
              { away_team_id: false },
              { score_home: true },
              { home_team_name: false },
              { team_away: true },
              { provider: false },
              { minute: true },
              { score_home_first_half: true },
              { video_bit_rate: true },
              { Timestamp: true },
              { minute_display: true },
              { matchday: true },
              { type: true },
              { score_away: true },
              { id: false },
              { health: true },
              { away_team_name: false },
              { sku: false },
              { home_team_id: false },
              { stadium: true },
              { competition: true },
              { ts: true },
            ],
          }}
          columnWidths={[
            { object: { id: "path", value: 163.5625 } },
            { object: { id: "health", value: 129.109375 } },
            { object: { id: "Timestamp", value: 195.78125 } },
          ]}
          customButtonName=""
          data="{{ query_get_health_checks.data.stream }}"
          defaultSelectedRow="none"
          pageSize={21}
          selectRowByDefault={false}
          showColumnBorders={true}
        />
      </View>
    </Container>
  </View>
  <View
    id="a9adf"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Live Stream"
  >
    <Text
      id="no_video_placeholder"
      heightType="fixed"
      hidden="{{ !query_get_product.data.drm_enabled && query_get_product.data.stream_state === 'live' }}"
      horizontalAlign="center"
      style={{
        ordered: [{ background: "canvas" }, { color: "rgb(157, 157, 157)" }],
      }}
      value="{{ query_get_product.data.drm_enabled ? '#### Video is DRM protected' : '#### Video is currently unavailable' }}"
      verticalAlign="center"
    />
    <CustomComponent
      id="video"
      hidden="{{ query_get_product.data.drm_enabled || query_get_product.data.stream_state !== 'live' }}"
      iframeCode={
        '<head>\n    <link href="https://vjs.zencdn.net/7.19.2/video-js.css" rel="stylesheet" />\n  </head>\n<video-js id=vid1 width=600 height=300 class="vjs-default-skin" controls>\n    <source id="vidSource" src="" type="application/x-mpegURL">\n  </video-js>\n  <script src="https://vjs.zencdn.net/7.19.2/video.min.js"></script>\n  <script src="https://unpkg.com/@videojs/http-streaming@2.14.2/dist/videojs-http-streaming.min.js"></script>\n  <script>\n      window.Retool.subscribe(function(model) {\n        document.getElementById("vidSource").src = model.stream_url;\n        var player = videojs(\'vid1\', {\n          autoplay: \'muted\'\n        });\n      })\n  \n  </script>'
      }
      model={'{\n  "stream_url": "{{query_get_ppv_match.data.stream.url}}"\n}'}
    />
  </View>
  <View id="fd93d" viewKey="Match Statistics">
    <Text
      id="text12"
      value="**Purchases:** {{query_count_purchases.data.purchases.total}}
"
      verticalAlign="center"
    />
    <TableLegacy
      id="tablePurchases"
      _columnSummaryTypes={{ ordered: [{ Apple: "sum" }] }}
      _columnSummaryValues={{ ordered: [{ Apple: "" }] }}
      _columnVisibility={{ ordered: [{ Coupon: true }] }}
      _compatibilityMode={false}
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={[
        "Custom Column 1",
        "Custom Column 2",
        "Custom Column 3",
        "Custom Column 4",
        "Custom Column 5",
        "Custom Column 6",
      ]}
      columnAlignment={{
        ordered: [
          { TotalPurchases: "left" },
          { store: "left" },
          { Apple: "right" },
        ],
      }}
      columnColors={{
        ordered: [
          { test2: "" },
          { Store: "" },
          { store: "" },
          { Coupon: "" },
          { name: "" },
          { TotalPurchases: "" },
          { Count: "" },
          { Android: "" },
          { 0: "" },
          { 1: "" },
          { 2: "" },
          { test: "" },
          { 3: "" },
          { 4: "" },
          { 5: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
          { "Custom Column 3": "" },
          { "Custom Column 4": "" },
          { "Custom Column 5": "" },
          { type: "" },
          { Apple: "" },
          { "Custom Column 6": "" },
          { Adyen: "" },
        ],
      }}
      columnFormats={{ ordered: [{ Apple: "NumberDataCell" }] }}
      columnFrozenAlignments={{ ordered: [{ Coupon: "right" }] }}
      columnHeaderNames={{ ordered: [{ store: "Store" }] }}
      columnMappers={{
        ordered: [
          { Android: "0" },
          { Apple: "1" },
          { Adyen: "2" },
          { Coupon: "3" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          {
            Apple: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
        ],
      }}
      customButtonName=""
      data={
        '[{"Store": "Android", "Count": {{ query_count_purchases.data.purchases.store.android}} },{"Store": "Apple", "Count": {{ query_count_purchases.data.purchases.store.apple}} },{"Store": "Adyen", "Count": {{ query_count_purchases.data.purchases.store.adyen}} },{"Store": "Coupon", "Count": {{ query_count_purchases.data.purchases.store.coupon}} }]'
      }
      defaultSelectedRow="none"
      defaultSortByColumn="Store"
      dynamicColumnSettings=""
      showBoxShadow={false}
      showDownloadButton={false}
      showFilterButton={false}
      showRefreshButton={false}
    />
  </View>
  <View
    id="a9e56"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Emergency Contacts"
  >
    <Text id="text70" value="*To be done soon ™️*" verticalAlign="center" />
  </View>
  <View
    id="c7807"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Audit Logs"
  >
    <TableLegacy
      id="table5"
      _columns={[
        "createdAt",
        "Custom Column 1",
        "email",
        "firstName",
        "lastName",
        "body",
        "status",
        "error",
      ]}
      _columnSummaryTypes={{ ordered: [{ body: "" }, { createdAt: "" }] }}
      _columnSummaryValues={{ ordered: [{ body: "" }, { createdAt: "" }] }}
      _columnVisibility={{
        ordered: [{ firstName: false }, { lastName: false }],
      }}
      _compatibilityMode={false}
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{
        ordered: [{ body: "left" }, { status: "left" }, { createdAt: "left" }],
      }}
      columnColors={{
        ordered: [
          { team_home: "" },
          { period: "" },
          { lastName: "" },
          { body: "" },
          { season: "" },
          { score_away_first_half: "" },
          { coverage: "" },
          { error: "" },
          { kickoff: "" },
          { group_name: "" },
          { score_home: "" },
          { actionType: "" },
          { team_away: "" },
          { status: "{{self >= 300 ? '#FF5733' : '#80F181'}}" },
          { queryName: "" },
          { minute: "" },
          { score_home_first_half: "" },
          { "Custom Column 1": "" },
          { minute_display: "" },
          { matchday: "" },
          { score_away: "" },
          { id: "" },
          { createdAt: "" },
          { firstName: "" },
          { email: "" },
          { stadium: "" },
          { competition: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ "Custom Column 1": false }, { body: false }],
      }}
      columnFormats={{
        ordered: [
          { body: "MarkdownDataCell" },
          { createdAt: "DateTimeDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "Name" },
          { createdAt: "Date (UTC)" },
          { body: "Parameters" },
          { email: "Email" },
          { status: "Status" },
          { error: "Error" },
        ],
      }}
      columnMappers={{
        ordered: [
          {
            "Custom Column 1":
              "{{currentRow.firstName}} {{currentRow.lastName}} ",
          },
          { status: "{{self >= 300 ? 'Error' : 'Success'}}" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { body: { ordered: [] } },
          {
            createdAt: {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "dd/MM/yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "00:00" },
                { timeFormat: "HH:mm" },
              ],
            },
          },
        ],
      }}
      customButtonName=""
      data="{{ query_get_retool_logs.data }}"
      doubleClickToEdit={true}
      dynamicRowHeights={true}
      rowHeight="dense"
      showBoxShadow={false}
    />
  </View>
  <Event
    enabled="{{ generalTabs.selectedIndex == 5 }}"
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="query_new_relic_data"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</Container>

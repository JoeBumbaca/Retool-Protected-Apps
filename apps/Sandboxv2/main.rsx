<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Table
      id="virtualizedTable1"
      cellSelection="none"
      currentPage={null}
      data={
        '[{"id":1,"first_name":"Betta","last_name":"Jelliman","email":"bjelliman0@fema.gov","role":"editor","enabled":false},\n{"id":2,"first_name":"Desdemona","last_name":"Skates","email":"dskates1@berkeley.edu","role":"admin","enabled":true},\n{"id":3,"first_name":"Richmond","last_name":"Grisard","email":"rgrisard2@pagesperso-orange.fr","role":"editor","enabled":false},\n{"id":4,"first_name":"Nedi","last_name":"Scad","email":"nscad3@marriott.com","role":"editor","enabled":true},\n{"id":5,"first_name":"Shaylah","last_name":"Doble","email":"sdoble4@mac.com","role":"admin","enabled":true},\n{"id":6,"first_name":"Keane","last_name":"Tallon","email":"ktallon5@webnode.com","role":"editor","enabled":false},\n{"id":7,"first_name":"Lexis","last_name":"Meynell","email":"lmeynell6@pen.io","role":"admin","enabled":false},\n{"id":8,"first_name":"Joana","last_name":"Hellcat","email":"jhellcat7@stumbleupon.com","role":"viewer","enabled":false},\n{"id":9,"first_name":"Di","last_name":"Renish","email":"drenish8@yellowpages.com","role":"admin","enabled":false},\n{"id":10,"first_name":"Amberly","last_name":"Dooher","email":"adooher9@amazon.com","role":"editor","enabled":false},\n{"id":11,"first_name":"Bennett","last_name":"Whitelock","email":"bwhitelocka@t.co","role":"viewer","enabled":true},\n{"id":12,"first_name":"Gael","last_name":"Crut","email":"gcrutb@craigslist.org","role":"viewer","enabled":true},\n{"id":13,"first_name":"Dorian","last_name":"Cosham","email":"dcoshamc@ted.com","role":"editor","enabled":false},\n{"id":14,"first_name":"Arley","last_name":"Edgson","email":"aedgsond@walmart.com","role":"editor","enabled":true},\n{"id":15,"first_name":"Joan","last_name":"Aynscombe","email":"jaynscombee@nba.com","role":"viewer","enabled":false},\n{"id":16,"first_name":"Karon","last_name":"Lindback","email":"klindbackf@chron.com","role":"viewer","enabled":false},\n{"id":17,"first_name":"Anica","last_name":"Stood","email":"astoodg@seattletimes.com","role":"viewer","enabled":false},\n{"id":18,"first_name":"Goldy","last_name":"Osipov","email":"gosipovh@wp.com","role":"editor","enabled":false},\n{"id":19,"first_name":"Carolin","last_name":"Pioli","email":"cpiolii@posterous.com","role":"viewer","enabled":false},\n{"id":20,"first_name":"Clim","last_name":"Balog","email":"cbalogj@slate.com","role":"viewer","enabled":false},\n{"id":21,"first_name":"Bertrando","last_name":"Moult","email":"bmoultk@tripadvisor.com","role":"editor","enabled":false},\n{"id":22,"first_name":"Jonathon","last_name":"Lounds","email":"jloundsl@nba.com","role":"editor","enabled":true},\n{"id":23,"first_name":"Philomena","last_name":"Ansteys","email":"pansteysm@indiatimes.com","role":"editor","enabled":false},\n{"id":24,"first_name":"Igor","last_name":"Nana","email":"inanan@marketwatch.com","role":"admin","enabled":true},\n{"id":25,"first_name":"Tracey","last_name":"Cissen","email":"tcisseno@cam.ac.uk","role":"editor","enabled":true},\n{"id":26,"first_name":"Ulysses","last_name":"Antonioni","email":"uantonionip@archive.org","role":"viewer","enabled":false},\n{"id":27,"first_name":"Cullan","last_name":"Sedgeman","email":"csedgemanq@sfgate.com","role":"admin","enabled":true},\n{"id":28,"first_name":"Griswold","last_name":"Franceschielli","email":"gfranceschiellir@yahoo.co.jp","role":"admin","enabled":false},\n{"id":29,"first_name":"Fawn","last_name":"Crop","email":"fcrops@hud.gov","role":"viewer","enabled":false},\n{"id":30,"first_name":"Aurel","last_name":"O\'Griffin","email":"aogriffint@opera.com","role":"editor","enabled":true},\n{"id":31,"first_name":"Barrie","last_name":"Thaim","email":"bthaimu@paginegialle.it","role":"viewer","enabled":true},\n{"id":32,"first_name":"Chic","last_name":"Nowlan","email":"cnowlanv@gravatar.com","role":"editor","enabled":false},\n{"id":33,"first_name":"Sallee","last_name":"Dowker","email":"sdowkerw@meetup.com","role":"viewer","enabled":false},\n{"id":34,"first_name":"Madlin","last_name":"Tierny","email":"mtiernyx@disqus.com","role":"editor","enabled":false},\n{"id":35,"first_name":"Pepito","last_name":"Stit","email":"pstity@usa.gov","role":"admin","enabled":true},\n{"id":36,"first_name":"Evelina","last_name":"Sylvester","email":"esylvesterz@nifty.com","role":"editor","enabled":true},\n{"id":37,"first_name":"Ingeberg","last_name":"Cassedy","email":"icassedy10@rakuten.co.jp","role":"viewer","enabled":false},\n{"id":38,"first_name":"Mildred","last_name":"Ranyell","email":"mranyell11@ucoz.ru","role":"admin","enabled":false},\n{"id":39,"first_name":"Elinore","last_name":"Bielfelt","email":"ebielfelt12@tiny.cc","role":"admin","enabled":true},\n{"id":40,"first_name":"Nanon","last_name":"Babar","email":"nbabar13@bizjournals.com","role":"editor","enabled":false},\n{"id":41,"first_name":"Corabella","last_name":"Spratt","email":"cspratt14@fc2.com","role":"editor","enabled":false},\n{"id":42,"first_name":"Torin","last_name":"Fender","email":"tfender15@toplist.cz","role":"admin","enabled":true},\n{"id":43,"first_name":"Dillie","last_name":"Goodayle","email":"dgoodayle16@tumblr.com","role":"editor","enabled":false},\n{"id":44,"first_name":"Joly","last_name":"Arcase","email":"jarcase17@4shared.com","role":"admin","enabled":true},\n{"id":45,"first_name":"Claire","last_name":"Kinman","email":"ckinman18@123-reg.co.uk","role":"admin","enabled":false},\n{"id":46,"first_name":"Roda","last_name":"Simka","email":"rsimka19@msn.com","role":"admin","enabled":false},\n{"id":47,"first_name":"Tabitha","last_name":"Kasper","email":"tkasper1a@smugmug.com","role":"editor","enabled":true},\n{"id":48,"first_name":"Sybille","last_name":"Wilden","email":"swilden1b@chicagotribune.com","role":"editor","enabled":true},\n{"id":49,"first_name":"Brandie","last_name":"Maro","email":"bmaro1c@drupal.org","role":"admin","enabled":false},\n{"id":50,"first_name":"Jud","last_name":"Whewell","email":"jwhewell1d@nba.com","role":"editor","enabled":true},\n{"id":51,"first_name":"Malissia","last_name":"Routham","email":"mroutham1e@cisco.com","role":"viewer","enabled":false},\n{"id":52,"first_name":"Claus","last_name":"Cutress","email":"ccutress1f@apple.com","role":"editor","enabled":false},\n{"id":53,"first_name":"Cassandre","last_name":"Speers","email":"cspeers1g@networksolutions.com","role":"editor","enabled":true},\n{"id":54,"first_name":"Kenton","last_name":"O\'Kinneally","email":"kokinneally1h@simplemachines.org","role":"admin","enabled":true},\n{"id":55,"first_name":"Marj","last_name":"Powers","email":"mpowers1i@weebly.com","role":"editor","enabled":false},\n{"id":56,"first_name":"Fianna","last_name":"Medler","email":"fmedler1j@mapy.cz","role":"admin","enabled":false},\n{"id":57,"first_name":"Bradney","last_name":"MacAskie","email":"bmacaskie1k@senate.gov","role":"admin","enabled":false},\n{"id":58,"first_name":"Bellina","last_name":"Footitt","email":"bfootitt1l@livejournal.com","role":"viewer","enabled":false},\n{"id":59,"first_name":"Rolando","last_name":"Cuer","email":"rcuer1m@seattletimes.com","role":"editor","enabled":true},\n{"id":60,"first_name":"Odell","last_name":"Freda","email":"ofreda1n@apple.com","role":"viewer","enabled":true},\n{"id":61,"first_name":"Leonid","last_name":"Froment","email":"lfroment1o@oakley.com","role":"editor","enabled":false},\n{"id":62,"first_name":"Gnni","last_name":"Woltering","email":"gwoltering1p@jigsy.com","role":"viewer","enabled":false},\n{"id":63,"first_name":"Augy","last_name":"Whittall","email":"awhittall1q@goodreads.com","role":"viewer","enabled":false},\n{"id":64,"first_name":"Syman","last_name":"Worling","email":"sworling1r@blinklist.com","role":"editor","enabled":true},\n{"id":65,"first_name":"Malvina","last_name":"Narramor","email":"mnarramor1s@youtube.com","role":"editor","enabled":true},\n{"id":66,"first_name":"Lamont","last_name":"Denison","email":"ldenison1t@google.de","role":"admin","enabled":true},\n{"id":67,"first_name":"Stanly","last_name":"Edser","email":"sedser1u@cloudflare.com","role":"admin","enabled":true},\n{"id":68,"first_name":"Herminia","last_name":"Fairweather","email":"hfairweather1v@addtoany.com","role":"admin","enabled":true},\n{"id":69,"first_name":"Deck","last_name":"Conybear","email":"dconybear1w@livejournal.com","role":"editor","enabled":false},\n{"id":70,"first_name":"Etheline","last_name":"Pipworth","email":"epipworth1x@360.cn","role":"viewer","enabled":false},\n{"id":71,"first_name":"Germain","last_name":"Reeds","email":"greeds1y@reference.com","role":"editor","enabled":false},\n{"id":72,"first_name":"Bernardo","last_name":"Fierro","email":"bfierro1z@barnesandnoble.com","role":"editor","enabled":false},\n{"id":73,"first_name":"Job","last_name":"Fittis","email":"jfittis20@utexas.edu","role":"viewer","enabled":false},\n{"id":74,"first_name":"Lorant","last_name":"Siberry","email":"lsiberry21@cnet.com","role":"viewer","enabled":false},\n{"id":75,"first_name":"Bree","last_name":"Pilfold","email":"bpilfold22@macromedia.com","role":"admin","enabled":false},\n{"id":76,"first_name":"Valentina","last_name":"Vignaux","email":"vvignaux23@exblog.jp","role":"editor","enabled":true},\n{"id":77,"first_name":"Rachelle","last_name":"Colt","email":"rcolt24@irs.gov","role":"admin","enabled":true},\n{"id":78,"first_name":"Ainslie","last_name":"Lundie","email":"alundie25@arizona.edu","role":"viewer","enabled":false},\n{"id":79,"first_name":"Leonore","last_name":"Aldiss","email":"laldiss26@nifty.com","role":"editor","enabled":true},\n{"id":80,"first_name":"Kingsly","last_name":"O\' Clovan","email":"koclovan27@ca.gov","role":"viewer","enabled":true},\n{"id":81,"first_name":"Price","last_name":"Cluet","email":"pcluet28@weibo.com","role":"admin","enabled":false},\n{"id":82,"first_name":"Noelle","last_name":"Woollends","email":"nwoollends29@imgur.com","role":"editor","enabled":true},\n{"id":83,"first_name":"Shellie","last_name":"Whittick","email":"swhittick2a@php.net","role":"viewer","enabled":true},\n{"id":84,"first_name":"Keen","last_name":"Bythway","email":"kbythway2b@rakuten.co.jp","role":"admin","enabled":false},\n{"id":85,"first_name":"Marcie","last_name":"Gaddas","email":"mgaddas2c@livejournal.com","role":"viewer","enabled":false},\n{"id":86,"first_name":"Mendel","last_name":"Gregson","email":"mgregson2d@deviantart.com","role":"viewer","enabled":true},\n{"id":87,"first_name":"Marillin","last_name":"Dorkins","email":"mdorkins2e@redcross.org","role":"viewer","enabled":false},\n{"id":88,"first_name":"Anastasie","last_name":"Ivanovic","email":"aivanovic2f@xing.com","role":"viewer","enabled":true},\n{"id":89,"first_name":"Bary","last_name":"Gurko","email":"bgurko2g@ebay.com","role":"editor","enabled":true},\n{"id":90,"first_name":"Erinna","last_name":"Hein","email":"ehein2h@cloudflare.com","role":"editor","enabled":true},\n{"id":91,"first_name":"Abbe","last_name":"Jobey","email":"ajobey2i@github.com","role":"viewer","enabled":false},\n{"id":92,"first_name":"Tye","last_name":"O\'Toole","email":"totoole2j@liveinternet.ru","role":"admin","enabled":false},\n{"id":93,"first_name":"Simon","last_name":"Pashbee","email":"spashbee2k@imgur.com","role":"admin","enabled":true},\n{"id":94,"first_name":"Roy","last_name":"Blase","email":"rblase2l@usda.gov","role":"editor","enabled":false},\n{"id":95,"first_name":"Lottie","last_name":"Wiburn","email":"lwiburn2m@odnoklassniki.ru","role":"viewer","enabled":true},\n{"id":96,"first_name":"Jennette","last_name":"McConigal","email":"jmcconigal2n@ox.ac.uk","role":"viewer","enabled":false},\n{"id":97,"first_name":"Geoffrey","last_name":"Hanlon","email":"ghanlon2o@usnews.com","role":"editor","enabled":false},\n{"id":98,"first_name":"Carie","last_name":"Batt","email":"cbatt2p@csmonitor.com","role":"admin","enabled":true},\n{"id":99,"first_name":"Audy","last_name":"Wildman","email":"awildman2q@ft.com","role":"editor","enabled":false},\n{"id":100,"first_name":"Arleen","last_name":"Tackes","email":"atackes2r@slideshare.net","role":"editor","enabled":false}]'
      }
      primaryKeyColumnId="68e74"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="68e74"
        alignment="right"
        editable={false}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="id"
        label="ID"
        position="center"
        size={100}
      />
      <Column
        id="60886"
        alignment="left"
        editable="true"
        format="string"
        key="first_name"
        label="First name"
        position="center"
        size={100}
      />
      <Column
        id="ec690"
        alignment="left"
        editable={false}
        format="string"
        key="last_name"
        label="Last name"
        position="center"
        size={100}
      />
      <Column
        id="aa5e4"
        alignment="left"
        editable={false}
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        key="email"
        label="Email"
        position="center"
        size={100}
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="a49f5"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="role"
        label="Role"
        optionList={{ manualData: [] }}
        position="center"
        size={100}
        tooltip="test"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="e0a34"
        alignment="left"
        editable={false}
        format="boolean"
        key="enabled"
        label="Enabled"
        position="center"
        size={100}
      />
    </Table>
    <Multiselect
      id="multiselect1"
      disabled="true"
      emptyMessage="No options"
      itemMode="static"
      overlayMaxHeight={375}
      placeholder="Select options"
      readOnly=""
      showClear={true}
      showSelectionIndicator={true}
      value={'["Option 1"]'}
      wrapTags={true}
    >
      <Option id="71bc4" value="Option 1" />
      <Option id="6633c" value="Option 2" />
      <Option id="4d2a6" value="Option 3" />
    </Multiselect>
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Button"
    >
      <Event
        event="click"
        method="run"
        params={{ ordered: [{ src: "console.log('hello')" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Tags
      id="tags1"
      _disclosedFields={{ array: [] }}
      allowWrap={true}
      colors="{{ theme.automatic }}"
      hashColors={true}
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
      value="['Foo', 'Bar', 'Baz']"
    />
    <TableLegacy
      id="table3"
      _compatibilityMode={false}
      columnColors={{ ordered: [{ id: "" }, { name: "" }] }}
      data="{{fileButton1.parsedValue[0]}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <FileButton
      id="fileButton1"
      _disclosedFields={{ array: [] }}
      iconBefore="bold/programming-browser-search"
      parseFiles={true}
      styleVariant="outline"
      text="Browse"
    />
    <TableLegacy
      id="table1"
      _columnSummaryTypes={{ ordered: [{ bool: "checkedCount" }] }}
      _columnSummaryValues={{ ordered: [{ bool: "" }] }}
      _compatibilityMode={false}
      columnAlignment={{ ordered: [{ bool: "center" }] }}
      columnColors={{
        ordered: [
          { id: "" },
          { userId: "" },
          { groupId: "" },
          { createdAt: "" },
          { updatedAt: "" },
          { isAdmin: "" },
        ],
      }}
      columnEditable={{ ordered: [{ bool: true }, { groupId: true }] }}
      columnFormats={{ ordered: [{ bool: "CheckboxDataCell" }] }}
      columnTypeProperties={{
        ordered: [{ bool: { ordered: [{ falseDisplayValue: "empty" }] } }],
      }}
      data="{{nameChange.data}}"
      showBoxShadow={false}
    />
    <TextInput
      id="textInput1"
      _disclosedFields={{ array: [] }}
      placeholder="Enter value"
    />
    <CustomComponent
      id="customComponent1"
      iframeCode={
        '\n<style>\n  @import url(\'https://rsms.me/inter/inter.css\');\n  html { font-family: \'Inter\', sans-serif; }\n  @supports (font-variation-settings: normal) {\n    html { font-family: \'Inter var\', sans-serif; }\n  }\n\n  * {\n    font-family: \'Inter\', sans-serif;\n  }\n\n  body {\n    margin: 0;\n  }\n\n  #react {\n    height: 100%;\n    width: 100%;\n  }\n\n  .card {\n    min-width: 0;\n    min-height: 120px;\n    display: flex;\n    flex-direction: column;\n    justify-content: center;\n    padding: 12px 24px;\n    border-radius: 4px;\n    border: 1px solid #cccccc;\n    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);\n    background-color: #ffffff;\n  }\n\n  .title-container {\n    display: flex;\n    justify-content: space-between;\n    align-items: center;\n    line-height: 24px;\n  }\n\n  .title {\n    font-size: 18px;\n    font-weight: 700;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n  }\n\n  .docs-link {\n    font-size: 12px;\n    font-weight: 500;\n    color: #b062bc;\n    text-decoration: none;\n  }\n\n  .docs-link:hover {\n    color: #9846a4;\n  }\n\n  .content {\n    margin-top: 4px;\n    font-size: 12px;\n    line-height: 18px;\n    font-weight: 400;\n    color: #777777;\n  }\n\n  .button-container {\n    display: flex;\n    align-items: center;\n    gap: 8px;\n    margin-top: 12px;\n  }\n\n  .button {\n    border: none;\n    border-radius: 4px;\n    padding: 8px 16px;\n    font-weight: 500;\n    font-size: 12px;\n    cursor: pointer;\n    outline: none;\n    appearance: none;\n    user-select: auto;\n  }\n\n  .button--main {\n    background-color: #b062bc;\n    color: #ffffff;\n  }\n\n  .button--main:hover {\n    background-color: #9846a4;\n  }\n\n  .button--secondary {\n    color: #b062bc;\n    background-color: white;\n    border: 1px solid #b062bc;\n  }\n\n  .button--secondary:hover {\n    color: #9846a4;\n    border: 1px solid #9846a4;\n  }\n  \n  .wave {\n  animation-name: wave-animation;  /* Refers to the name of your @keyframes element below */\n  animation-duration: 2.5s;        /* Change to speed up or slow down */\n  animation-iteration-count: infinite;  /* Never stop waving :) */\n  transform-origin: 70% 70%;       /* Pivot around the bottom-left palm */\n  display: inline-block;\n}\n\n@keyframes wave-animation {\n    0% { transform: rotate( 0.0deg) }\n   10% { transform: rotate(14.0deg) }  /* The following five values can be played with to make the waving more or less extreme */\n   20% { transform: rotate(-8.0deg) }\n   30% { transform: rotate(14.0deg) }\n   40% { transform: rotate(-4.0deg) }\n   50% { transform: rotate(10.0deg) }\n   60% { transform: rotate( 0.0deg) }  /* Reset for the last half to pause */\n  100% { transform: rotate( 0.0deg) }\n}\n</style>\n\n<!-- You can add any HTML/CSS/JS here. UMD versions are required.\nKeep in mind that Custom Components are sensitive to bundle sizes, so try using a\ncustom implementation when possible. -->\n<script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script>\n<script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>\n\n<div id="react"></div>\n\n<script type="text/babel">\n  const MyCustomComponent = ({ triggerQuery, model, modelUpdate }) => (\n    <div className="card">\n      <p> <span class="wave">👋</span> </p>\n\n       <h1>Inline hands <span class="wave">👋🏾</span> work also!</h1>\n      <div className="title-container">\n        <div className="title">Custom component</div>\n        <a href="https://docs.retool.com/docs/custom-components" className="docs-link">View docs</a>\n      </div>\n      <div className="content">\n        {/* The text below is dynamic and specified by the model. */}\n        {model.displayText}\n      </div>\n      <div className="button-container">\n        {/* This button fires a dynamic query (specified in the model) when clicked. */}\n        <button\n          className="button button--main"\n          onClick={() => triggerQuery(model.queryToTrigger)}\n        >\n          Trigger query\n        </button>\n\n        {/* This button updates the model when clicked. */}\n        <button\n          className="button button--secondary"\n          onClick={() => modelUpdate({ displayText: \'The body of this text references "model.displayText", which just changed!\' })}\n        >\n          Update model\n        </button>\n      </div>\n    </div>\n  )\n\n  // This is the entrypoint for the React component.\n  const ConnectedComponent = Retool.connectReactComponent(MyCustomComponent)\n  const container = document.getElementById(\'react\')\n  const root = ReactDOM.createRoot(container)\n  root.render(<ConnectedComponent />)\n</script>\n'
      }
      model={
        '{\n  "displayText": "Clicking the \\"Update model\\" button below will update the model and change this text.",\n  "queryToTrigger": "query1"\n}'
      }
    />
    <Container
      id="tabbedContainer2"
      currentViewKey="{{ self.viewKeys[0] }}"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs2"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer2"
          value="{{ self.values[0] }}"
        >
          <Option id="35fc4" value="Tab 1" />
          <Option id="19db9" value="Tab 2" />
          <Option id="154cb" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="943a1" viewKey="View 1" />
      <View id="81c3f" viewKey="View 2" />
      <View id="cf81c" viewKey="View 3" />
    </Container>
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="{{nameChange.data?.createdAt[0] ? nameChange.data.createdAt[0] : ''}}"
      verticalAlign="center"
    />
    <TableLegacy
      id="table2"
      _compatibilityMode={false}
      columnColors={{
        ordered: [
          { tempReleasedTagId: "" },
          { folderId: "" },
          { name: "" },
          { deletedAt: "" },
          { organizationId: "" },
          { updatedAt: "" },
          { protected: "" },
          { isGlobalWidget: "" },
          { isMobileApp: "" },
          { lastEditedBy: "" },
          { clonedFromTemplateName: "" },
          { releasedTagId: "" },
          { synced: "" },
          { id: "" },
          { createdAt: "" },
          { uuid: "" },
          { description: "" },
          { photoUrl: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { tempReleasedTagId: true },
          { folderId: true },
          { name: true },
          { deletedAt: true },
          { organizationId: true },
          { updatedAt: true },
          { protected: true },
          { isGlobalWidget: true },
          { isMobileApp: true },
          { lastEditedBy: true },
          { clonedFromTemplateName: true },
          { releasedTagId: true },
          { synced: true },
          { id: true },
          { createdAt: true },
          { uuid: true },
          { description: true },
          { photoUrl: true },
        ],
      }}
      data="{{query7.data}}"
      doubleClickToEdit={true}
      overflowType="scroll"
      serverPaginated={true}
      showAddRowButton={true}
      showBoxShadow={false}
    />
    <Select
      id="select1"
      data="{{ query4.data }}"
      emptyMessage="No options"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="select2"
      emptyMessage="No options"
      itemMode="static"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="bded9" value="ASC" />
      <Option id="59532" value="DESC" />
    </Select>
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
          <Option id="dbd08" value="Tab 1" />
          <Option id="50580" value="Tab 2" />
          <Option id="44257" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="118c1" viewKey="View 1" />
      <View id="b0598" viewKey="View 2" />
      <View id="c7443" viewKey="View 3" />
    </Container>
    <TextInput
      id="textInput3"
      _disclosedFields={{ array: [] }}
      placeholder="Enter value"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query11"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput2"
      _disclosedFields={{ array: [] }}
      placeholder="Enter value"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: "state1.setValue(self.value)\ntextInput2.setValue(formatPhoneNumber(self.value))",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Text
      id="text3"
      _disclosedFields={{ array: [] }}
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <HTML
      id="html1"
      _disclosedFields={{ array: [] }}
      css={include("./lib/html1.css", "string")}
      html={include("./lib/html1.html", "string")}
    />
    <Container
      id="steppedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Steps
          id="steps1"
          horizontalAlign="center"
          itemMode="static"
          navigateContainer={true}
          showStepNumbers={true}
          targetContainerId="steppedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="0d81f" value="Step 1" />
          <Option id="60399" value="Step 2" />
          <Option id="6d37b" value="Step 3" />
        </Steps>
      </Header>
      <View id="116d6" viewKey="Step 1" />
      <View id="872e3" viewKey="Step 2" />
      <View id="bc756" viewKey="Step 3" />
      <Footer>
        <Button
          id="prevButton1"
          _disclosedFields={{ array: [] }}
          disabled="{{ steppedContainer1.currentViewIndex === 0 }}"
          iconBefore="bold/interface-arrows-left-alternate"
          styleVariant="outline"
          text="Previous"
        >
          <Event
            event="click"
            method="showPreviousVisibleView"
            params={{ ordered: [{ wrap: false }] }}
            pluginId="steppedContainer1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="nextButton1"
          _disclosedFields={{ array: [] }}
          disabled="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length }}"
          iconAfter="bold/interface-arrows-right-alternate"
          text="Next"
        >
          <Event
            event="click"
            method="showNextVisibleView"
            params={{ ordered: [{ wrap: false }] }}
            pluginId="steppedContainer1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
    </Container>
    <Text id="text2" _disclosedFields={{ array: [] }} verticalAlign="center" />
    <CustomComponent
      id="customComponent2"
      iframeCode={
        '\n<style>\n  @import url(\'https://rsms.me/inter/inter.css\');\n  html { font-family: \'Inter\', sans-serif; }\n  @supports (font-variation-settings: normal) {\n    html { font-family: \'Inter var\', sans-serif; }\n  }\n\n  * {\n    font-family: \'Inter\', sans-serif;\n  }\n\n  body {\n    margin: 0;\n  }\n\n  #react {\n    height: 100%;\n    width: 100%;\n  }\n\n  .card {\n    min-width: 0;\n    min-height: 120px;\n    display: flex;\n    flex-direction: column;\n    justify-content: center;\n    padding: 12px 24px;\n    border-radius: 4px;\n    border: 1px solid #cccccc;\n    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);\n    background-color: #ffffff;\n  }\n\n  .title-container {\n    display: flex;\n    justify-content: space-between;\n    align-items: center;\n    line-height: 24px;\n  }\n\n  .title {\n    font-size: 18px;\n    font-weight: 700;\n    text-overflow: ellipsis;\n    white-space: nowrap;\n  }\n\n  .docs-link {\n    font-size: 12px;\n    font-weight: 500;\n    color: #b062bc;\n    text-decoration: none;\n  }\n\n  .docs-link:hover {\n    color: #9846a4;\n  }\n\n  .content {\n    margin-top: 4px;\n    font-size: 12px;\n    line-height: 18px;\n    font-weight: 400;\n    color: #777777;\n  }\n\n  .button-container {\n    display: flex;\n    align-items: center;\n    gap: 8px;\n    margin-top: 12px;\n  }\n\n  .button {\n    border: none;\n    border-radius: 4px;\n    padding: 8px 16px;\n    font-weight: 500;\n    font-size: 12px;\n    cursor: pointer;\n    outline: none;\n    appearance: none;\n    user-select: auto;\n  }\n\n  .button--main {\n    background-color: #b062bc;\n    color: #ffffff;\n  }\n\n  .button--main:hover {\n    background-color: #9846a4;\n  }\n\n  .button--secondary {\n    color: #b062bc;\n    background-color: white;\n    border: 1px solid #b062bc;\n  }\n\n  .button--secondary:hover {\n    color: #9846a4;\n    border: 1px solid #9846a4;\n  }\n</style>\n\n<!-- You can add any HTML/CSS/JS here. UMD versions are required.\nKeep in mind that Custom Components are sensitive to bundle sizes, so try using a\ncustom implementation when possible. -->\n<script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script>\n<script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>\n<script src="https://cdn.jsdelivr.net/npm/graphql-request@6.0.0/+esm"></script>\n\n<div id="react"></div>\n\n<script type="text/babel">\n  const MyCustomComponent = ({ triggerQuery, model, modelUpdate }) => {\n      console.log(window)\n      return (    <div className="card">\n      <div className="title-container">\n        <div className="title">Custom component</div>\n        <a href="https://docs.retool.com/docs/custom-components" className="docs-link">View docs</a>\n      </div>\n      <div className="content">\n        {/* The text below is dynamic and specified by the model. */}\n        {model.displayText}\n      </div>\n      <div className="button-container">\n        {/* This button fires a dynamic query (specified in the model) when clicked. */}\n        <button\n          className="button button--main"\n          onClick={() => triggerQuery(model.queryToTrigger)}\n        >\n          Trigger query\n        </button>\n\n        {/* This button updates the model when clicked. */}\n        <button\n          className="button button--secondary"\n          onClick={() => modelUpdate({ displayText: \'The body of this text references "model.displayText", which just changed!\' })}\n        >\n          Update model\n        </button>\n      </div>\n    </div>)\n\n\n}\n\n\n  // This is the entrypoint for the React component.\n  const ConnectedComponent = Retool.connectReactComponent(MyCustomComponent)\n  const container = document.getElementById(\'react\')\n  const root = ReactDOM.createRoot(container)\n  root.render(<ConnectedComponent />)\n</script>\n'
      }
      model={
        '{\n  "displayText": "Clicking the \\"Update model\\" button below will update the model and change this text.",\n  "queryToTrigger": "query1"\n}'
      }
    />
    <TableLegacy
      id="table4"
      _columnSummaryTypes={{ ordered: [{ createdAt: "" }] }}
      _columnSummaryValues={{ ordered: [{ createdAt: "" }] }}
      _compatibilityMode={false}
      allowMultiRowSelect={true}
      columnAlignment={{ ordered: [{ createdAt: "left" }] }}
      columnColors={{
        ordered: [
          { id: "" },
          { userId: "" },
          { groupId: "" },
          { createdAt: "" },
          { updatedAt: "" },
          { isAdmin: "" },
        ],
      }}
      columnEditable={{ ordered: [{ groupId: true }, { createdAt: true }] }}
      columnFormats={{ ordered: [{ createdAt: "DateDataCell" }] }}
      columnTypeProperties={{
        ordered: [{ createdAt: { ordered: [{ dateFormat: "MMM d, yyyy" }] } }],
      }}
      data="{{ nameChange.data }}"
      defaultSelectedRow="none"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "script" },
            { method: "run" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    src: "// do some things \nutils.exportData(table4.data, 'my_data', 'csv')",
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      showBoxShadow={false}
    />
    <Table
      id="table5"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ nameChange.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      primaryKeyColumnId="97456"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="97456"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="b25ca"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="userId"
        label="User ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="12a12"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="groupId"
        label="Group ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="c86b3"
        alignment="left"
        editable="true"
        format="datetime"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="e1570"
        alignment="left"
        format="datetime"
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="08634"
        alignment="left"
        format="boolean"
        key="isAdmin"
        label="Is admin"
        placeholder="Enter value"
        position="center"
        size={100}
      />
    </Table>
    <Image
      id="image1"
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
    />
    <Image
      id="image2"
      _disclosedFields={{ array: [] }}
      dbBlobId="012ea3a9-776d-4d6b-9705-0b11e4ed36c9"
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
      srcType="dbBlobId"
    />
    <Table
      id="table6"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ nameChange.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      primaryKeyColumnId="bb280"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="bb280"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="e53e8"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="userId"
        label="User ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="bd65f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="groupId"
        label="Group ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="45253"
        alignment="left"
        format="datetime"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="7563b"
        alignment="left"
        format="datetime"
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="54353"
        alignment="left"
        format="boolean"
        key="isAdmin"
        label="Is admin"
        placeholder="Enter value"
        position="center"
        size={100}
      />
    </Table>
    <TextArea
      id="textArea1"
      _disclosedFields={{ array: [] }}
      autoResize={true}
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
      value="this is my text"
    />
    <Form
      id="form1"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          _disclosedFields={{ array: [] }}
          value="#### Form title"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="textInput4"
          _disclosedFields={{ array: [] }}
          placeholder="Enter value"
        />
        <Select
          id="select3"
          emptyMessage="No options"
          itemMode="static"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="ba3ab" value="Option 1" />
          <Option id="78e7a" value="Option 2" />
          <Option id="bec39" value="Option 3" />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="run"
        params={{ ordered: [{ src: "console.log('submitted')" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Table
      id="table7"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ nameChange.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      primaryKeyColumnId="d1fda"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="d1fda"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="1403c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="userId"
        label="User ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="73a57"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="groupId"
        label="Group ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="e076d"
        alignment="left"
        format="datetime"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="acc25"
        alignment="left"
        format="datetime"
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="94355"
        alignment="left"
        format="boolean"
        key="isAdmin"
        label="Is admin"
        placeholder="Enter value"
        position="center"
        size={100}
      />
    </Table>
    <Select
      id="select4"
      data="{{ query30.data }}"
      emptyMessage="No options"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.id}}"
    />
    <Image
      id="image3"
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      src="https://placekitten.com/400/300"
    />
  </Frame>
</App>

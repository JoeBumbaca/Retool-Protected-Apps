<Modal id="modal2" buttonText="Nueva Direccion">
  <TextInput
    id="textinput2"
    _defaultValue=""
    iconBefore="home"
    label=""
    placeholder="Direccion"
  >
    <Event
      event="submit"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="productos"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="submit"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="geolocaliza"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </TextInput>
  <TextInput
    id="textinput3"
    _defaultValue=""
    iconBefore="flag"
    label=""
    placeholder="Referencia"
  />
  <Button
    id="button5"
    disabled=""
    hidden={null}
    loading=""
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    text="Ir 🚶🏻‍♀️"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="geolocaliza"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Map
    id="map1"
    latitude="{{parseFloat(geolocaliza.rawData.results['0'].geometry.location.lat)}}"
    longitude="{{parseFloat(geolocaliza.rawData.results['0'].geometry.location.lng)}}"
    points="{{ [{'latitude': geolocaliza.rawData.results['0'].geometry.location.lat,'longitude': geolocaliza.rawData.results['0'].geometry.location.lng
}] }}"
    zoom="16"
  />
  <Text
    id="text5"
    _defaultValue=""
    hidden="{{textinput2.value===''}}"
    horizontalAlign="center"
    value="**Es tu direccion 🤔 ?**"
    verticalAlign="center"
  />
  <Button
    id="button4"
    disabled="{{textinput2.value==''}}"
    hidden={null}
    loading=""
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    style={{ ordered: [{ background: "#a7392fff" }] }}
    text="NO es! 😔"
  >
    <Event
      event="click"
      method="setValue"
      params={{ ordered: [{ value: "''" }] }}
      pluginId="textinput2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button3"
    disabled="{{textinput2.value==''}}"
    hidden={null}
    loading=""
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    style={{ ordered: [{ background: "rgba(56, 134, 84, 1)" }] }}
    text="SI es! 😁"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="cierramodal2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>

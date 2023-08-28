<Modal
  id="modal1"
  buttonText="Agrega este Producto"
  closeOnOutsideClick={true}
  events={[]}
  style={{ ordered: [{ "accent-background": "hsl(141, 20%, 55%)" }] }}
>
  <Text
    id="text2"
    _defaultValue=""
    horizontalAlign="center"
    value="**{{table2.selectedRow.data.name}}**"
    verticalAlign="center"
  />
  <Text
    id="text3"
    _defaultValue=""
    horizontalAlign="center"
    value="{{table2.selectedRow.data.description}}"
    verticalAlign="center"
  />
  <Image
    id="image2"
    fit="contain"
    heightType="fixed"
    hidden={null}
    horizontalAlign="center"
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    src="{{table2.selectedRow.data.photo}}"
  />
  <Text
    id="text6"
    _defaultValue=""
    value="**¿ Cuantos deseas llevar 🙂 ?**"
    verticalAlign="center"
  />
  <NumberInput
    id="numberinput1"
    _defaultValue={null}
    currency="USD"
    label=""
    max="50"
    min="1"
    placeholder="Enter value"
    showSeparators={true}
    showStepper={true}
    value="1"
  />
  <Text
    id="text4"
    _defaultValue=""
    horizontalAlign="right"
    value="**Sub Total: S/. {{productos.data.price[0]*numberinput1.value}}**"
    verticalAlign="center"
  />
  <Button
    id="button7"
    disabled=""
    hidden={null}
    loading=""
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    text="Agregar este producto 👍🏼"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="cierramodal1"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button9"
    disabled=""
    hidden={null}
    loading=""
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    style={{ ordered: [{ background: "#c74438ff" }] }}
    text="No gracias"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="cierramodal1"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>

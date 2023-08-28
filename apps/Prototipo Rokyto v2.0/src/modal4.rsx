<Modal id="modal4" buttonText="Pagar tu Pedido" closeOnOutsideClick={true}>
  <RadioGroup
    id="radiogroup1"
    _defaultValue={null}
    data="['Efectivo', 'Tarjeta Linea','Tarjeta POS']"
    deprecatedLabels=""
    label="Pagas en:"
    labelPosition="top"
    labels="{{ ['Efectivo','Tarjeta Linea','Tarjeta POS'][i] }}"
    value="Efectivo"
    values="{{ item }}"
  />
  <NumberInput
    id="numberinput2"
    _defaultValue={null}
    currency="SOL"
    format="currency"
    hidden="{{radiogroup1.value !=='Efectivo'}}"
    label=""
    placeholder="Enter value"
    showSeparators={true}
    showStepper={true}
    value={0}
  />
  <Select
    id="select1"
    _defaultValue={null}
    allowDeselect={true}
    allowSearch={true}
    data="['Visa','Mastercard']"
    deprecatedLabels=""
    disabled=""
    hidden="{{radiogroup1.value !== 'Tarjeta Linea'}}"
    label=""
    labelAlign="right"
    labels=""
    labelWrap={true}
    maintainSpaceWhenHidden={null}
    overlayMaxHeight={250}
    placeholder="Tarjeta"
    showClear={true}
    showInEditor={null}
    value=""
    values="{{ item }}"
  />
  <Container
    id="container2"
    disabled=""
    heightType="fixed"
    hidden={null}
    hoistFetching={true}
    maintainSpaceWhenHidden={null}
    overflowType="hidden"
    selectedView="View 1"
    showBody={true}
    showInEditor={null}
  >
    <View id="" viewKey="View 1" />
    <RadioGroup
      id="radiogroup2"
      _defaultValue={null}
      data="['Boleta', 'Factura']"
      deprecatedLabels=""
      label="Tipo de Doc"
      labelPosition="top"
      labels="{{ ['Boleta','Factura'][i] }}"
      value="foo"
      values="{{ item }}"
    />
    <TextInput id="textinput5" _defaultValue="" label="" placeholder="Numero" />
  </Container>
  <Button
    id="button10"
    disabled=""
    hidden="{{radiogroup1.value !== 'Tarjeta Linea'}}"
    loading=""
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    text="Pagar En Linea"
  />
  <Button
    id="button11"
    disabled=""
    hidden="{{radiogroup1.value === 'Tarjeta Linea'}}"
    loading=""
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    text="Confirmar tu Pedido"
  />
</Modal>

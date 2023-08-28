<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Image
      id="image3"
      fit="contain"
      heightType="fixed"
      hidden={null}
      horizontalAlign="center"
      maintainSpaceWhenHidden={null}
      showInEditor={null}
      src="https://www.mallplaza.com.pe/media/stores/rokys/logo/rokys-list.png"
    />
    <Wizard
      id="wizard1"
      currentStep="gk2xSE1KE"
      customInitialStepName="Saludo"
      initialStep="gk2xSE1KE"
      steps={{
        ordered: [
          {
            gk2xSE1KE: {
              ordered: [
                { name: "Selecciona" },
                {
                  navButtons: [
                    {
                      ordered: [
                        { buttonText: "Selecciona tu direccion" },
                        { buttonType: "goToStep" },
                        { buttonGoToStep: "nTVxmNGrC" },
                        { buttonEnabled: "{{true}}" },
                        { triggerButtonIf: "{{false}}" },
                      ],
                    },
                  ],
                },
                { visualizationXCoordinate: 408 },
                { visualizationYCoordinate: 360 },
              ],
            },
          },
          {
            GDrtLremT: {
              ordered: [
                { name: "Cancela" },
                { navButtons: [] },
                { visualizationXCoordinate: 408 },
                { visualizationYCoordinate: 552 },
                { isVirtual: false },
                { onEnterQuery: "" },
                { hideTitle: false },
              ],
            },
          },
          {
            nTVxmNGrC: {
              ordered: [
                { name: "Confirma" },
                {
                  navButtons: [
                    {
                      ordered: [
                        { buttonText: "Paga tu Pedido" },
                        { buttonType: "goToStep" },
                        { buttonGoToStep: "GDrtLremT" },
                        { buttonEnabled: "{{true}}" },
                        { triggerButtonIf: "{{false}}" },
                      ],
                    },
                  ],
                },
                { visualizationXCoordinate: 408 },
                { visualizationYCoordinate: 456 },
                { isVirtual: false },
                { onEnterQuery: "" },
                { hideTitle: false },
              ],
            },
          },
          {
            K1i47hSmL: {
              ordered: [
                { name: "Saludo" },
                {
                  navButtons: [
                    {
                      ordered: [
                        { buttonText: "Selecciona tu pedido" },
                        { buttonType: "goToStep" },
                        { buttonGoToStep: "gk2xSE1KE" },
                        { buttonEnabled: "{{true}}" },
                        { triggerButtonIf: "{{false}}" },
                      ],
                    },
                  ],
                },
                { visualizationXCoordinate: 408 },
                { visualizationYCoordinate: 264 },
                { isVirtual: false },
                { onEnterQuery: "" },
                { hideTitle: true },
              ],
            },
          },
        ],
      }}
    >
      <Include src="./src/tabbedcontainer1.rsx" />
      <Text
        id="text9"
        _defaultValue=""
        value="**Cliente:**
**Direccion:**
**Referencia:**
**Comentario:**
**Detalle del Pedido:**"
        verticalAlign="center"
      />
      <Image
        id="image4"
        fit="contain"
        heightType="fixed"
        hidden={null}
        horizontalAlign="center"
        maintainSpaceWhenHidden={null}
        showInEditor={null}
        src="https://www.mallplaza.com.pe/media/stores/rokys/logo/rokys-list.png"
      />
      <TableLegacy
        id="table1"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "address",
          "client_id",
          "place_id",
          "longitud",
          "latitude",
          "phone",
        ]}
        _columnVisibility={{
          ordered: [
            { name: true },
            { latitude: false },
            { sales: true },
            { phone: false },
            { client_id: false },
            { place_id: false },
            { address: true },
            { longitud: false },
            { id: false },
            { email: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonColumnName="Selecciona"
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Aqui 🙋🏻‍♀️" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "asignadireccion" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        checkboxRowSelect={false}
        columnAlignment={{ ordered: [{ "Custom Column 1": "left" }] }}
        columnColors={{
          ordered: [
            { id: "" },
            { address: "" },
            { client_id: "" },
            { place_id: "" },
            { longitud: "" },
            { latitude: "" },
            { phone: "" },
          ],
        }}
        columnFormats={{ ordered: [{ "Custom Column 1": "checkbox" }] }}
        columnHeaderNames={{
          ordered: [
            { address: "Direcciones Disponibles" },
            { "Custom Column 1": "Selecciona" },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "address",
          "client_id",
          "place_id",
          "longitud",
          "latitude",
          "phone",
        ]}
        columnVisibility={{
          ordered: [
            { name: true },
            { latitude: false },
            { sales: true },
            { phone: false },
            { client_id: false },
            { place_id: false },
            { address: true },
            { longitud: false },
            { id: false },
            { email: true },
          ],
        }}
        columnWidthsMobile={[{ object: { id: "address", value: 208.5 } }]}
        customButtonName=""
        data="{{ direcciones.data }}"
        pageSize={3}
        showColumnBorders={true}
        showDownloadButton={false}
        showFetchingIndicator={false}
        showFilterButton={false}
        showRefreshButton={false}
      />
      <TableLegacy
        id="table4"
        _columns={[
          "id",
          "product_name",
          "quantity",
          "product_price",
          "subtotal",
          "order_id",
          "product_sku",
          "product_id",
          "parent_id",
        ]}
        _columnVisibility={{
          ordered: [
            { subtotal: true },
            { quantity: true },
            { product_id: false },
            { name: true },
            { sales: true },
            { order_id: false },
            { product_sku: false },
            { parent_id: false },
            { product_price: true },
            { id: false },
            { product_name: true },
            { email: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        checkboxRowSelect={false}
        columnColors={{
          ordered: [
            { subtotal: "" },
            { quantity: "" },
            { product_id: "" },
            { order_id: "" },
            { product_sku: "" },
            { parent_id: "" },
            { product_price: "" },
            { id: "" },
            { product_name: "" },
          ],
        }}
        columns={[
          "id",
          "product_name",
          "quantity",
          "product_price",
          "subtotal",
          "order_id",
          "product_sku",
          "product_id",
          "parent_id",
        ]}
        columnVisibility={{
          ordered: [
            { subtotal: true },
            { quantity: true },
            { product_id: false },
            { name: true },
            { sales: true },
            { order_id: false },
            { product_sku: false },
            { parent_id: false },
            { product_price: true },
            { id: false },
            { product_name: true },
            { email: true },
          ],
        }}
        customButtonName=""
        data="{{ listaitemspedido.data }}"
        pageSize={3}
        showColumnBorders={true}
        showDownloadButton={false}
        showFetchingIndicator={false}
        showFilterButton={false}
        showRefreshButton={false}
      />
      <Text
        id="text12"
        _defaultValue=""
        value="Para comenzar a tomar tu pedido por favor validame tu numero de movil:
"
        verticalAlign="center"
      />
      <TextInput
        id="textinput6"
        _defaultValue=""
        iconBefore="mobile"
        label=""
        placeholder="Nro Movil"
        value="51"
      />
      <RadioGroup
        id="radiogroup3"
        _defaultValue={null}
        data="['Delivery', 'Recojo en Local']"
        deprecatedLabels=""
        label="Pedido para:"
        labelPosition="top"
        labels=""
        value=""
        values="{{ item }}"
      />
      <Button
        id="button12"
        disabled=""
        hidden={null}
        loading=""
        maintainSpaceWhenHidden={null}
        showInEditor={null}
        text="Validar"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="cliente"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Include src="./src/modal2.rsx" />
      <Text
        id="text13"
        _defaultValue=""
        value="Luego de ingresar tu numero, pulsa el boton **Validar**"
        verticalAlign="center"
      />
      <Text
        id="text11"
        _defaultValue=""
        value="**¿Algun comentario?:**"
        verticalAlign="center"
      />
      <Include src="./src/modal4.rsx" />
      <TextInput
        id="textinput4"
        _defaultValue=""
        label=""
        placeholder="Ingresa tu comentario"
      />
      <Text
        id="text10"
        _defaultValue=""
        horizontalAlign="right"
        value="Total del Pedido: S/. {{totalpedido.data,total}}"
        verticalAlign="center"
      />
    </Wizard>
    <Statistic
      id="statistic1"
      decimalPlaces=""
      hidden={null}
      label="Pedido Nro:"
      maintainSpaceWhenHidden={null}
      padDecimal={true}
      showInEditor={null}
      showSeparators={true}
      style={{ ordered: [] }}
      value="{{urlparams.pedido}}"
    />
    <Statistic
      id="statistic2"
      decimalPlaces=""
      hidden={null}
      label="Productos 🛒"
      maintainSpaceWhenHidden={null}
      padDecimal={true}
      showInEditor={null}
      showSeparators={true}
      style={{ ordered: [] }}
      value="{{totalproductos.data.totalproductos}}"
    />
    <TableLegacy
      id="table2"
      _columns={[
        "id",
        "name",
        "email",
        "sales",
        "description",
        "photo",
        "price",
        "suggest_products",
        "status",
        "place_id",
        "sku",
        "product_family",
      ]}
      _columnVisibility={{
        ordered: [
          { price: false },
          { name: true },
          { sales: true },
          { photo: true },
          { status: false },
          { place_id: false },
          { product_family: false },
          { id: false },
          { email: true },
          { description: true },
          { sku: false },
          { suggest_products: false },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      checkboxRowSelect={false}
      columnColors={{
        ordered: [
          { price: "" },
          { name: "" },
          { photo: "" },
          { status: "" },
          { place_id: "" },
          { product_family: "" },
          { id: "" },
          { description: "" },
          { sku: "" },
          { suggest_products: "" },
        ],
      }}
      columns={[
        "id",
        "name",
        "email",
        "sales",
        "description",
        "photo",
        "price",
        "suggest_products",
        "status",
        "place_id",
        "sku",
        "product_family",
      ]}
      columnVisibility={{
        ordered: [
          { price: false },
          { name: true },
          { sales: true },
          { photo: true },
          { status: false },
          { place_id: false },
          { product_family: false },
          { id: false },
          { email: true },
          { description: true },
          { sku: false },
          { suggest_products: false },
        ],
      }}
      customButtonName=""
      data="{{ productos.data }}"
      hidden="true"
      pageSize={6}
      showColumnBorders={true}
      showDownloadButton={false}
      showFetchingIndicator={false}
      showFilterButton={false}
      showRefreshButton={false}
    />
  </Frame>
</App>

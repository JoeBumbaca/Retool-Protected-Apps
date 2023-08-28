<Modal id="modal3" buttonText="Verificar mi Pedido" closeOnOutsideClick={true}>
  <Text
    id="text7"
    _defaultValue=""
    value="**Pedido Nro:** {{urlparams.pedido}}"
    verticalAlign="center"
  />
  <TableLegacy
    id="table3"
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
    actionButtonColumnName="Seleccionar"
    actionButtonPosition="right"
    actionButtons={[
      {
        ordered: [
          { actionButtonText: "Borrar ❌" },
          { actionButtonType: "runQuery" },
          { actionButtonQuery: "" },
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
    columnHeaderNames={{
      ordered: [
        { product_name: "Producto" },
        { quantity: "Cantidad" },
        { product_price: "Precio" },
        { subtotal: "Subtotal" },
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
    columnWidthsMobile={[
      { object: { id: "quantity", value: 74 } },
      { object: { id: "product_price", value: 62 } },
      { object: { id: "subtotal", value: 65 } },
      { object: { id: "product_name", value: 165 } },
    ]}
    customButtonName=""
    data="{{ listaitemspedido.data }}"
    pageSize={6}
    showColumnBorders={true}
    showDownloadButton={false}
    showFetchingIndicator={false}
    showFilterButton={false}
    showRefreshButton={false}
  />
  <Text
    id="text8"
    _defaultValue=""
    value="**Total del Pedido:** S/. {{totalpedido.data.total}}"
    verticalAlign="center"
  />
  <Button
    id="button8"
    disabled=""
    hidden={null}
    loading=""
    maintainSpaceWhenHidden={null}
    showInEditor={null}
    style={{ ordered: [{ background: "hsl(141, 20%, 55%)" }] }}
    text="Ok  👍🏼"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="cierramodal3"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>

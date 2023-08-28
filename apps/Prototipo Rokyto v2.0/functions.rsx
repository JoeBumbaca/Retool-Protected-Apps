<GlobalFunctions>
  <Folder id="Temporary state">
    <State id="state1" />
    <State id="state2" />
  </Folder>
  <JavascriptQuery
    id="asignadireccion"
    query={include("./lib/asignadireccion.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessConfetti={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
  />
  <JavascriptQuery
    id="bajafila"
    query={include("./lib/bajafila.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessConfetti={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
  />
  <JavascriptQuery
    id="cierramodal1"
    query={include("./lib/cierramodal1.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessConfetti={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
  />
  <JavascriptQuery
    id="cierramodal2"
    query={include("./lib/cierramodal2.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showSuccessConfetti={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
  />
  <JavascriptQuery
    id="cierramodal3"
    query={include("./lib/cierramodal3.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showSuccessConfetti={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
  />
  <SqlQueryUnified
    id="cliente"
    query={include("./lib/cliente.sql", "string")}
    resourceName="b1dbd436-faca-4154-9d7c-9126d8f1e50c"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["direcciones"]}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="direcciones"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="direcciones"
    query={include("./lib/direcciones.sql", "string")}
    resourceName="b1dbd436-faca-4154-9d7c-9126d8f1e50c"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <RESTQuery
    id="geolocaliza"
    bodyType="json"
    query="https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyDBR40LfZFtajIMiXTVhXCkqF4_Wq2ggWE&address={{textinput2.value}}"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    type="POST"
  />
  <SqlQueryUnified
    id="listaitemspedido"
    query={include("./lib/listaitemspedido.sql", "string")}
    resourceName="b1dbd436-faca-4154-9d7c-9126d8f1e50c"
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="productos"
    query={include("./lib/productos.sql", "string")}
    queryTimeout="10001"
    resourceName="b1dbd436-faca-4154-9d7c-9126d8f1e50c"
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query13"
    query={include("./lib/query13.sql", "string")}
    resourceName="b1dbd436-faca-4154-9d7c-9126d8f1e50c"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
  />
  <JavascriptQuery
    id="subefila"
    query={include("./lib/subefila.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessConfetti={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
  />
  <SqlQueryUnified
    id="totalpedido"
    query={include("./lib/totalpedido.sql", "string")}
    resourceName="b1dbd436-faca-4154-9d7c-9126d8f1e50c"
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="totalproductos"
    query={include("./lib/totalproductos.sql", "string")}
    resourceName="b1dbd436-faca-4154-9d7c-9126d8f1e50c"
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
  />
</GlobalFunctions>

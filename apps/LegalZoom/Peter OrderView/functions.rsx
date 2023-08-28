<GlobalFunctions>
  <RESTQuery
    id="GetOpenOrcosforOder"
    query="https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/transactions/search?orcoStatus=Open&fkuseroder={{urlProcessingNumber.value}}"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="completequery"
    body={
      '[{"key":"Issue","value":"Called salesforce  {{new Date()}}"},{"key":"URL","value":" {{Math.random().toString(36).substring(2,7)}}.com"}]'
    }
    bodyType="json"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    query=" https://api-generator.retool.com/EFVO06/data"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <RESTQuery
    id="contactsQuery"
    headers={'[{"key":"x-lz-authorize","value":"False"}]'}
    query="https://dev.api-order-service.dev.aws-01.legalzoom.com/core/orders/{{order.value}}/contacts"
    resourceName="REST-WithoutResource"
    retoolVersion="2.99.5"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="entityQuery"
    headers={'[{"key":"x-lz-authorize","value":"False"}]'}
    query="https://dev.api-business-entities-service.dev.aws-01.legalzoom.com/business-entities/processing-orders/{{urlProcessingNumber.value}}"
    resourceName="REST-WithoutResource"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.order.orderItems"
  />
  <RESTQuery
    id="getAliasQuery"
    enableTransformer={true}
    headers={'[{"key":"x-lz-authorize","value":"False"}]'}
    query="https://dev.api-order-service.dev.aws-01.legalzoom.com/core/orders/{{urlCustomerOrderNumber.value}}"
    resourceName="REST-WithoutResource"
    retoolVersion="2.105.1"
    transformer="// getting user alias from email

var email = {{current_user.email}};
var index = email.indexOf('@');
var alias = '';

if (index != -1)
{
  alias = email.substring(0, index);
}
return alias;"
  />
  <RESTQuery
    id="getAllOrcosforOrder"
    query="https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/transactions/searchAll?fkuseroder={{urlProcessingNumber.value}}"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getCategoriesLocal"
    importedQueryInputs={{
      ordered: [{ variable0: "{{ getDepartmentID.data }}" }],
    }}
    isImported={true}
    playgroundQueryId={61}
    playgroundQueryUuid="41c5ca45-4502-43e5-b140-f85eda2d6549"
    query="https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/categories/search?departmentId={{ variable0 }}"
    resourceName="REST-WithoutResource"
    retoolVersion="2.105.1"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getDepartmentID"
    enableTransformer={true}
    query="https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/departments/search?departmentName={{urlDepartmentName.value}}"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data[0].departmentID"
  />
  <RESTQuery
    id="getLedgerQuery"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    headers={'[{"key":"Bearer","value":"OAUTH2_TOKEN"}]'}
    importedQueryInputs={{
      ordered: [
        { queryProcessingNumber: "{{urlProcessingNumber.value}}" },
        { queryCustomerOrderNumber: "{{urlCustomerOrderNumber.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={51}
    playgroundQueryUuid="a9bc55fd-dc2a-42f8-86cd-1a79054b9eb1"
    query="?processingNumber={{queryProcessingNumber}}&customerOrderNumber={{queryCustomerOrderNumber}}"
    resourceName="45be196c-58f0-4819-b650-5c48826d4aac"
    retoolVersion="2.105.1"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getReasonsforCategory1Local"
    importedQueryInputs={{ ordered: [{ variable0: "{{ category1.value }}" }] }}
    isImported={true}
    playgroundQueryId={57}
    playgroundQueryUuid="90a61ddd-9813-4b71-a58b-501c4ee98461"
    query="https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/reasons/search?categoryID={{ variable0 }}"
    resourceName="REST-WithoutResource"
    retoolVersion="2.105.1"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getReasonsforCategory2Local"
    importedQueryInputs={{ ordered: [{ variable0: "{{ category2.value }}" }] }}
    isImported={true}
    playgroundQueryId={58}
    playgroundQueryUuid="d069ac0c-c54c-4c8b-a281-821eb2fae419"
    query="https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/reasons/search?categoryID={{ variable0 }}"
    resourceName="REST-WithoutResource"
    retoolVersion="2.105.1"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getReasonsforCategory3Local"
    importedQueryInputs={{ ordered: [{ variable0: "{{ category3.value }}" }] }}
    isImported={true}
    playgroundQueryId={59}
    playgroundQueryUuid="01722afd-96aa-4dc9-b2aa-489c1416062a"
    query="https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/reasons/search?categoryID={{ variable0 }}"
    resourceName="REST-WithoutResource"
    retoolVersion="2.105.1"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getReasonsforCategory4Local"
    importedQueryInputs={{ ordered: [{ variable0: "{{ category4.value }}" }] }}
    isImported={true}
    playgroundQueryId={60}
    playgroundQueryUuid="2cf1c21b-112c-48ec-82db-0935c4590ad0"
    query="https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/reasons/search?categoryID={{ variable0 }}"
    resourceName="REST-WithoutResource"
    retoolVersion="2.105.1"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getproductid"
    enableTransformer={true}
    headers={'[{"key":"x-lz-authorize","value":"False"}]'}
    query="https://dev.api-order-service.dev.aws-01.legalzoom.com/core/orders/order-items/processing-orders/{{urlProcessingNumber.value}}"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer={
      '// type your code here\n// example: return formatDataAsArray(data).filter(row => row.quantity > 20)\nvar processid = data.orderItem.processingOrder.processId\nvar productName ="";\n\nif(processid ==81)\n  productName= "Annual Reports";\nelse if (processid ==2)\n  productName= "LLC";\nelse  productName= "Unknown";\n\nreturn productName\n'
    }
  />
  <JavascriptQuery
    id="modalClose"
    query={include("./lib/modalClose.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="orderHistoryQuery"
    enableTransformer={true}
    headers={'[{"key":"x-lz-authorize","value":"False"}]'}
    query="https://dev.api-order-service.dev.aws-01.legalzoom.com/core/orders/{{urlCustomerOrderNumber.value}}/history"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.orderItemsHistory"
  />
  <RESTQuery
    id="postLedgerQuery"
    body={
      '{\n    "objectType": "{{objectType}}",\n    "processingNumber": {{processingNumber}},\n    "customerOrderNumber": {{customerOrderNumber}},\n    "description": "{{description}}",\n    "createdBy": "{{userAlias}}"\n}'
    }
    bodyType="raw"
    headers={'[{"key":"Bearer","value":"OAUTH2_TOKEN"}]'}
    importedQueryInputs={{
      ordered: [
        { objectType: "{{ noteCaseSelect.selectedItem.value}}" },
        { processingNumber: "{{urlProcessingNumber.value}}" },
        { customerOrderNumber: "{{ urlCustomerOrderNumber.value}}" },
        { description: "{{ descriptionText.value}}" },
        { userAlias: "{{getAliasQuery.data}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={52}
    playgroundQueryUuid="8ceddb67-c302-4483-9f36-b54580c57530"
    resourceName="45be196c-58f0-4819-b650-5c48826d4aac"
    retoolVersion="2.105.1"
    runWhenModelUpdates={false}
    showLatestVersionUpdatedWarning={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getLedgerQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="postOrcoTransaction"
    body={
      '{\n  "transactionID": 0,\n  "createdBy": "{{current_user.firstName + " "+ current_user.lastName}}",\n  "closedBy": "",\n  "category1": "{{category1.selectedLabel}}",\n  "category2": "{{category2.selectedLabel}}",\n  "category3": "{{category3.selectedLabel}}",\n  "category4": "{{category4.selectedLabel}}",\n  "c1Reason1": "{{reason1.selectedLabel}}",\n  "c1Reason2": "{{reason2.selectedLabel}}",\n  "c2Reason3": "{{reason3.selectedLabel}}",\n  "c2Reason4": "{{reason4.selectedLabel}}",\n  "c3Reason5": "{{reason5.selectedLabel}}",\n  "c3Reason6": "{{reason6.selectedLabel}}",\n  "c4Reason7": "{{reason7.selectedLabel}}",\n  "c4Reason8": "{{reason8.selectedLabel}}",\n  "dateAdded": "{{ moment(new Date()).format("YYYY-MM-DDTHH:mm:ss[Z]")}}",\n  "dateClosed": "",\n  "departmentID": {{getDepartmentID.data}},\n  "departmentName": "{{urlDepartmentName.value}}",\n   "orcoStatus": "Open",\n  "fkuserorder": {{urlProcessingNumber.value}}\n}'
    }
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    query="https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/transactions"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <RESTQuery
    id="productsQuery"
    enableTransformer={true}
    headers={'[{"key":"x-lz-authorize","value":"False"}]'}
    query="https://dev.api-order-service.dev.aws-01.legalzoom.com/core/orders/{{orderNumberInput.value}}?showOrderItemTree=false"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.order.orderItems"
  />
  <RESTQuery
    id="query1"
    query="https://retoolapi.dev/HC2xnT/data"
    resourceName="REST-WithoutResource"
    retoolVersion="2.99.5"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query2"
    query="https://retoolapi.dev/EFVO06/data"
    resourceName="REST-WithoutResource"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="resetQuery"
    query={include("./lib/resetQuery.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="table1Trigger"
    bodyType="json"
    query={
      'https://dev.fulfillment-orco.dev.aws-01.legalzoom.com/fulfillmentorco/v1/orco/transactions/{{table1.selectedRow.data.transactionId}}/close?userId={{current_user.firstName + " "+  current_user.lastName  }}'
    }
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="PUT"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId=""
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="run"
      params={{ ordered: [{ src: "table1.refresh()" }] }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="tableRefresh"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Orco Closed!!" },
                { description: "Orco Closed!!" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <JavascriptQuery
    id="tableRefresh"
    query={include("./lib/tableRefresh.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>

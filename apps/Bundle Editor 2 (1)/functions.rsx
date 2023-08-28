<GlobalFunctions>
  <JavascriptQuery
    id="getNextVariationName"
    query={include("./lib/getNextVariationName.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="queryCreateVariation"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <RESTQuery
    id="getProductsInOneConfig"
    enableMockResponseTransformer={false}
    enableTransformer={true}
    headers={'[{"key":"x-lz-authorize","value":"false"}]'}
    mockResponseTransformer={
      'return {"product":{"isActive":true,"productConfigurationId":8147,"productType":{"productTypeId":1,"name":"Process","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":null,"refProductConfiguration":null,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":null,"inclusionRulesetId":null,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":3038,"componentType":1,"name":"LegalZoom Products","displayNameOnBill":null,"displayNameOnWeb":null,"description":"LegalZoom Products","longDescription":null,"internalDescription":null,"isActive":true,"shipMethodId":0,"productLineId":8,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":false,"allowElectronicChecks":false,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":false,"mustAutoRenewToSubscribe":false,"isService":false},"subscriptionPolicy":null,"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[{"isActive":true,"productConfigurationId":8152,"productType":{"productTypeId":9,"name":"Cross-sell","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":1117,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":null,"inclusionRulesetId":5951,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":623,"componentType":5,"name":"Annual Reports Standard","displayNameOnBill":"Annual Reports Standard Package","displayNameOnWeb":"Annual Reports Standard Package","description":null,"longDescription":null,"internalDescription":null,"isActive":true,"shipMethodId":0,"productLineId":1,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":true,"allowElectronicChecks":true,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":false,"mustAutoRenewToSubscribe":false,"isService":false},"subscriptionPolicy":null,"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]},{"isActive":true,"productConfigurationId":8154,"productType":{"productTypeId":9,"name":"Cross-sell","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":1141,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":6120,"inclusionRulesetId":5952,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":631,"componentType":5,"name":"Operating Agreement Standard","displayNameOnBill":"Standard Operating Agreement","displayNameOnWeb":"Standard Operating Agreement","description":null,"longDescription":null,"internalDescription":null,"isActive":true,"shipMethodId":0,"productLineId":1,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":true,"allowElectronicChecks":true,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":false,"mustAutoRenewToSubscribe":false,"isService":false},"subscriptionPolicy":null,"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]},{"isActive":true,"productConfigurationId":8155,"productType":{"productTypeId":9,"name":"Cross-sell","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":808,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":null,"inclusionRulesetId":null,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":493,"componentType":5,"name":"Business Licenses Package - BL.com","displayNameOnBill":"Business License Package","displayNameOnWeb":"<b>Business License Package</b>","description":"Tells you exactly which licenses, permits and tax registrations are required for your business","longDescription":"<p style=\\"font-weight:bold;\\">Get Your Business License Package</p>\\n<p>As a business owner, you\'re responsible for making sure your business has the proper federal, state and local permits to operate legally. To make your job easier, our trusted partner can quickly and easily identify your specific license requirements.</p>\\n<p>Our trusted partner will compile the permits, licenses and tax registrations your business requires. Then, they\'ll email you the required forms, normally in 1-3 business days.</p>\\n<p><b>Your customized package includes:</b></p>\\n<ul>\\n<li>An overview of the licenses, permits, and tax registrations required for your business</li>\\n<li>Licensing authority contact information, including name, address, telephone number, etc.</li>\\n<li>Detailed information on how much money to send with each application, and where to send it</li>\\n<li style=\\"font-weight:bold;\\">The actual license, permit, and tax registration applications and associated documents</li>\\n</ul>\\n<p>Once you receive your package, you need to complete the necessary applications and submit payment (if applicable) to the appropriate licensing authorities.</p>\\n<p style=\\"font-weight:bold;\\">Select this option when you complete your order. You\'ll receive an email from our trusted partner within 1-3 business days of receiving your LegalZoom package.</p>","internalDescription":null,"isActive":true,"shipMethodId":0,"productLineId":1,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":true,"allowElectronicChecks":true,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":false,"mustAutoRenewToSubscribe":false,"isService":false},"subscriptionPolicy":null,"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]},{"isActive":true,"productConfigurationId":8156,"productType":{"productTypeId":9,"name":"Cross-sell","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":8111,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":6262,"inclusionRulesetId":5953,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":3032,"componentType":5,"name":"Business Attorney Plan - Monthly","displayNameOnBill":"Business Attorney Plan","displayNameOnWeb":"Business Attorney Plan","description":null,"longDescription":null,"internalDescription":null,"isActive":true,"shipMethodId":0,"productLineId":5,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":false,"allowElectronicChecks":false,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":true,"mustAutoRenewToSubscribe":true,"isService":false},"subscriptionPolicy":{"productComponentId":3032,"renewalType":"SubscriptionEndDate","subscriptionStatusOnPaid":"Active","freeShippingDuration":null,"renewalAlertDuration":null,"subscriptionDuration":1,"freeShippingDurationType":null,"renewalAlertDurationType":null,"subscriptionDurationType":"Months"},"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]},{"isActive":true,"productConfigurationId":8157,"productType":{"productTypeId":2,"name":"Package","isActive":true},"isDefaultPackage":true,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":null,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":null,"inclusionRulesetId":null,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":true,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":3039,"componentType":5,"name":"LegalZoom Package","displayNameOnBill":"Your Bundle","displayNameOnWeb":"Your Bundle","description":"Container to add cross-sells to any LegalZoom products","longDescription":null,"internalDescription":null,"isActive":true,"shipMethodId":0,"productLineId":8,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":true,"allowElectronicChecks":true,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":false,"mustAutoRenewToSubscribe":false,"isService":false},"subscriptionPolicy":null,"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]},{"isActive":true,"productConfigurationId":8158,"productType":{"productTypeId":9,"name":"Cross-sell","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":145,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":6032,"inclusionRulesetId":5949,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":111,"componentType":5,"name":"LLC Economy","displayNameOnBill":"Economy LLC","displayNameOnWeb":"Economy LLC","description":null,"longDescription":null,"internalDescription":null,"isActive":true,"shipMethodId":0,"productLineId":1,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":true,"allowElectronicChecks":true,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":false,"mustAutoRenewToSubscribe":false,"isService":false},"subscriptionPolicy":null,"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]},{"isActive":true,"productConfigurationId":8159,"productType":{"productTypeId":9,"name":"Cross-sell","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":7632,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":null,"inclusionRulesetId":5950,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":2949,"componentType":5,"name":"Tax Prep Essentials Plan ($99/month for 12 months)","displayNameOnBill":"Tax Prep Essentials Plan","displayNameOnWeb":"Tax Prep Essentials Plan","description":null,"longDescription":null,"internalDescription":"Billed in monthly installments","isActive":true,"shipMethodId":0,"productLineId":5,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":false,"allowElectronicChecks":false,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":true,"mustAutoRenewToSubscribe":true,"isService":false},"subscriptionPolicy":{"productComponentId":2949,"renewalType":"SubscriptionEndDate","subscriptionStatusOnPaid":"Active","freeShippingDuration":null,"renewalAlertDuration":null,"subscriptionDuration":1,"freeShippingDurationType":null,"renewalAlertDurationType":null,"subscriptionDurationType":"Years"},"productPaymentConfiguration":[{"productPaymentConfigurationId":5,"duration":1,"durationType":"Month","recurrence":12}]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]},{"isActive":true,"productConfigurationId":8160,"productType":{"productTypeId":9,"name":"Cross-sell","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":113,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":null,"inclusionRulesetId":5958,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":108,"componentType":5,"name":"Incorporation Economy","displayNameOnBill":"Economy Corporation","displayNameOnWeb":"Economy Corporation","description":"Simple, effective incorporation filing.","longDescription":null,"internalDescription":null,"isActive":true,"shipMethodId":0,"productLineId":1,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":true,"allowElectronicChecks":true,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":false,"mustAutoRenewToSubscribe":false,"isService":false},"subscriptionPolicy":null,"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]},{"isActive":true,"productConfigurationId":8330,"productType":{"productTypeId":9,"name":"Cross-sell","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":8326,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":6306,"inclusionRulesetId":6299,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":3087,"componentType":5,"name":"EIN","displayNameOnBill":"EIN Obtainment","displayNameOnWeb":"EIN Obtainment","description":"It?s like a social security number for your business. You?ll likely need it for a bank account, hiring employees, and more.","longDescription":"It?s like a social security number for your business. You?ll likely need it for a bank account, hiring employees, and more.","internalDescription":"This package is for the package builder POC","isActive":true,"shipMethodId":0,"productLineId":1,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":true,"allowElectronicChecks":true,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":false,"mustAutoRenewToSubscribe":false,"isService":false},"subscriptionPolicy":null,"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]},{"isActive":true,"productConfigurationId":8332,"productType":{"productTypeId":9,"name":"Cross-sell","isActive":true},"isDefaultPackage":false,"shouldDisplayOnBill":true,"parentProductId":8147,"refProductConfiguration":8304,"countyQuestion":null,"stateQuestion":null,"quantityQuestion":null,"availabilityRulesetId":6326,"inclusionRulesetId":6319,"displayNameOnBill":null,"stateGroupQuestionId":null,"countyGroupQuestionId":null,"quantityAdjustment":0,"billingDisplayOrder":0,"productConfigurationFlags":{"isDefault":false,"canAddMultiPurchase":false,"showAsAdditionalProducts":false,"showAsSpecialOffers":false,"doNotShowInOrderManager":false,"isCreateMultipleItems":false,"isChargeInRevision":false,"isASD":false,"alwaysAddToCart":false,"rollupOnCustomerDisplay":false,"doNotShowInWebsite":false,"hasRevisionPolicy":false},"productComponent":{"productComponentId":3084,"componentType":5,"name":"RA","displayNameOnBill":"RA","displayNameOnWeb":"RA","description":"The state makes you name someone who will be at your business everyday during regular hours to accept official legal mail the state sends you. It can be you, but know what you?re signing up for.","longDescription":"The state makes you name someone who will be at your business everyday during regular hours to accept official legal mail the state sends you. It can be you, but know what you?re signing up for.","internalDescription":"This is a SKU for Package Builder POC","isActive":true,"shipMethodId":0,"productLineId":5,"paymentReceiverId":1,"productComponentFlags":{"allowCustomerToAdd":false,"allowCustomizablePrice":false,"allowExpediteOnPackage":false,"allowStoreCredit":false,"allowElectronicChecks":false,"canSubscribe":false,"canEditQuantity":false,"autoRenewByDefault":true,"mustAutoRenewToSubscribe":false,"isService":false},"subscriptionPolicy":{"productComponentId":3084,"renewalType":"AniversaryDate","subscriptionStatusOnPaid":"Active","freeShippingDuration":null,"renewalAlertDuration":null,"subscriptionDuration":1,"freeShippingDurationType":null,"renewalAlertDurationType":null,"subscriptionDurationType":"Years"},"productPaymentConfiguration":[]},"userOrderType":0,"childProducts":[],"inclusionPassedQuantities":[]}],"inclusionPassedQuantities":[]}}'
    }
    query="https://dev.api-product-service.dev.aws-01.legalzoom.com/core/products/8147?getChildren=true&activeOnly=true"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.product.childProducts.map(cp => cp.productComponent.name).sort();"
  />
  <RESTQuery
    id="getVariations"
    query="variations?groupName={{urlparams.groupName}}"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="productRowUpdated"
    query={include("./lib/productRowUpdated.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="queryCreateBundle"
    body={
      '[{"key":"groupId","value":"{{urlparams.id}}"},{"key":"variationId","value":"{{getVariations.data[i].id}}"},{"key":"name","value":"\\"\\""},{"key":"amount","value":"0"},{"key":"description","value":"\\"\\""},{"key":"longDescription","value":"\\"\\""}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={false}
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    mockResponseTransformer="return "
    query="bundles"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="queryCreateBundle2"
    body={
      '[{"key":"groupId","value":"{{urlparams.id}}"},{"key":"variationId","value":"{{getVariations.data[i].id}}"},{"key":"name","value":"\\"\\""},{"key":"amount","value":"0"},{"key":"description","value":"\\"\\""},{"key":"longDescription","value":"\\"\\""}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={false}
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    mockResponseTransformer="return "
    query="bundles"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="queryCreateProduct"
    body={
      '[{"key":"amount","value":"{{productAmount}}"},{"key":"isIncluded","value":"{{isProductIncluded}}"},{"key":"groupId","value":"{{productGroupId}}"},{"key":"variationId","value":"{{productVariationId}}"},{"key":"bundleId","value":"{{productBundleId}}"},{"key":"name","value":"{{productName}}"}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={false}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query="products"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="queryCreateVariation"
    body={
      '[{"key":"groupId","value":"{{urlparams.id}}"},{"key":"name","value":"{{getNextVariationName.data}}"}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={false}
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query="variations"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="queryDeleteBundle"
    body="[]"
    bodyType="json"
    query="bundles?id={{getVariations.data[ri[0]].bundles[ri[1]].id}}"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="DELETE"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="queryDeleteProduct"
    body="[]"
    bodyType="json"
    query="products?id={{productId}}"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="DELETE"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="queryDeleteVariation"
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={false}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query="variations?id={{getVariations.data[i].id}}"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="DELETE"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="queryUpdateBundle"
    body={
      '[{"key":"id","value":"{{getVariations.data[ri[0]].bundles[ri[1]].id}}"},{"key":"name","value":"{{editableText_bundleName.value}}"},{"key":"amount","value":"{{editableText_bundleAmount[i].value}}"},{"key":"description","value":"\\"\\""},{"key":"longDescription","value":"\\"\\""},{"key":"","value":""},{"key":"","value":""}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={false}
    headers={'[{"key":"Content-type","value":"application/json"}]'}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query="bundles"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
console.log('data: ', data);
return data"
    type="PATCH"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="queryUpdateGroup"
    body={
      '{\n  "name": {{editableTextGroupName.value}},\n  "id": {{urlparams.id}}\n}'
    }
    bodyType="raw"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={false}
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query="groups"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="PATCH"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="queryUpdateIncludedAvailableInBundle"
    body={
      '[{"key":"amount","value":"{{productAmount}}"},{"key":"isIncluded","value":"{{isProductIncluded}}"},{"key":"groupId","value":"{{productGroupId}}"},{"key":"variationId","value":"{{productVariationId}}"},{"key":"bundleId","value":"{{productBundleId}}"},{"key":"id","value":"{{productId}}"},{"key":"name","value":"{{productName}}"}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={false}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query="products"
    resourceName="c487515a-c5d7-424c-9b9b-241d4d68b95c"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="PATCH"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getVariations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <JavascriptQuery
    id="queryVariationsView"
    query={include("./lib/queryVariationsView.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <State id="stateBundleIndex" value="null" />
  <State id="stateVariationIndex" value="null" />
  <State id="stateVariations" />
</GlobalFunctions>

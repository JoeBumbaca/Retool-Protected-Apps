<GlobalFunctions>
  <RESTQuery
    id="getPrices"
    query="admin/v1/prices"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getProductBySKU"
    query="admin/v1/products/{{urlparams.sku}}"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getRight"
    query="admin/v1/rights/{{getProductBySKU.data.rights_id}}"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getRtmpSlots"
    query="admin/v1/rtmp_slots/{{ getRight.data.rtmp_slot }}"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="queryUpdateButton"
    query={include("./lib/queryUpdateButton.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="query_save_thumbnail"
    body={
      '[{"key":"image","value":"{{ { ...select_thumbnail.files[0], \\"data\\": select_thumbnail.value[0] } }}","operation":"binary"}]'
    }
    bodyType="form-data"
    query="admin/v1/images/upload?key={{ (getRight.data.partner === '' || getRight.data.competition_id === '' || textInput1.value === '') ? '' : `${getRight.data.partner}_${getRight.data.competition_id}_${textInput1.value}_${Date.now().toString(36)}` }}&entity=thumbnail"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                {
                  description:
                    "{{ JSON.stringify(JSON.parse(query_save_thumbnail.data.message), null, 2) }}",
                },
                { title: "Upload thumbnail image failed" },
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
  <RESTQuery
    id="updateProduct"
    body={
      '[{"key":"commentary_languages","value":"{{selectCommentaryLanguage.value}}"},{"key":"countries_of_purchase","value":"{{textInputCountriesOfPurchase.value}}"},{"key":"countries_of_consumption","value":"{{textInputCountriesOfConsumption.value}}"},{"key":"push_enabled","value":"{{radioPushNotifications.value.toString()}}"},{"key":"price_tier","value":"{{selectPrice.value}}"},{"key":"merchant","value":"{{checkboxMerchant.value.join()}}"},{"key":"content_id","value":"{{radioRecreateContent.value == true ? \\"unknown\\" : \\"\\" }}"},{"key":"drm_enabled","value":"{{checkboxDRMEnabled.value}}"},{"key":"live_wrap_up_minutes","value":"{{select_live_after_mins.value}}"},{"key":"live_build_up_minutes","value":"{{select_live_before_mins.value}}"},{"key":"encoding_wrap_up_minutes","value":"{{select_encoding_after_mins.value}}"},{"key":"encoding_build_up_minutes","value":"{{select_encoding_before_mins.value}}"},{"key":"path","value":"{{(getProductBySKU.data.source_type === \'rtmp\') ? selectRtmp.value.trim() : getProductBySKU.data.source_type === \'hls\' || getProductBySKU.data.source_type === \'srt\' ? selectPathHlsOrSrt.value.trim() : \'\' }}"},{"key":"sales_disabled","value":"{{checkboxSalesDisabled.value}}"},{"key":"thumbnail_url","value":"{{ (query_save_thumbnail.data && query_save_thumbnail.data.url) ? query_save_thumbnail.data.url : ((select_thumbnail_url.value !== \\"\\") ? select_thumbnail_url.value : null) }}"}]'
    }
    bodyType="json"
    query="admin/v1/products/{{urlparams.sku}}"
    queryFailureConditions={
      '[{"condition":"{{ status !== 400 && data.hasOwnProperty(\'validation\') }}","message":"{{ Object.keys(data.validation).map((e, i) => e + \\" \\" + Object.values(data.validation)[i])[0] }}"},{"condition":"","message":""},{"condition":"","message":""}]'
    }
    queryTimeout="200000"
    resourceName="a68a7599-719e-4f08-be6c-d72a7f5de798"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="PUT"
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Product saved successfully" },
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
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                { title: "Error saving Product" },
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
</GlobalFunctions>

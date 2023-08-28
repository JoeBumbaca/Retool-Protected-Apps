<GlobalFunctions>
  <NoSqlQuery
    id="addNewSubCategoryQuery"
    collection="category"
    insert="{_id: {$oid:  {{ categoriesTable.selectedRow.data._id }} } }"
    method="updateOne"
    query={include("./lib/addNewSubCategoryQuery.query", "string")}
    resourceName="abe48b65-6cfe-4fe5-8b65-543b061c463d"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    update="{ $push: { child_categories: {name_en: {{textInput5.value}} , image_url:{{image_url}} ,name_id: {{textInput6.value}} } } }"
    useRawCollectionName={true}
  />
  <NoSqlQuery
    id="checkForAbbreviationQuery"
    collection="category"
    method="findOne"
    query={include("./lib/checkForAbbreviationQuery.query", "string")}
    resourceName="abe48b65-6cfe-4fe5-8b65-543b061c463d"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <NoSqlQuery
    id="createNewCategoryQuery"
    collection="category"
    insert={
      '{name_en: "{{cat_name_eng_tv.value}}", name_id: "{{cat_name_id_tv.value}}" ,\n "image_url": [{{ image_url }}],\n "abbreviation": "{{abbreviation_tv.value}}",\n\n child_categories: {{newCategory.child_categories}}\n}'
    }
    method="insertOne"
    query={include("./lib/createNewCategoryQuery.query", "string")}
    resourceName="abe48b65-6cfe-4fe5-8b65-543b061c463d"
    runWhenModelUpdates={false}
    sortBy="{name: 1}"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="run"
      params={{ ordered: [{ src: "add_category_modal.close();" }] }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </NoSqlQuery>
  <NoSqlQuery
    id="editCategoryQuery"
    collection="category"
    method="updateOne"
    query={include("./lib/editCategoryQuery.query", "string")}
    resourceName="abe48b65-6cfe-4fe5-8b65-543b061c463d"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    update="{$set: { name_en: {{ name}}, name_id: {{category_name_id}} }}
"
  />
  <NoSqlQuery
    id="editSubCategoriesQuery"
    collection="category"
    method="updateOne"
    query={include("./lib/editSubCategoriesQuery.query", "string")}
    resourceName="abe48b65-6cfe-4fe5-8b65-543b061c463d"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    update={
      '{$set: { "child_categories.$.name_en": {{ name }}, "child_categories.$.name_id": {{ name_id }} }}\n'
    }
  />
  <NoSqlQuery
    id="getCategoriesQuery"
    collection="category"
    query={include("./lib/getCategoriesQuery.query", "string")}
    resourceName="abe48b65-6cfe-4fe5-8b65-543b061c463d"
    sortBy="{name_en: 1}"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <GCSQuery
    id="query9"
    resourceName="4a42df35-f913-4e4e-9b30-8566485c0e94"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <GCSQuery
    id="uploadCategoryImageQuery"
    actionType="upload"
    bucketName={
      '{{retoolContext.environment == "production"? "svc-prod-ap-se1-bucket/storefront/categories": "svc-preprod-ap-se1-bucket/storefront/categories" }}'
    }
    resourceName="4a42df35-f913-4e4e-9b30-8566485c0e94"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    uploadData="{{ newCategoryFileDropzone.value[0]}}"
    uploadFileAcl={null}
    uploadFileName="{{fileName}}"
    uploadFileType="binary"
  />
  <GCSQuery
    id="uploadSubCategoryImageQuery"
    actionType="upload"
    bucketName={
      '{{retoolContext.environment == "production"? "svc-prod-ap-se1-bucket": "svc-preprod-ap-se1-bucket" }}/storefront/categories/subcategories'
    }
    resourceName="4a42df35-f913-4e4e-9b30-8566485c0e94"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    uploadData="{{ file}}"
    uploadFileAcl="bucket-owner-full-control"
    uploadFileName="{{fileName}}"
    uploadFileType="binary"
  />
</GlobalFunctions>

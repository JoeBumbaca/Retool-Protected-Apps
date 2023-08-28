<Container
  id="container1"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "rgba(209, 209, 209, 0)" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      _defaultValue=""
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="eaa74" viewKey="View 1">
    <Text
      id="text2"
      _defaultValue=""
      value="##### Product Categories"
      verticalAlign="center"
    />
    <Modal
      id="add_category_modal"
      buttonText="+ Add Category"
      closeOnOutsideClick={true}
      events={[
        {
          ordered: [
            { event: "close" },
            { type: "script" },
            { method: "run" },
            { pluginId: "" },
            { targetId: null },
            {
              params: { ordered: [{ src: "\ngetCategoriesQuery.trigger();" }] },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      modalHeightType="auto"
      modalWidth="80%"
      style={{
        ordered: [
          { "border-radius": "0px" },
          { "accent-background": "rgba(0, 0, 0, 1)" },
        ],
      }}
    >
      <Form
        id="form1"
        hoistFetching={true}
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{ ordered: [{ border: "rgba(209, 209, 209, 0)" }] }}
      >
        <Header>
          <Text
            id="formTitle1"
            _defaultValue=""
            value="##### Add Category"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <FileDropzone
            id="newCategoryFileDropzone"
            accept={'["WEBP"]'}
            iconBefore="bold/programming-browser-search"
            label="Icon
"
            labelPosition="top"
            parseFiles={true}
            placeholder="Upload WEBP (max 2MB)"
          />
          <Text
            id="text15"
            _defaultValue=""
            hidden="true"
            style={{ ordered: [{ color: "danger" }] }}
            value="An image is required"
            verticalAlign="center"
          />
          <TextInput
            id="cat_name_id_tv"
            _defaultValue=""
            hideLabel={false}
            label="Category Name (ID) *"
            labelPosition="top"
            placeholder="Enter value"
          />
          <TextInput
            id="cat_name_eng_tv"
            _defaultValue=""
            label="Category Name (ENG) *"
            labelPosition="top"
            placeholder="Enter value"
          />
          <Text
            id="text14"
            _defaultValue=""
            hidden="true"
            style={{ ordered: [{ color: "danger" }] }}
            value="This field is required"
            verticalAlign="center"
          />
          <Text
            id="text13"
            _defaultValue=""
            hidden="true"
            style={{ ordered: [{ color: "danger" }] }}
            value="This field is required"
            verticalAlign="center"
          />
          <TextInput
            id="abbreviation_tv"
            _defaultValue=""
            label="Abbreviation *"
            labelPosition="top"
            placeholder="Enter value"
          />
          <Text
            id="abbreviation_error_tv"
            _defaultValue=""
            hidden="true"
            style={{ ordered: [{ color: "danger" }] }}
            value="This field is required"
            verticalAlign="center"
          />
          <Text
            id="text5"
            _defaultValue=""
            value="###### Sub Categories"
            verticalAlign="center"
          />
          <TableLegacy
            id="new_subcategories_table"
            _compatibilityMode={false}
            columnColors={{
              ordered: [
                { name_en: "" },
                { name_id: "" },
                { fileName: "" },
                { file: "" },
                { image_url: "" },
                { name: "" },
                { filaName: "" },
                { child_categories: "" },
              ],
            }}
            columnEditable={{ ordered: [{ image_url: true }] }}
            customButtonName=""
            data="{{newCategory.child_categories}}"
            doubleClickToEdit={true}
            heightType="auto"
            style={{
              ordered: [
                { border: "rgba(209, 209, 209, 0)" },
                { headerBackground: "rgba(247, 247, 247, 0)" },
              ],
            }}
          />
        </Body>
        <Footer>
          <Link
            id="link2"
            style={{ ordered: [{ text: "primary" }] }}
            text="+Add Sub Category"
          >
            <Event
              event="click"
              method="run"
              params={{
                ordered: [{ src: "addSubCategoryToNewCategoryModal.open();" }],
              }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Link>
          <Text
            id="must_have_subcategory_tv"
            _defaultValue=""
            hidden="true"
            style={{ ordered: [{ color: "danger" }] }}
            value="All categories should have at least one sub category"
            verticalAlign="center"
          />
          <Button
            id="submit_new_category_btn"
            loading=""
            submitTargetId="form1"
            text="Submit"
          >
            <Event
              enabled=""
              event="click"
              method="run"
              params={{
                ordered: [
                  {
                    src: '//Don\'t change this button type to submit otherwise the upload query won\'t work \n\nif(cat_name_eng_tv.value === ""){\n  text14.setHidden(false);\n}else if (cat_name_id_tv.value.value === ""){\n  text13.setHidden(false);\n}else if (newCategoryFileDropzone.value.length == 0){\n  text15.setHidden(false);\n}else if (abbreviation_tv.value == ""){\n  abbreviation_error_tv.setHidden(false);\n  abbreviation_error_tv.setValue("This field is required");\n}else if (newCategory.child_categories.length == 0){\n  must_have_subcategory_tv.setHidden(false);\n}else{\n  \n \n  \n  \n  text14.setHidden(true);\n  text13.setHidden(true);\n  text15.setHidden(true);\n  \n    submit_new_category_btn.setDisabled(true); \n  \n  \n  \n  \n  \n  checkForAbbreviationQuery.trigger({\n     onSuccess: function (data) {\n        \n       console.log("success check");\n       console.log(data);\n       \n       \n      if( data && Object.keys(data).length === 0 && Object.getPrototypeOf(data) === Object.prototype){\n          console.log("empty results");\n        \n            uploadChildCategoryImages(0)\n      \n\n      }else{\n        console.log("found something");\n        \n        abbreviation_error_tv.setHidden(false);\n        abbreviation_error_tv.setValue("This abbreviation is already taken. Please enter a different one");\n        \n        submit_new_category_btn.setDisabled(false); \n\n      }\n       \n     },\n    onFailure: function (error) {\n      console.log("success check");\n       console.log(error);\n    },\n  });\n  \n   \n  \n\n  \n \n  \n\n \n  \n\n\n\n}\n\n\n\nfunction uploadChildCategoryImages(i){\n  \n  if(i == newCategory.child_categories.length){\n    uploadCategory();\n  }\n  \n  var child_category = newCategory.child_categories[i];\n  var fileNameSub = child_category.fileName;\n  var file = child_category.file;\n  \n  \n  uploadSubCategoryImageQuery.trigger({\n   additionalScope: {fileName: fileNameSub, file : file },  \n    onSuccess: function (data) {\n      console.log("success query "+i);\n      console.log(data);\n        \n          delete newCategory.child_categories[i].fileName;\n          delete newCategory.child_categories[i].file;\n      \n      uploadChildCategoryImages(i +1);\n     },\n    onFailure: function (error) {\n      console.log("error query "+i);\n      // Update the Errors text\n         console.log(error);\n      \n       submit_new_category_btn.setDisabled(false); \n      \n    },\n  });\n}\n\nfunction uploadCategory(){\n  var fileName = cat_name_eng_tv.value;\n    var ext = newCategoryFileDropzone.files[0].name.split(\'.\').pop();\n\n    fileName = fileName.replace(/\\s/g, \'\')+"."+ext;\n  \n  console.log("filename: "+fileName);\n\n\n    uploadCategoryImageQuery.trigger({\n       additionalScope: {fileName: fileName },  \n        onSuccess: function (data) {\n          console.log("success query ");\n          console.log(data);\n          submit_new_category_btn.setDisabled(false); \n          \n         \n          triggerCreateNewCategory(fileName);\n        \n         },\n        onFailure: function (error) {\n          console.log("error query ");\n          // Update the Errors text\n             console.log(error);\n\n           submit_new_category_btn.setDisabled(false); \n        },\n      });\n}\n\nfunction triggerCreateNewCategory(categoryFileName){\n\n  createNewCategoryQuery.trigger({\n               additionalScope: { image_url: categoryFileName},  \n                onSuccess: function (data) {\n                  console.log("success query ");\n                  console.log(data);\n                  \n                  cat_name_eng_tv.clearValue();\n                  cat_name_id_tv.clearValue();\n                  newCategoryFileDropzone.clearValue();\n                  \n                  \n                  \n                  newCategory = {};\n                  child_categories = []\n                  newCategory.child_categories = child_categories;\n\n                  new_subcategories_table.setData(newCategory.child_categories);\n\n                  \n                 },\n                onFailure: function (error) {\n                  console.log("error query ");\n                  // Update the Errors text\n                     console.log(error);\n                  \n                      submit_new_category_btn.setDisabled(true); \n\n\n                 },\n              });\n}\n\n',
                  },
                ],
              }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="cancel"
            style={{
              ordered: [
                { background: "rgba(255, 255, 255, 1)" },
                { border: "rgba(98, 93, 93, 1)" },
              ],
            }}
            styleVariant="solid"
            text="Cancel"
          >
            <Event
              event="click"
              method="run"
              params={{
                ordered: [
                  {
                    src: 'cat_name_id_tv.setValue("");\ncat_name_eng_tv.setValue("");\nadd_category_modal.close();',
                  },
                ],
              }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Footer>
        <Event
          enabled=""
          event="submit"
          method="run"
          params={{
            ordered: [
              {
                src: '  uploadCategoryImageQuery.trigger({\n   additionalScope: { }, // This is where we override the `i` variable\n    // You can use the argument to get the data with the onSuccess function\n    onSuccess: function (data) {\n      console.log("success query ");\n      console.log(data);\n     },\n    onFailure: function (error) {\n      console.log("error query ");\n      // Update the Errors text\n         console.log(error);\n    },\n  });\n\n',
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Button
      id="button3"
      style={{
        ordered: [
          { borderRadius: "0" },
          { background: "rgba(255, 255, 255, 1)" },
          { border: "rgb(102, 102, 102)" },
        ],
      }}
      styleVariant="solid"
      text="Import"
    />
    <Button
      id="button8"
      style={{
        ordered: [
          { background: "rgba(255, 255, 255, 1)" },
          { borderRadius: "0" },
          { border: "rgb(102, 102, 102)" },
        ],
      }}
      styleVariant="solid"
      text="+ Add Sub Category"
    >
      <Event
        event="click"
        method="run"
        params={{ ordered: [{ src: "addSubCategoryModal.open();" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Include src="./addSubCategoryModal.rsx" />
    <Include src="./addSubCategoryToNewCategoryModal.rsx" />
    <TextInput
      id="search_category_tv"
      _defaultValue=""
      hideLabel={true}
      iconBefore="bold/interface-search"
      placeholder="Search"
    />
    <TableLegacy
      id="categoriesTable"
      _columns={[
        "_id",
        "level",
        "image_url",
        "name_en",
        "name_id",
        "abbreviation",
        "child_categories",
        "Custom Column 2",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { child_categories: "" },
          { "Custom Column 1": "" },
          { "Custom Column 3": "" },
          { "Custom Column 2": "" },
          { image_url: "" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { child_categories: "" },
          { "Custom Column 1": "" },
          { "Custom Column 3": "" },
          { "Custom Column 2": "" },
          { image_url: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [{ _id: true }, { level: false }, { "Custom Column 2": true }],
      }}
      _compatibilityMode={false}
      calculatedColumns={["Custom Column 2"]}
      columnAlignment={{
        ordered: [
          { child_categories: "center" },
          { "Custom Column 1": "left" },
          { "Custom Column 3": "left" },
          { "Custom Column 2": "center" },
          { image_url: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { level: "" },
          { image_url: "" },
          { name: "" },
          { category_name_id: "" },
          { abbreviation: "" },
          { name_id: "" },
          { "Custom Column 2": "" },
          { _id: "" },
          { name_en: "" },
          { child_categories: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { image_url: false },
          { name: true },
          { category_name_id: true },
          { abbreviation: false },
          { name_id: true },
          { "Custom Column 2": false },
          { _id: false },
          { name_en: true },
          { child_categories: false },
        ],
      }}
      columnFormats={{
        ordered: [
          { child_categories: "ModalDataCell" },
          { "Custom Column 1": "button" },
          { "Custom Column 3": "LinkDataCell" },
          { "Custom Column 2": "ModalDataCell" },
          { image_url: "ImageDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { image_url: "Icon" },
          { name: "Category Name (ENG)" },
          { category_name_id: "Category Name (ID)" },
          { abbreviation: "Abbreviation" },
          { name_id: "Category Name (ID)" },
          { "Custom Column 1": " " },
          { "Custom Column 2": " " },
          { _id: "Category ID" },
          { name_en: "Category Name (ENG)" },
          { child_categories: "Sub Categories" },
        ],
      }}
      columnMappers={{
        ordered: [
          {
            child_categories:
              '{{self == null?"--":""}}{{self[0]? self[0].name_en :""}} {{self[1]? ", "+self[1].name_en :""}} {{self[2]? ", "+self[2].name_en :""}}',
          },
          { "Custom Column 1": "more" },
          { "Custom Column 2": "Edit" },
          {
            image_url:
              '{{retoolContext.environment == "production"? "https://assets.dropezy.net": "https://preprod-assets.dropezy.dev" }}/storefront/categories/{{self[0]}}',
          },
        ],
      }}
      columnMappersRenderAsHTML={{ ordered: [{ "Custom Column 1": true }] }}
      columnTypeProperties={{
        ordered: [
          { child_categories: { ordered: [] } },
          {
            "Custom Column 1": {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "auto" },
                { allowCustomValue: true },
                { optionLabels: null },
                { optionColors: null },
                { optionValues: null },
              ],
            },
          },
          { "Custom Column 3": { ordered: [{ openInNewTab: true }] } },
          { "Custom Column 2": { ordered: [] } },
          { image_url: { ordered: [] } },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          { "Custom Column 1": { ordered: [{ buttonType: "action" }] } },
        ],
      }}
      customButtonName=""
      data="{{ getCategoriesQuery.data }}"
      disableSorting={{
        ordered: [{ "Custom Column 1": true }, { "Custom Column 2": true }],
      }}
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "script" },
            { method: "run" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    src: 'var rows = categoriesTable.recordUpdates;\nvar errors = "";\n\nfunction runQuery(i) {\n  // Update the Status text\n//  Status.setValue("Progress: " + (i.toString() + "/" + total.toString()));\n  \n  console.log("runnning query "+i);\n\n  if (i >= rows.length) {\n    console.log("Finished running all queries");\n    getCategoriesQuery.trigger();\n    return;\n  }\n\n  console.log("Running query for row", i);\n  \n  console.log(rows[i]._id +" "+rows[i].name_en)\n\n  editCategoryQuery.trigger({\n   additionalScope: { i: i,\n                    id: rows[i]._id,\n                    name: rows[i].name_en,\n                    category_name_id: rows[i].name_id,\n                     // abbreviation: rows[i].abbreviation,\n                    // icon: rows[i].image_url\n                    },\n    // You can use the argument to get the data with the onSuccess function\n    onSuccess: function (data) {\n      console.log("success query "+i);\n      console.log(data);\n      runQuery(i + 1);\n    },\n    onFailure: function (error) {\n      console.log("error query "+i);\n      // Update the Errors text\n      errors += "Found error at line " + i.toString() + ":  " + error + "\\n\\n";\n    //  Errors.setValue(errors);\n      runQuery(i + 1);\n    },\n  });\n}\n\nrunQuery(0);',
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      style={{
        ordered: [
          { toolbarBackground: "rgba(247, 247, 247, 0)" },
          { headerBackground: "rgba(205, 184, 184, 0)" },
          { border: "rgba(209, 209, 209, 0)" },
        ],
      }}
    >
      <Text
        id="text9"
        _defaultValue=""
        value="#### Subcategories"
        verticalAlign="center"
      />
      <TextInput
        id="textInput4"
        _defaultValue=""
        disabled="true"
        label="Main Category"
        placeholder="Enter value"
        style={{ ordered: [{ background: "rgb(238, 240, 242)" }] }}
        value="{{categoriesTable.selectedRow.data.name_en}}"
      />
      <Text
        id="text11"
        _defaultValue=""
        horizontalAlign="center"
        value="#### {{categoriesTable.selectedRow.data.name}}"
        verticalAlign="center"
      />
      <TableLegacy
        id="subCategoriesTable"
        _columns={["_id", "level", "image_url", "name"]}
        _columnSummaryTypes={{
          ordered: [{ child_categories: "" }, { image_url: "" }],
        }}
        _columnSummaryValues={{
          ordered: [{ child_categories: "" }, { image_url: "" }],
        }}
        _columnVisibility={{ ordered: [{ _id: true }, { level: false }] }}
        _compatibilityMode={false}
        columnAlignment={{
          ordered: [{ child_categories: "left" }, { image_url: "left" }],
        }}
        columnColors={{
          ordered: [
            { filaName: "" },
            { level: "" },
            { image_url: "" },
            { name: "" },
            { abbreviation: "" },
            { name_id: "" },
            { _id: "" },
            { file: "" },
            { name_en: "" },
            { child_categories: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { child_categories: false },
            { name: true },
            { name_id: true },
            { image_url: true },
          ],
        }}
        columnFormats={{
          ordered: [
            { child_categories: "ModalDataCell" },
            { image_url: "ImageDataCell" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { image_url: "icon" },
            { name: "Sub Category Name (ENG)" },
            { "Custom Column 1": "Sub Category Name (ID)" },
            { _id: "ID" },
            { name_id: "Sub Category Name (ID)" },
          ],
        }}
        columnMappers={{
          ordered: [
            {
              child_categories:
                "{{self['0'].name}}, {{ self['1'].name}} {{self['2'].name}}",
            },
            {
              image_url:
                'https://storage.googleapis.com/{{retoolContext.environment == "production"? "svc-prod-ap-se1-bucket": "svc-preprod-ap-se1-bucket" }}/storefront/categories/subcategories/{{self[0] }}',
            },
          ],
        }}
        columnTypeProperties={{
          ordered: [
            { child_categories: { ordered: [] } },
            { image_url: { ordered: [] } },
          ],
        }}
        customButtonName=""
        data="{{ categoriesTable.selectedRow.data.child_categories}}"
        doubleClickToEdit={true}
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "script" },
              { method: "run" },
              { pluginId: "" },
              { targetId: null },
              {
                params: {
                  ordered: [
                    {
                      src: 'var rows = subCategoriesTable.recordUpdates;\nvar errors = "";\nvar total = rows.length;\n\nfunction runQuery(i) {\n  // Update the Status text\n//  Status.setValue("Progress: " + (i.toString() + "/" + total.toString()));\n  \n  console.log("runnning query "+i);\n\n  if (i >= rows.length) {\n    console.log("Finished running all queries");\n    getCategoriesQuery.trigger();\n    return;\n  }\n\n  console.log("Running query for row", i);\n  \n  console.log(rows[i]._id +" "+rows[i].name)\n\n  editSubCategoriesQuery.trigger({\n   additionalScope: { i: i,\n                    id: rows[i]._id,\n                    name: rows[i].name,\n                    name_id: rows[i].name_id}, // This is where we override the `i` variable\n    // You can use the argument to get the data with the onSuccess function\n    onSuccess: function (data) {\n      console.log("success query "+i);\n      console.log(data);\n      runQuery(i + 1);\n       \n    },\n    onFailure: function (error) {\n      console.log("error query "+i);\n      // Update the Errors text\n      errors += "Found error at line " + i.toString() + ":  " + error + "\\n\\n";\n    //  Errors.setValue(errors);\n      runQuery(i + 1);\n    },\n  });\n}\n\nrunQuery(0);',
                    },
                  ],
                },
              },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        sortByRawValue={{ ordered: [{ name_id: false }] }}
        style={{
          ordered: [
            { headerBackground: "rgba(247, 247, 247, 0)" },
            { border: "rgba(209, 209, 209, 0)" },
          ],
        }}
      />
      <Button
        id="button15"
        style={{ ordered: [] }}
        styleVariant="outline"
        text="Add Sub Category"
      >
        <Event
          event="click"
          method="run"
          params={{ ordered: [{ src: "addSubCategoryModal.open();" }] }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="edit_sub_categories_btn"
        style={{ ordered: [] }}
        styleVariant="outline"
        text="Delete Category (TBD)"
      />
      <Link id="link4" text="+ Add Sub Category">
        <Event
          event="click"
          method="run"
          params={{ ordered: [{ src: "addSubCategoryModal.open();" }] }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Link>
      <Button
        id="button11"
        style={{ ordered: [{ background: "rgba(0, 0, 0, 1)" }] }}
        styleVariant="solid"
        text="Save"
      />
    </TableLegacy>
  </View>
</Container>

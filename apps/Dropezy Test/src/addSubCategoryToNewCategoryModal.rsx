<Modal
  id="addSubCategoryToNewCategoryModal"
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  disabled="{{!addSubCategoryModal.opened}}"
  hidden="true"
  modalHeightType="auto"
  modalWidth="90%"
>
  <Text
    id="text10"
    _defaultValue=""
    value="##### Add Sub Category To New Category"
    verticalAlign="center"
  />
  <TextInput
    id="textInput10"
    _defaultValue=""
    disabled="true"
    hideLabel={false}
    label="Main Category"
    labelPosition="top"
    placeholder="Enter value"
    value="{{ cat_name_id_tv.value }}"
  />
  <FileDropzone
    id="fileDropzone3"
    accept={'["WEBP"]'}
    iconBefore="bold/programming-browser-search"
    label="Icon"
    labelPosition="top"
    placeholder="Select or drag and drop"
  />
  <Text
    id="text16"
    _defaultValue=""
    hidden="true"
    style={{ ordered: [{ color: "danger" }] }}
    value="Image is required"
    verticalAlign="center"
  />
  <TextInput
    id="sub_cat_name_id_tv"
    _defaultValue=""
    label="Sub Category Name (ID)"
    labelPosition="top"
    placeholder="Enter value"
  />
  <TextInput
    id="sub_cat_name_eng_tv"
    _defaultValue=""
    label="Sub Category Name (ENG)"
    labelPosition="top"
    placeholder="Enter value"
  />
  <Button
    id="button13"
    style={{
      ordered: [{ borderRadius: "0px" }, { background: "rgba(0, 0, 0, 1)" }],
    }}
    styleVariant="solid"
    text="Save"
  >
    <Event
      enabled={
        '{{sub_cat_name_eng_tv.value !== "" && sub_cat_name_id_tv.value !== ""}}'
      }
      event="click"
      method="run"
      params={{
        ordered: [
          {
            src: '\nif(fileDropzone3.value.length > 0 ){\n    text16.setHidden(true);\n\n  \n  var fileName = sub_cat_name_eng_tv.value;\n  var ext =  fileDropzone3.files[0].name.split(\'.\').pop();\n\n fileName = fileName.replace(/\\s/g, \'\')+"."+ext;\n  \n\n\n      \n        var sub_cat_name = sub_cat_name_eng_tv.value;\n        var sub_cat_name_id = sub_cat_name_id_tv.value;\n  \n  \n        var sub_category = {\n          "name_en": sub_cat_name,\n          "name_id": sub_cat_name_id,\n          "fileName": fileName,\n          "file": fileDropzone3.value[0],\n          "image_url": [fileName]\n        }\n        newCategory.child_categories.push(sub_category);\n\n        addSubCategoryToNewCategoryModal.close();\n\n        sub_cat_name_eng_tv.setValue("");\n        sub_cat_name_id_tv.setValue("");\n\n        console.log(newCategory);\n\n        new_subcategories_table.setData(newCategory.child_categories);\n        \n        \n  must_have_subcategory_tv.setHidden(true);\n       \n} else {\n  text16.setHidden(false);\n}\n\n\n\n\n\n\n\n\n\n',
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
    id="button14"
    style={{
      ordered: [
        { borderRadius: "0px" },
        { background: "rgba(255, 255, 255, 1)" },
      ],
    }}
    styleVariant="solid"
    text="Cancel"
  >
    <Event
      event="click"
      method="run"
      params={{
        ordered: [{ src: "addSubCategoryToNewCategoryModal.close();" }],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>

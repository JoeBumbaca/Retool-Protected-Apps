<Modal
  id="ediCategoryModal"
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  hidden="true"
  modalHeightType="auto"
  modalWidth="90%"
>
  <Text
    id="text12"
    _defaultValue=""
    value="##### Edit Category"
    verticalAlign="center"
  />
  <FileDropzone
    id="fileDropzone4"
    iconBefore="bold/programming-browser-search"
    label="Icon"
    labelPosition="top"
    placeholder="Select or drag and drop"
  />
  <TextInput
    id="edit_cat_name_eng_tv2"
    _defaultValue=""
    label="Category Name (ENG)"
    labelPosition="top"
    placeholder="Enter value"
    value="{{categoriesTable.selectedRow.data.name}}"
  />
  <TextInput
    id="edit_cat_name_id_tv2"
    _defaultValue=""
    label="Category Name (ID)"
    labelPosition="top"
    placeholder="Enter value"
    value="{{categoriesTable.selectedRow.data.category_name_id}}"
  />
  <Button
    id="button18"
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
      params={{ ordered: [{ src: "ediCategoryModal.close();" }] }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button17"
    style={{
      ordered: [{ borderRadius: "0px" }, { background: "rgba(0, 0, 0, 1)" }],
    }}
    styleVariant="solid"
    text="Save"
  >
    <Event
      enabled={
        '{{edit_cat_name_eng_tv2.value !== "" && edit_cat_name_id_tv2.value !== ""}}'
      }
      event="click"
      method="run"
      params={{
        ordered: [
          { src: "editCategoryQuery.trigger();\n\nediCategoryModal.close();" },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>

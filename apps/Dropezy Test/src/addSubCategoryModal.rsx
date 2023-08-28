<Modal
  id="addSubCategoryModal"
  buttonText="Open Modal"
  closeOnOutsideClick={true}
  hidden="true"
  modalWidth="90%"
>
  <Text
    id="text6"
    _defaultValue=""
    value="##### Add Sub Category"
    verticalAlign="center"
  />
  <TextInput
    id="textInput7"
    _defaultValue=""
    disabled="true"
    hideLabel={false}
    label="Main Category"
    labelPosition="top"
    placeholder="Enter value"
    value="{{categoriesTable.selectedRow.data.name_en}}"
  />
  <FileDropzone
    id="subCategoryFileDropzone"
    accept={'["WEBP"]'}
    iconBefore="bold/programming-browser-search"
    label="Icon"
    labelPosition="top"
    placeholder="Select or drag and drop"
  />
  <TextInput
    id="textInput6"
    _defaultValue=""
    label="Sub Category Name (ENG)"
    labelPosition="top"
    placeholder="Enter value"
  />
  <TextInput
    id="textInput5"
    _defaultValue=""
    label="Sub Category Name (ID)"
    labelPosition="top"
    placeholder="Enter value"
  />
  <Button
    id="button10"
    style={{
      ordered: [
        { borderRadius: "0px" },
        { background: "rgba(255, 255, 255, 1)" },
      ],
    }}
    styleVariant="solid"
    text="Cancel"
  />
  <Button
    id="button9"
    style={{
      ordered: [{ borderRadius: "0px" }, { background: "rgba(0, 0, 0, 1)" }],
    }}
    styleVariant="solid"
    text="Save"
  >
    <Event
      event="click"
      method="run"
      params={{
        ordered: [
          {
            src: '   \n\n  var fileName = textInput5.value;\n    var ext = subCategoryFileDropzone.files[0].name.split(\'.\').pop();\n\n    fileName = fileName.replace(/\\s/g, \'\')+"."+ext;\n  \nbutton9.setDisabled(true);\n  \n  \n  uploadSubCategoryImageQuery.trigger({\n   additionalScope: {fileName: fileName, file : subCategoryFileDropzone.value[0] },  \n    onSuccess: function (data) { \n      addSubCategoryToNewCategoryModal.close();\n \n      \n      addNewSubCategoryQuery.trigger({\n         additionalScope: { "image_url": fileName },  \n          onSuccess: function (data) {\n            console.log("success query ");\n            console.log(data);\n\n            addSubCategoryModal.close();\n            getCategoriesQuery.trigger();\n\n            textInput5.setValue("");\n            textInput6.setValue("");\n\n            console.log(newCategory);\n\n \n\n           },\n          onFailure: function (error) {\n            console.log("error query ");\n            // Update the Errors text\n               console.log(error);\n\n          },\n        });\n\n \n     },\n    onFailure: function (error) {\n      console.log("error query "+i);\n      // Update the Errors text\n         console.log(error);\n      \n      button9.setDisabled(false);\n      \n    },\n  });\n',
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>

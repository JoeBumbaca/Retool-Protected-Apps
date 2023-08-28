<Modal
  id="modal8"
  buttonText="Upload Appraisal"
  modalHeight="400px"
  modalWidth="30%"
>
  <Text
    id="text169"
    _defaultValue=""
    value="##### 🏡 ****{{ property_data.data.address }}****"
    verticalAlign="center"
  />
  <TextInput
    id="textInput9"
    _defaultValue=""
    label="Date"
    placeholder="Enter value"
  />
  <TextInput
    id="textInput10"
    _defaultValue=""
    label="Amount"
    placeholder="Enter value"
  />
  <Text id="text168" _defaultValue="" value="**URL**" verticalAlign="center" />
  <FileDropzone
    id="fileDropzone1"
    iconBefore="upload"
    label=""
    labelPosition="top"
    placeholder="Select or drag and drop"
  />
  <Button id="button15" styleVariant="solid" text="Save" />
</Modal>

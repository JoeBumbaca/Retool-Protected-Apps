<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    style={{ ordered: [{ canvas: "#ffffff" }] }}
    type="main"
  >
    <Include src="./src/container2.rsx" />
    <Modal
      id="modal_bundleEditor"
      buttonText="Open Modal"
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "script" },
            { method: "run" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    src: "\nconst included = stateBundleIndex.value.included?.map(i => i.name);\nconst available = stateBundleIndex.value.available?.map(i => i.name);\n\n\ncheckboxTree_includedProducts.setChecked([]);\ncheckboxTree_availableProducts.setChecked([]);\n\ncheckboxTree_includedProducts.setChecked(included);\ncheckboxTree_availableProducts.setChecked(available);\n\n",
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="true"
      modalHeight="700px"
      modalWidth="70%"
    >
      <Text
        id="text_bundleName"
        value="## {{getVariations.data[stateVariationIndex.value].bundles[stateBundleIndex.value].name}}"
        verticalAlign="center"
      />
    </Modal>
    <Module
      id="cleanMode1"
      name="clean mode"
      pageUuid="3aa2a8ff-b241-4cf2-b7e1-5c464a64df90"
    />
  </Frame>
</App>

<App>
  <Frame id="$main" sticky={false} type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      maintainSpaceWhenHidden={false}
    >
      <Image
        id="image1"
        dbBlobId="873a648a-056f-492e-a22d-e61f5639751f"
        fit="contain"
        heightType="fixed"
        horizontalAlign="center"
        src="https://placekitten.com/400/300"
        srcType="dbBlobId"
      />
      <TextInput id="txtSKU" label="" placeholder="Enter SKU">
        <Event
          event="submit"
          method="openUrl"
          params={{
            ordered: [
              {
                url: "https://retool.onefootball.com/apps/OTT/OTT%20-%20Match%20-%20Details%20-%20v2?sku={{txtSKU.value}}",
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </TextInput>
      <NavigationWidget
        id="navigation1"
        menuItems={[
          {
            ordered: [
              { title: "🏠 Home" },
              { hidden: "" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "5c8b5c48-e581-11ec-bbfd-0f31c3a1b600" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { menuItems: [] },
            ],
          },
          {
            ordered: [
              { title: "📈 Partners" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "action" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              {
                menuItems: [
                  {
                    ordered: [
                      { title: "List" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "0e1d88aa-e587-11ec-af28-2314a721710d",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                  {
                    ordered: [
                      { title: "Create" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "43f225fa-d770-11ec-9ada-d71ff3c95ea9",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                ],
              },
            ],
          },
          {
            ordered: [
              { title: "📺 Competition Rights" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "action" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              {
                menuItems: [
                  {
                    ordered: [
                      { title: "List" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "82781ed4-e598-11ec-8b93-cfae63111ffb",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                  {
                    ordered: [
                      { title: "Create" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "8475e124-d771-11ec-870a-033e05e18f5a",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                ],
              },
            ],
          },
          {
            ordered: [
              { title: "⚽️ Matches" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "action" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              {
                menuItems: [
                  {
                    ordered: [
                      { title: "List" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "91048228-7551-11ed-91f2-c3c3be4633b5",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                  {
                    ordered: [
                      { title: "Live Monitoring ⏺️" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "11f7a6f4-06a7-11ed-9c9d-f7403bb7fe9c",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                  {
                    ordered: [
                      { title: "Create" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "af0189f2-82b6-11ed-8fe3-076332d04bea",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                ],
              },
            ],
          },
          {
            ordered: [
              { title: "💰 Prices" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "action" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              {
                menuItems: [
                  {
                    ordered: [
                      { title: "List" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "85e94324-e59b-11ec-adb4-cbb10a353f3f",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                  {
                    ordered: [
                      { title: "Create" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "e0fa823c-e582-11ec-b111-af75d33a7799",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                ],
              },
            ],
          },
          {
            ordered: [
              { title: "⏱️ RTMP Slots" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "action" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              {
                menuItems: [
                  {
                    ordered: [
                      { title: "List" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "dbc7d9b0-e599-11ec-8b93-9b49bfbef599",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                  {
                    ordered: [
                      { title: "Create" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "bcc70b8e-e315-11ec-b366-6f6a9bf70817",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                ],
              },
            ],
          },
          {
            ordered: [
              { title: "💶 Coupons" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "action" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              {
                menuItems: [
                  {
                    ordered: [
                      { title: "Create" },
                      {
                        clickable: {
                          ordered: [
                            { valueToCopy: "" },
                            { internalUrlHashParams: "" },
                            { exportFileType: "csv" },
                            { buttonType: "internal-url" },
                            { exportTemplate: null },
                            { url: "" },
                            { newWindow: false },
                            { exportQuery: "" },
                            { action: "" },
                            { internalUrlQuery: "" },
                            {
                              internalUrlPath:
                                "345c66aa-3e4f-11ed-9db8-b7779b52e7fe",
                            },
                            { exportFileName: "" },
                            { disabled: "" },
                          ],
                        },
                      },
                      { hidden: "" },
                      { menuItems: [] },
                    ],
                  },
                ],
              },
            ],
          },
          {
            ordered: [
              { title: "📦 Bundles" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "01c4076e-e441-11ed-9dae-6b9f98958317" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              { menuItems: [] },
            ],
          },
        ]}
      />
      <Tags
        id="tags1"
        allowWrap={true}
        colors=""
        hashColors={true}
        horizontalAlign="center"
        style={{ ordered: [{ defaultBackground: "success" }] }}
        value="['VIDEO - LIVE']"
      />
    </ModuleContainerWidget>
  </Frame>
</App>

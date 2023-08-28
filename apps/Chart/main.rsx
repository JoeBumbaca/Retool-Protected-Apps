<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <PlotlyChart
      id="chart1"
      chartType="pie"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "id" },
                { datasource: "{{query2.data['id']}}" },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                { colors: { ordered: [{ 0: "#033663" }, { 1: "#247BC7" }] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "pageId" },
                { datasource: "{{query2.data['pageId']}}" },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                { colors: { ordered: [{ 0: "#033663" }, { 1: "#247BC7" }] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            2: {
              ordered: [
                { label: "userId" },
                { datasource: "{{query2.data['userId']}}" },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                { colors: { ordered: [{ 0: "#033663" }, { 1: "#247BC7" }] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            3: {
              ordered: [
                { label: "branchId" },
                { datasource: "{{query2.data['branchId']}}" },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                { colors: { ordered: [{ 0: "#033663" }, { 1: "#247BC7" }] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            4: {
              ordered: [
                { label: "checksum" },
                { datasource: "{{query2.data['checksum']}}" },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                { colors: { ordered: [{ 0: "#033663" }, { 1: "#247BC7" }] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{query2.data}}"
      skipDatasourceUpdate={true}
      xAxis="{{query2.data.createdAt}}"
      xAxisDropdown="createdAt"
    />
    <Switch id="switch1" _disclosedFields={{ array: [] }} />
  </Frame>
</App>

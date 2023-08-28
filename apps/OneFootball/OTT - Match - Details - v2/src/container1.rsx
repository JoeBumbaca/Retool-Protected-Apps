<Container
  id="container1"
  disabled=""
  hidden={null}
  hoistFetching={true}
  maintainSpaceWhenHidden={null}
  overflowType="hidden"
  selectedView="View 1"
  showBody={true}
  showInEditor={null}
>
  <View id="" viewKey="View 1" />
  <Text
    id="text7"
    value="#### ⚽️ Kickoff
**{{new Date(Date.parse(query_get_product.data.match.kickoff)).toLocaleString()}}**"
    verticalAlign="center"
  />
  <Image
    id="image2"
    aspectRatio=""
    horizontalAlign="center"
    src="https://images.onefootball.com/icons/teams/164/{{query_get_match.data[0].team_home.id}}.png"
  />
  <Image
    id="image3"
    aspectRatio=""
    horizontalAlign="center"
    src="https://images.onefootball.com/icons/teams/164/{{query_get_match.data[0].team_away.id}}.png"
  />
  <Text
    id="text45"
    value="**❗️Overriden Data (Manual fields):**"
    verticalAlign="center"
  />
  <Text id="text6" value="**Away Team**" verticalAlign="center" />
  <ListView
    id="listView2"
    instances="{{ query_get_product.data.manual_fields.length }}"
    rowKeys="{{ query_get_product.data.manual_fields }}"
    showBorder={false}
    showDropShadow={false}
  >
    <Text
      id="text71"
      value="* {{query_get_product.data.manual_fields[i] }}"
      verticalAlign="center"
    />
  </ListView>
  <Text
    id="text38"
    value="##### {{query_get_product.data.match.away_team.name}}"
    verticalAlign="center"
  />
  <Text
    id="text39"
    horizontalAlign="center"
    value="### *VS*"
    verticalAlign="center"
  />
  <Text
    id="text53"
    value="{{query_get_match.data[0].team_away.country.name}}"
    verticalAlign="center"
  />
  <Text
    id="text50"
    style={{ ordered: [{ color: "#262626" }] }}
    value="##### ⏱️ Live Scores Data

**Period :** {{query_get_match.data[0].period}}
**Minute:** {{query_get_match.data[0].minute}}
**Score:** {{query_get_match.data[0].score_home}} - {{query_get_match.data[0].score_away}}

"
    verticalAlign="center"
  />
  <Tags
    id="tags4"
    allowWrap={true}
    colors=""
    hashColors=""
    horizontalAlign="center"
    style={{ ordered: [{ defaultBackground: "primary" }] }}
    tooltipText="Stream Status"
    value="[{{query_get_product.data.stream_state.toUpperCase()}}]"
  />
  <Text id="text5" value="**Home Team**" verticalAlign="center" />
  <Text
    id="text37"
    value="##### {{query_get_product.data.match.home_team.name}}"
    verticalAlign="center"
  />
  <Text
    id="text52"
    value="{{query_get_match.data[0].team_home.country.name}}"
    verticalAlign="center"
  />
  <Include src="./container.rsx" />
  <Divider id="divider1" />
  <Button
    id="button2"
    style={{ ordered: [{ background: "canvas" }] }}
    styleVariant="solid"
    text="Edit Match"
  >
    <Event
      event="click"
      method="openApp"
      params={{
        ordered: [
          { uuid: "95e91fa8-d1c1-11ec-be27-df4254d73c74" },
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [{ key: "sku" }, { value: "{{urlparams.sku}}" }],
                    },
                  ],
                },
                { newTab: false },
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
  </Button>
</Container>

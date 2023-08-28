<Container id="container3" hoistFetching={true} showBody={true}>
  <Header>
    <Text id="containerTitle5" verticalAlign="center" />
  </Header>
  <View id="09a1c" viewKey="View 1">
    <TextInput
      id="customer"
      label="Customer Name:"
      labelWidth="28"
      placeholder="Enter value"
      readOnly="true"
      value="{{ contactsQuery.data.contacts[0].firstName}} {{ contactsQuery.data.contacts[0].lastName}}"
    />
    <TextInput
      id="order"
      label="Order:"
      labelWidth="16"
      readOnly="true"
      value="{{urlparams.hash.customerOrderNumber}}"
    />
    <TextInput
      id="product"
      label="Product:"
      labelWidth="15"
      readOnly="true"
      value="{{ getproductid.data }}"
    />
    <TextInput
      id="entityName"
      label="Entity Name:"
      labelWidth="21"
      readOnly="true"
      value="{{entityQuery.data.entity.entityName}}"
    />
    <Modal
      id="modal1"
      buttonText="Add Orco"
      events={[]}
      modalHeight="504px"
      modalWidth="90%"
      style={{ ordered: [{ "border-radius": "40px" }] }}
    >
      <Form
        id="form1"
        hoistFetching={true}
        overflowType="hidden"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="orcoform"
            value="#### Select Orco:"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Select
            id="category1"
            captionByIndex=""
            colorByIndex=""
            data="{{ getCategoriesLocal.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Category1"
            labels="{{ item.categoryName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.categoryID }}"
          >
            <Event
              event="change"
              method="run"
              params={{ ordered: [{ src: "" }] }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Select
            id="reason1"
            captionByIndex=""
            colorByIndex=""
            data="{{ getReasonsforCategory1Local.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Reason1
"
            labels="{{ item.reasonName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.reasonID }}"
          />
          <Select
            id="reason2"
            captionByIndex=""
            colorByIndex=""
            data="{{ getReasonsforCategory1Local.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Reason2
"
            labels="{{ item.reasonName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.reasonID }}"
          />
          <Select
            id="category2"
            captionByIndex=""
            colorByIndex=""
            data="{{ getCategoriesLocal.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Category2"
            labels="{{ item.categoryName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.categoryID }}"
          >
            <Event
              event="change"
              method="run"
              params={{ ordered: [{ src: "" }] }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Select
            id="reason4"
            captionByIndex=""
            colorByIndex=""
            data="{{ getReasonsforCategory2Local.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Reason3
"
            labels="{{ item.reasonName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.reasonID }}"
          />
          <Select
            id="reason5"
            captionByIndex=""
            colorByIndex=""
            data="{{ getReasonsforCategory2Local.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Reason4
"
            labels="{{ item.reasonName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.reasonID }}"
          />
          <Select
            id="category3"
            captionByIndex=""
            colorByIndex=""
            data="{{ getCategoriesLocal.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Category3"
            labels="{{ item.categoryName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.categoryID }}"
          >
            <Event
              event="change"
              method="run"
              params={{ ordered: [{ src: "" }] }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Select
            id="reason6"
            captionByIndex=""
            colorByIndex=""
            data="{{ getReasonsforCategory3Local.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Reason5
"
            labels="{{ item.reasonName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.reasonID }}"
          />
          <Select
            id="reason3"
            captionByIndex=""
            colorByIndex=""
            data="{{ getReasonsforCategory3Local.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Reason6
"
            labels="{{ item.reasonName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.reasonID }}"
          />
          <Select
            id="category4"
            captionByIndex=""
            colorByIndex=""
            data="{{ getCategoriesLocal.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Category4"
            labels="{{ item.categoryName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.categoryID }}"
          >
            <Event
              event="change"
              method="run"
              params={{ ordered: [{ src: "" }] }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Select
            id="reason7"
            captionByIndex=""
            colorByIndex=""
            data="{{ getReasonsforCategory4Local.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Reason7
"
            labels="{{ item.reasonName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.reasonID }}"
          />
          <Select
            id="reason8"
            captionByIndex=""
            colorByIndex=""
            data="{{ getReasonsforCategory4Local.data }}"
            disabledByIndex=""
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Reason8
"
            labels="{{ item.reasonName }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.reasonID }}"
          />
        </Body>
        <Footer>
          <Button id="button3" styleVariant="solid" text="Reset">
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="resetQuery"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button id="formButton1" submitTargetId="form1" text="Submit">
            <Event
              enabled="{{(  category1.value == null && category2.value == null && category4.value == null && category4.value == null ) || ( category1.value != null && reason1.value == null && reason2.value == null ) || ( category2.value != null && reason3.value == null && reason4.value == null ) || ( category3.value != null && reason6.value == null && reason6.value == null ) || ( category4.value != null && reason7.value == null && reason8.value == null )


}}"
              event="click"
              method="showNotification"
              params={{
                ordered: [
                  {
                    options: {
                      ordered: [
                        { notificationType: "error" },
                        {
                          title: "Please Enter Atleast one Category and Reason",
                        },
                        { duration: "2" },
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
            <Event
              enabled="{{ !( (  category1.value == null && category2.value == null && category4.value == null && category4.value == null ) || ( category1.value != null && reason1.value == null && reason2.value == null ) || ( category2.value != null && reason3.value == null && reason4.value == null ) || ( category3.value != null && reason6.value == null && reason6.value == null ) || ( category4.value != null && reason7.value == null && reason8.value == null )
)

}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="postOrcoTransaction"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ !( (  category1.value == null && category2.value == null && category4.value == null && category4.value == null ) || ( category1.value != null && reason1.value == null && reason2.value == null ) || ( category2.value != null && reason3.value == null && reason4.value == null ) || ( category3.value != null && reason6.value == null && reason6.value == null ) || ( category4.value != null && reason7.value == null && reason8.value == null )
)

}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="resetQuery"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="tableRefresh"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="modalClose"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Footer>
      </Form>
    </Modal>
  </View>
</Container>

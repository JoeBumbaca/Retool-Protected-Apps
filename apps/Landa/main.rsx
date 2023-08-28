<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" type="main">
    <TabbedContainerWidget
      id="tabs1"
      events={[
        {
          ordered: [
            { event: "change" },
            { type: "script" },
            { method: "run" },
            { pluginId: "" },
            { targetId: null },
            { params: { ordered: [{ src: "" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden=""
      tabNames={
        '["Home", "Accounting", "Files & photos", \n"Stats", "Utilities", "Maintenance", "Acquisition"]'
      }
    >
      <Button
        id="button5"
        iconBefore="download"
        styleVariant="solid"
        text="Bank statements"
      />
      <Cascader
        id="cascader1"
        events={[
          {
            ordered: [
              { event: "change" },
              { type: "widget" },
              { method: null },
              { pluginId: "" },
              { targetId: null },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
              { enabled: "" },
            ],
          },
        ]}
        label="Files"
        placeholder="Select file type"
        structure="{{menu_files.value}}"
        value=""
      />
      <Checkbox
        id="checkbox2"
        _defaultValue={false}
        label="Show only open maintenance"
        value="true"
      />
      <Select
        id="select2"
        _defaultValue={null}
        allowDeselect={true}
        allowSearch={true}
        data="['General ledger','Profit and loss', 'Balance sheet','Trial Balance','Depriciation schedule', 'loans schedule', 'Rent roll']"
        label=""
        labels="{{ _.startCase(item) }}"
        placeholder="Select a report"
        showSelectionIndicator={true}
        value="General Ledger"
        values="{{ item }}"
      />
      <TableLegacy
        id="table3"
        _columns={[
          "date",
          "content-type",
          "content-length",
          "connection",
          "apigw-requestid",
          "cf-cache-status",
          "expect-ct",
          "report-to",
          "nel",
          "server",
          "cf-ray",
          "id",
          "date_created",
          "start_date",
          "end_date",
          "pdf_url",
          "financial_identity_id",
          "version",
          "csv_url",
          "account_statements_request_id",
          "financial_connection_id",
          "primary_use",
          "Custom Column 1",
        ]}
        _columnVisibility={{
          ordered: [
            { "cf-ray": true },
            { pdf_url: true },
            { server: true },
            { "expect-ct": true },
            { financial_connection_id: false },
            { financial_identity_id: false },
            { "cf-cache-status": true },
            { "apigw-requestid": true },
            { primary_use: true },
            { start_date: true },
            { "content-type": true },
            { date: true },
            { end_date: true },
            { "report-to": true },
            { account_statements_request_id: false },
            { nel: true },
            { "Custom Column 1": false },
            { csv_url: false },
            { date_created: true },
            { version: false },
            { "content-length": true },
            { id: false },
            { connection: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1"]}
        columnAlignment={{
          ordered: [{ pdf_url: "left" }, { "Custom Column 1": "left" }],
        }}
        columnColors={{
          ordered: [
            { "cf-ray": "" },
            { pdf_url: "" },
            { server: "" },
            { "expect-ct": "" },
            { financial_connection_id: "" },
            { financial_identity_id: "" },
            { "cf-cache-status": "" },
            { "apigw-requestid": "" },
            { primary_use: "" },
            { start_date: "" },
            { "content-type": "" },
            { date: "" },
            { end_date: "" },
            { "report-to": "" },
            { account_statements_request_id: "" },
            { nel: "" },
            { csv_url: "" },
            { date_created: "" },
            { version: "" },
            { "content-length": "" },
            { id: "" },
            { connection: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { financial_connection_id: false },
            { "Custom Column 1": false },
          ],
        }}
        columnFormats={{
          ordered: [{ pdf_url: "button" }, { "Custom Column 1": "button" }],
        }}
        columnHeaderNames={{
          ordered: [
            { pdf_url: "PDF Url" },
            { end_date: "End Date" },
            { start_date: "Start Date" },
            { date_created: "Date Requested" },
            { "Custom Column 1": "CSV Url" },
          ],
        }}
        columns={[
          "date",
          "content-type",
          "content-length",
          "connection",
          "apigw-requestid",
          "cf-cache-status",
          "expect-ct",
          "report-to",
          "nel",
          "server",
          "cf-ray",
          "id",
          "date_created",
          "start_date",
          "end_date",
          "pdf_url",
          "financial_identity_id",
          "version",
          "csv_url",
          "account_statements_request_id",
          "financial_connection_id",
          "primary_use",
          "Custom Column 1",
        ]}
        columnTypeSpecificExtras={{
          ordered: [
            {
              pdf_url: {
                ordered: [{ buttonType: "action" }, { action: "signUrl" }],
              },
            },
          ],
        }}
        columnVisibility={{
          ordered: [
            { "cf-ray": true },
            { pdf_url: true },
            { server: true },
            { "expect-ct": true },
            { financial_connection_id: false },
            { financial_identity_id: false },
            { "cf-cache-status": true },
            { "apigw-requestid": true },
            { primary_use: true },
            { start_date: true },
            { "content-type": true },
            { date: true },
            { end_date: true },
            { "report-to": true },
            { account_statements_request_id: false },
            { nel: true },
            { "Custom Column 1": false },
            { csv_url: false },
            { date_created: true },
            { version: false },
            { "content-length": true },
            { id: false },
            { connection: true },
          ],
        }}
        columnWidths={[{ object: { id: "pdf_url", value: 241.5546875 } }]}
        customButtonName=""
        data="{{ statements.data }}"
        defaultSortByColumn="date_created"
        defaultSortDescending={true}
        pageSize={8}
        showColumnBorders={true}
        sortMappedValue={{ ordered: [{ end_date: false }] }}
      />
      <Include src="./src/modal8.rsx" />
      <Button
        id="button1"
        iconBefore="download"
        style={{
          ordered: [
            { background: "hsl(141, 20%, 46%)" },
            { border: "#262626" },
          ],
        }}
        styleVariant="solid"
        text="Download zip"
      />
      <Button id="button4" styleVariant="solid" text="Make a payment" />
      <Modal
        id="modal1"
        buttonText="New Expense"
        closeOnOutsideClick={true}
        events={[
          {
            ordered: [
              { event: "open" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "vendors_expense" },
              { targetId: null },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
              {
                eventParams: {
                  ordered: [{ onlyRespondToUserInteraction: true }],
                },
              },
            ],
          },
          {
            ordered: [
              { event: "open" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "property_expense_types_new_expense" },
              { targetId: null },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
              {
                eventParams: {
                  ordered: [{ onlyRespondToUserInteraction: true }],
                },
              },
            ],
          },
        ]}
        modalWidth="50%"
      >
        <Form
          id="form2"
          _hasSubmitEvents={false}
          hoistFetching={true}
          requireValidation={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="text162"
              _defaultValue=""
              horizontalAlign="center"
              value="#### **Vendors Payment - {{property_data.data.address }}**"
              verticalAlign="center"
            />
            <Text
              id="text163"
              _defaultValue=""
              value="**Cash Balance :  ${{cash_balance.data['0'].balance}}**"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Checkbox
              id="same_day"
              _defaultValue={false}
              label="Same Day"
              labelPosition="left"
              value="false"
            />
            <Date
              id="date5"
              dateFormat="MMM d, yyyy"
              datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
              iconBefore="calendar"
              label="Invoice Date"
              labelPosition="top"
              value="{{ new Date() }}"
            />
            <TextInput
              id="num_invoice"
              _defaultValue=""
              label="Invoice Number"
              labelPosition="top"
            />
            <Modal
              id="modal5"
              buttonText="Add Vendor"
              closeOnOutsideClick={true}
              events={[]}
            >
              <Form
                id="form5"
                _hasSubmitEvents={false}
                disableSubmit="{{!street.value || !city.value|| !zip_code.value|| !select7.value|| !textArea4.value|| !contact.value|| !phone.value || !email.value || !vendor_name.value || no_spaces.value || !account.value || !rounting.value }}"
                hoistFetching={true}
                requireValidation={true}
                resetAfterSubmit={true}
                showBody={true}
                showFooter={true}
                showHeader={true}
              >
                <Header>
                  <Text
                    id="text166"
                    _defaultValue=""
                    horizontalAlign="center"
                    value="#### New Vendor"
                    verticalAlign="center"
                  />
                </Header>
                <Body>
                  <Text
                    id="text167"
                    _defaultValue=""
                    hidden="{{!no_spaces.value}}"
                    style={{ ordered: [{ color: "rgba(241, 10, 10, 1)" }] }}
                    value="Please remove unnecessary spaces"
                    verticalAlign="center"
                  />
                  <TextInput
                    id="vendor_name"
                    _defaultValue=""
                    label=""
                    labelPosition="top"
                    placeholder="Vendor Name"
                  />
                  <TextInput
                    id="email"
                    _defaultValue=""
                    label=""
                    labelPosition="top"
                    placeholder="Email"
                  />
                  <TextInput
                    id="phone"
                    _defaultValue=""
                    label=""
                    labelPosition="top"
                    placeholder="Phone"
                  />
                  <TextInput
                    id="contact"
                    _defaultValue=""
                    label=""
                    labelPosition="top"
                    placeholder="Contact Name"
                  />
                  <Divider id="divider6" />
                  <TextInput
                    id="rounting"
                    _defaultValue=""
                    label=""
                    labelPosition="top"
                    placeholder="Routing Number"
                  />
                  <TextInput
                    id="account"
                    _defaultValue=""
                    label=""
                    labelPosition="top"
                    placeholder="Account Number"
                  />
                  <TextInput
                    id="street"
                    _defaultValue=""
                    label=""
                    placeholder="Street"
                  />
                  <TextInput
                    id="city"
                    _defaultValue=""
                    label=""
                    placeholder="City"
                  />
                  <TextInput
                    id="zip_code"
                    _defaultValue=""
                    label=""
                    placeholder="Zip Code"
                  />
                  <Divider id="divider7" />
                  <Select
                    id="select7"
                    _defaultValue={null}
                    allowDeselect={true}
                    data="{{property_expense_types_new_expense.data}}"
                    label=""
                    placeholder="Choose Payment Type"
                    showSelectionIndicator={true}
                    values="{{item.type}}"
                  />
                  <TextArea
                    id="textArea4"
                    _defaultValue=""
                    autoResize={true}
                    label=""
                    labelPosition="top"
                    minLines={2}
                    placeholder="Description"
                  />
                </Body>
                <Footer>
                  <Button
                    id="formButton5"
                    submit={true}
                    submitTargetId="form5"
                    text="Add"
                  />
                </Footer>
                <Event
                  event="submit"
                  method="trigger"
                  params={{ ordered: [] }}
                  pluginId="add_vendor"
                  type="datasource"
                  waitMs="0"
                  waitType="debounce"
                />
              </Form>
            </Modal>
            <Select
              id="choose_vendor"
              _defaultValue={null}
              allowDeselect={true}
              data="{{ vendors_expense.data }}"
              label=""
              placeholder="Choose Vendor"
              showSelectionIndicator={true}
              values="{{item.first_name}}"
            />
            <Select
              id="select6"
              _defaultValue={null}
              allowDeselect={true}
              data="{{ property_expense_types.data }}"
              label=""
              placeholder="Choose Payment Type"
              showSelectionIndicator={true}
              values="{{item.type}}"
            />
            <NumberInput
              id="textInput7"
              _defaultValue={null}
              currency="USD"
              decimalPlaces="2"
              format="currency"
              hideLabel={false}
              label="Payment Amount"
              min=""
              padDecimal={true}
              showSeparators={true}
              showStepper={true}
              value={0}
            />
            <TextArea
              id="textArea1"
              _defaultValue=""
              autoResize={true}
              label=""
              labelPosition="top"
              minLines={2}
            />
            <FileInput
              id="fileInput10"
              iconBefore="file"
              label=""
              placeholder="Invoice"
              textBefore="Browse"
            >
              <Event
                event="change"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="create_link"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </FileInput>
          </Body>
          <Footer>
            <Button
              id="formButton2"
              submit={true}
              submitTargetId="form2"
              text="Send Funds"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="create_link"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </Modal>
      <Modal
        id="modal3"
        buttonText="Upload Lease"
        modalHeight="800px"
        modalHeightType="auto"
        modalWidth="30%"
      >
        <Text
          id="text148"
          _defaultValue=""
          horizontalAlign="center"
          value="##### 🏡 ****Old lease - {{ property_data.data.address }}****"
          verticalAlign="center"
        />
        <Form
          id="form6"
          _hasSubmitEvents={false}
          hoistFetching={true}
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
        >
          <Select
            id="select8"
            _defaultValue={null}
            allowDeselect={true}
            data="[{{all_units.data.ticker[0]}}]"
            label="Unit"
            labels=""
            placeholder="Select an option"
            showSelectionIndicator={true}
          />
          <TextInput
            id="textInput2"
            _defaultValue=""
            label=""
            placeholder="Last Name"
            required={true}
          />
          <TextInput
            id="textInput1"
            _defaultValue=""
            label=""
            placeholder="First Name"
            required={true}
          />
          <TextInput
            id="textInput3"
            _defaultValue=""
            label=""
            placeholder="Email"
            required={true}
          />
          <TextInput
            id="textInput4"
            _defaultValue=""
            label=""
            placeholder="Phone Number"
            required={true}
          />
          <Date
            id="date3"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            iconBefore="calendar"
            label="From:"
            required={true}
            value="{{ new Date() }}"
          />
          <Date
            id="date4"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            iconBefore="calendar"
            label="To:"
            required={true}
            value="{{ new Date() }}"
          />
          <NumberInput
            id="numberInput2"
            _defaultValue={null}
            currency="USD"
            label="Security Deposit"
            labelWidth="50"
            placeholder="Enter value"
            required={true}
            showSeparators={true}
            showStepper={true}
            value={0}
          />
          <NumberInput
            id="numberInput1"
            _defaultValue={null}
            currency="USD"
            label="Rent $"
            placeholder="Enter value"
            required={true}
            showSeparators={true}
            showStepper={true}
            value={0}
          />
          <Checkbox
            id="checkbox3"
            _defaultValue={false}
            label="Deposit paid to Landa Holdings"
          />
          <FileInput
            id="fileInput1"
            iconBefore="file"
            label="Signed Document"
            required={true}
            textBefore="Browse"
          />
          <Button
            id="formButton6"
            submit={true}
            submitTargetId="form6"
            text="Upload"
          />
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="upload_lease_to_s3"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </Modal>
      <Modal
        id="modal6"
        buttonText="Fund Property"
        closeOnOutsideClick={true}
        hidden="{{!['inventory', 'qualified', 'pre_primary','signed', 'sourced'].includes(property_details.data['0'].status)}}"
        modalHeight="300"
      >
        <Form
          id="form3"
          _hasSubmitEvents={false}
          hoistFetching={true}
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="text164"
              _defaultValue=""
              horizontalAlign="center"
              value="#### **Fund Property**
{{urlparams.address}}"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <NumberInput
              id="textInput8"
              _defaultValue={null}
              currency="USD"
              decimalPlaces="2"
              format="currency"
              hideLabel={false}
              label="Amount"
              min=""
              padDecimal={true}
              showSeparators={true}
              showStepper={true}
              value={0}
            />
            <TextArea
              id="textArea2"
              _defaultValue=""
              autoResize={true}
              label=""
              labelPosition="top"
              minLines={2}
              placeholder="Comment"
            />
          </Body>
          <Footer>
            <Button
              id="formButton3"
              submit={true}
              submitTargetId="form3"
              text="Submit"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="fund_property"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </Modal>
      <Modal id="modal4" buttonText="Maintenance" modalWidth="60%">
        <Form
          id="form1"
          _hasSubmitEvents={false}
          hoistFetching={true}
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="formTitle1"
              _defaultValue=""
              value="#### Maintenance order"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Text
              id="text154"
              _defaultValue=""
              value=" **Describe the issue**"
              verticalAlign="center"
            />
            <Select
              id="select3"
              _defaultValue={null}
              allowDeselect={true}
              itemMode="static"
              label=""
              placeholder="Issue type"
              showSelectionIndicator={true}
            >
              <Option id="bbce2" value="Option 1" />
              <Option id="262bb" value="Option 2" />
              <Option id="e3c2b" value="Option 3" />
            </Select>
            <TextInput
              id="textInput5"
              _defaultValue=""
              label=""
              placeholder="Description"
            />
            <FileInput
              id="fileInput2"
              iconBefore="file"
              label=""
              selectionType="multiple"
              textBefore="Add photos"
            />
            <SegmentedControl
              id="segmentedControl1"
              _defaultValue={null}
              itemMode="static"
              label=""
              value=""
            >
              <Option id="21e21" value="Not urgent" />
              <Option id="4dfda" value="Medium" />
              <Option
                id="3bdc7"
                disabled={false}
                iconPosition="left"
                value="Urgent"
              />
            </SegmentedControl>
            <Text
              id="text153"
              _defaultValue=""
              value=" **Schedule visit**"
              verticalAlign="center"
            />
            <Multiselect
              id="multiselect2"
              _defaultValue={{ array: [] }}
              itemMode="static"
              label=""
              placeholder="Asignee"
              showSelectionIndicator={true}
              wrapTags={true}
            >
              <Option id="753ca" value="Vendor 1" />
              <Option id="40e4d" value="Vendor 2" />
              <Option id="cd2a1" value="Maintenance tech 3" />
            </Multiselect>
            <CalendarWidget id="calendar1" />
            <Text
              id="text155"
              _defaultValue=""
              value=" **Describe the work**"
              verticalAlign="center"
            />
            <Select
              id="select4"
              _defaultValue={null}
              allowDeselect={true}
              itemMode="static"
              label="Work type"
              placeholder="Select an option"
              showSelectionIndicator={true}
            >
              <Option id="bbce2" value="Option 1" />
              <Option id="262bb" value="Option 2" />
              <Option id="e3c2b" value="Option 3" />
            </Select>
            <FileInput
              id="fileInput3"
              iconBefore="file"
              label=""
              textBefore="Bid"
            />
            <NumberInput
              id="numberInput3"
              _defaultValue={null}
              currency="USD"
              format="currency"
              label="Cost (it will not pay now)"
              labelWidth="50"
              placeholder="Enter value"
              showSeparators={true}
              showStepper={true}
              value={0}
            />
          </Body>
          <Footer>
            <Button
              id="formButton1"
              submit={true}
              submitTargetId="form1"
              text="Submit"
            />
          </Footer>
        </Form>
      </Modal>
      <Date
        id="date2"
        dateFormat="MMM d, yyyy"
        datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
        hidden="{{select2.value != 'Trial Balance'}}"
        iconBefore="calendar"
        label="As of:"
        labelWidth="15"
        value="{{new Date(default_dates_transactions.data.today['0'])}}"
      />
      <Text
        id="text157"
        _defaultValue=""
        style={{ ordered: [{ color: "#262626" }] }}
        value="## 🏡 ****{{ property_data.data.address }}****"
        verticalAlign="center"
      />
      <Tags
        id="tags2"
        _defaultValue={{ array: [] }}
        allowWrap={true}
        colors="['#f8dbd8', '#f9e7d7', '#fbedc8', '#d7eae0', '#d2eaf6', '#e4dcf5', '#fadbec']"
        hashColors={true}
        value="['{{ property_data.data.property_type }}', '{{property_details.data['0'].status}}']"
      />
      <TableLegacy
        id="table2"
        _columns={[
          "id",
          "date_created",
          "title",
          "description",
          "categories",
          "is_resolved",
          "intercom_id",
          "reporter_id",
          "last_admin_avatar",
          "last_admin_id",
          "last_admin_name",
          "notifications_count",
          "unit_id",
          "id_as_hash",
          "unit_ticker",
        ]}
        _columnVisibility={{
          ordered: [
            { last_admin_name: false },
            { unit_ticker: true },
            { is_resolved: true },
            { last_admin_avatar: false },
            { last_admin_id: false },
            { intercom_id: true },
            { unit_id: true },
            { id_as_hash: false },
            { date_created: true },
            { title: true },
            { notifications_count: false },
            { reporter_id: false },
            { id: false },
            { categories: false },
            { description: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        columnAlignment={{
          ordered: [
            { unit_id: "center" },
            { intercom_id: "center" },
            { is_resolved: "center" },
            { description: "center" },
            { title: "center" },
            { date_created: "center" },
          ],
        }}
        columnColors={{
          ordered: [
            { last_admin_name: "" },
            { unit_ticker: "" },
            { is_resolved: "" },
            { last_admin_avatar: "" },
            { last_admin_id: "" },
            { intercom_id: "" },
            { unit_id: "" },
            { id_as_hash: "" },
            { date_created: "" },
            { title: "" },
            { notifications_count: "" },
            { reporter_id: "" },
            { id: "" },
            { categories: "" },
            { description: "" },
          ],
        }}
        columnFormats={{ ordered: [{ date_created: "datetime_tz" }] }}
        columnHeaderNames={{
          ordered: [
            { date_created: "Date Created" },
            { title: "Titles" },
            { is_resolved: "Resolved" },
            { description: "Description" },
            { unit_id: "Unit" },
          ],
        }}
        columns={[
          "id",
          "date_created",
          "title",
          "description",
          "categories",
          "is_resolved",
          "intercom_id",
          "reporter_id",
          "last_admin_avatar",
          "last_admin_id",
          "last_admin_name",
          "notifications_count",
          "unit_id",
          "id_as_hash",
          "unit_ticker",
        ]}
        columnVisibility={{
          ordered: [
            { last_admin_name: false },
            { unit_ticker: true },
            { is_resolved: true },
            { last_admin_avatar: false },
            { last_admin_id: false },
            { intercom_id: true },
            { unit_id: true },
            { id_as_hash: false },
            { date_created: true },
            { title: true },
            { notifications_count: false },
            { reporter_id: false },
            { id: false },
            { categories: false },
            { description: true },
          ],
        }}
        customButtonName=""
        data="{{ open_maintenance.data }}"
        pageSize={12}
        showColumnBorders={true}
      />
      <Button id="button3" styleVariant="solid" text="Fund property" />
      <Modal
        id="modal7"
        buttonText="Create Loan"
        closeOnOutsideClick={true}
        hidden="{{['inventory', 'qualified', 'pre_primary','signed', 'sourced'].includes(property_details.data['0'].status)}}"
        modalHeight="400"
      >
        <Form
          id="form4"
          _hasSubmitEvents={false}
          hoistFetching={true}
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="text165"
              _defaultValue=""
              horizontalAlign="center"
              value="#### **Create Loan**
"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <NumberInput
              id="numberInput6"
              _defaultValue={null}
              allowNull={true}
              currency="USD"
              format="currency"
              label="Amount"
              showSeparators={true}
              showStepper={true}
              value="null"
            />
            <NumberInput
              id="numberInput4"
              _defaultValue={null}
              allowNull={true}
              currency="USD"
              decimalPlaces=""
              disabled="true"
              format="percent"
              label="Interest"
              min="0"
              placeholder="Interest"
              showSeparators={true}
              showStepper={true}
              value="0.045"
            />
            <NumberInput
              id="numberInput5"
              _defaultValue={null}
              allowNull={true}
              currency="USD"
              disabled="true"
              label="Term in months"
              min="0"
              showSeparators={true}
              showStepper={true}
              value="60"
            />
            <TextArea
              id="textArea3"
              _defaultValue=""
              autoResize={true}
              label=""
              labelPosition="top"
              minLines={2}
              placeholder="Comment"
            />
          </Body>
          <Footer>
            <Button
              id="formButton4"
              submit={true}
              submitTargetId="form4"
              text="Submit"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="create_loan"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </Modal>
      <ContainerWidget id="container2">
        <Text
          id="text38"
          _defaultValue=""
          style={{ ordered: [{ color: "#262626" }] }}
          value="##### 🏡 ****{{ property_data.data.address }}****"
          verticalAlign="center"
        />
        <Tags
          id="unit_status_tag"
          _defaultValue={{ array: [] }}
          allowWrap={true}
          colors="['#f8dbd8', '#f9e7d7', '#fbedc8', '#d7eae0', '#d2eaf6', '#e4dcf5', '#fadbec']"
          hashColors={true}
          hidden="false"
          value="{{unit_statuses.data.unitQuery.units.map}}"
        />
        <Tags
          id="tags1"
          _defaultValue={{ array: [] }}
          allowWrap={true}
          colors="['#f8dbd8', '#f9e7d7', '#fbedc8', '#d7eae0', '#d2eaf6', '#e4dcf5', '#fadbec']"
          hashColors={true}
          value="['{{ property_data.data.property_type }}', '{{property_details.data['0'].status}}']"
        />
        <Note
          id="comment1"
          evaluatedKey="{{urlparams.property_ticker}}_property_page"
          events={[
            {
              ordered: [
                { event: "submit" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "property_data" },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
              ],
            },
            {
              ordered: [
                { event: "submit" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "SendSlack" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "500" },
              ],
            },
          ]}
          placeholder="Good Landan write many comments on properties!"
        />
        <Text
          id="text95"
          _defaultValue=""
          disableMarkdown={true}
          hidden=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Bed: {{unit_details.data.baths}}                     Bath: {{unit_details.data.beds}}"
          verticalAlign="center"
        />
        <Text
          id="text96"
          _defaultValue=""
          disableMarkdown={true}
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Year:{{property_details.data['0'].year_built}}                     SQF: {{property_details.data['0']['details.property_sqf']}}"
          verticalAlign="center"
        />
        <Text
          id="text47"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Recent appraisal:${{appraisal_value_property.data['0'].appraisal}}"
          verticalAlign="center"
        />
        <Text
          id="text120"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Purchase price: ${{property_details.data['0'].contract_price}}"
          verticalAlign="center"
        />
        <Text
          id="text121"
          _defaultValue=""
          style={{ ordered: [{ color: "#262626" }] }}
          value="Description: {{description_value.data['0'].description}}"
          verticalAlign="center"
        />
        <Text
          id="text80"
          _defaultValue=""
          style={{ ordered: [{ color: "#262626" }] }}
          value="**💰 Economics**"
          verticalAlign="center"
        />
        <Text
          id="text82"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Mortgage: ${{mortgage.data.debt_amount['0']}}"
          verticalAlign="center"
        />
        <Text
          id="text81"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Rent: ${{ property_leases.data.monthly_rent.reduce((partialRent, current) => partialRent + current, 0) }}"
          verticalAlign="center"
        />
        <Text
          id="text84"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Tax: ${{ property_details.data['0'].monthly_property_tax }}"
          verticalAlign="center"
        />
        <Text
          id="text83"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Insurance:${{property_details.data['0'].monthly_insurance}}"
          verticalAlign="center"
        />
        <Text
          id="text86"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="HOA:${{ property_details.data['0'].monthly_hoa}}"
          verticalAlign="center"
        />
        <Text
          id="text85"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Reserve: ${{ parseFloat((property_details.data['0'].monthly_cash_reserves/100)* property_leases.data.monthly_rent.reduce((partialRent, current) => partialRent + current, 0)).toFixed(2) }}"
          verticalAlign="center"
        />
        <Text
          id="text94"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Dividend: ${{last_dividend.data.last_dividend[0]}}"
          verticalAlign="center"
        />
        <Text
          id="text125"
          _defaultValue=""
          style={{ ordered: [{ color: "#262626" }] }}
          value="Cash balance : ${{cash_balance.data['0'].balance}}"
          verticalAlign="center"
        />
        <Text
          id="text41"
          _defaultValue=""
          style={{ ordered: [{ color: "#979797" }] }}
          value="ID: {{ urlparams.property_ticker}}"
          verticalAlign="center"
        />
      </ContainerWidget>
      <DateRange
        id="dateRange1"
        dateFormat="MMM d, yyyy"
        endPlaceholder="End date"
        hidden=""
        iconBefore="calendar"
        label="Date"
        startPlaceholder="Start date"
        textBetween="-"
        value={{ ordered: [{ start: "" }, { end: "" }] }}
      />
      <Multiselect
        id="multiselect1"
        _defaultValue={{ array: [] }}
        data="{{distinct_transaction_type.data.map((item) => item.account_type)}}"
        hidden="{{select2.value!='General ledger'}}"
        label=""
        placeholder="Select options"
        showSelectionIndicator={true}
        value="{{distinct_transaction_type.data.map((item) => item.account_type)}}"
        wrapTags={true}
      />
      <Avatar
        id="avatar1"
        fallback="{{ current_user.fullName }}"
        imageSize={32}
        label="{{ current_user.fullName }}"
        labelCaption="{{ current_user.email }}"
        src="{{ current_user.profilePhotoUrl }}"
      />
      <Text
        id="text160"
        _defaultValue=""
        value="Acquisition Lead:"
        verticalAlign="center"
      />
      <Text
        id="text161"
        _defaultValue=""
        value="Seller:"
        verticalAlign="center"
      />
      <ContainerWidget id="container4">
        <Text
          id="text51"
          _defaultValue=""
          hidden="{{all_units.data.ticker.length <= 1}}"
          style={{ ordered: [{ color: "#979797" }] }}
          value="**🏣 Residents and units**"
          verticalAlign="center"
        />
        <Select
          id="select1"
          _defaultValue={null}
          allowDeselect={true}
          allowSearch={true}
          data="{{all_units.data.ticker}}"
          hidden="{{all_units.data.ticker.length <= 1}}"
          label=""
          labels=""
          placeholder="Select Unit"
          showSelectionIndicator={true}
          value="{{default_unit.value}}"
          values="{{ item }}"
        />
        <Module
          id="residentPage1"
          end="{{end.value}}"
          heightType="fixed"
          hidden=""
          name="resident_page"
          pageUuid="41e2ec0c-a2ca-11ec-99c9-5765dfaf2fd7"
          showFetchingIndicator={false}
          start="{{start.value}}"
          unit="{{select1.value}}"
        />
      </ContainerWidget>
      <Text
        id="text149"
        _defaultValue=""
        value=" **Leases**"
        verticalAlign="center"
      />
      <Text
        id="text151"
        _defaultValue=""
        value=" **Bank Statements**"
        verticalAlign="center"
      />
      <TableLegacy
        id="table12"
        _columns={[
          "id",
          "primary_use",
          "date_created",
          "start_date",
          "end_date",
          "pdf_url",
          "financial_identity_id",
          "version",
          "csv_url",
          "account_statements_request_id",
          "financial_connection_id",
          "Custom Column 1",
        ]}
        _columnVisibility={{
          ordered: [
            { "cf-ray": true },
            { pdf_url: false },
            { server: true },
            { "expect-ct": true },
            { financial_connection_id: false },
            { financial_identity_id: false },
            { "cf-cache-status": true },
            { "apigw-requestid": true },
            { primary_use: true },
            { start_date: true },
            { "content-type": true },
            { date: true },
            { end_date: true },
            { "report-to": true },
            { account_statements_request_id: false },
            { nel: true },
            { "Custom Column 1": false },
            { csv_url: false },
            { date_created: true },
            { version: false },
            { "content-length": true },
            { id: false },
            { connection: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1"]}
        columnAlignment={{
          ordered: [
            { pdf_url: "left" },
            { "Custom Column 1": "left" },
            { primary_use: "left" },
          ],
        }}
        columnColors={{
          ordered: [
            { "cf-ray": "" },
            { pdf_url: "" },
            { server: "" },
            { "expect-ct": "" },
            { financial_connection_id: "" },
            { financial_identity_id: "" },
            { "cf-cache-status": "" },
            { "apigw-requestid": "" },
            { primary_use: "" },
            { start_date: "" },
            { "content-type": "" },
            { date: "" },
            { end_date: "" },
            { "report-to": "" },
            { account_statements_request_id: "" },
            { nel: "" },
            { csv_url: "" },
            { date_created: "" },
            { version: "" },
            { "content-length": "" },
            { id: "" },
            { connection: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { financial_connection_id: false },
            { "Custom Column 1": false },
            { primary_use: false },
          ],
        }}
        columnFormats={{
          ordered: [
            { pdf_url: "button" },
            { "Custom Column 1": "button" },
            { primary_use: "button" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { pdf_url: "PDF Url" },
            { end_date: "End Date" },
            { start_date: "Start Date" },
            { date_created: "Date Requested" },
            { "Custom Column 1": "CSV Url" },
            { primary_use: "Account" },
          ],
        }}
        columns={[
          "id",
          "primary_use",
          "date_created",
          "start_date",
          "end_date",
          "pdf_url",
          "financial_identity_id",
          "version",
          "csv_url",
          "account_statements_request_id",
          "financial_connection_id",
          "Custom Column 1",
        ]}
        columnTypeSpecificExtras={{
          ordered: [
            {
              pdf_url: {
                ordered: [{ buttonType: "action" }, { action: "signUrl" }],
              },
            },
            {
              primary_use: {
                ordered: [{ buttonType: "action" }, { action: "signUrl" }],
              },
            },
          ],
        }}
        columnVisibility={{
          ordered: [
            { "cf-ray": true },
            { pdf_url: false },
            { server: true },
            { "expect-ct": true },
            { financial_connection_id: false },
            { financial_identity_id: false },
            { "cf-cache-status": true },
            { "apigw-requestid": true },
            { primary_use: true },
            { start_date: true },
            { "content-type": true },
            { date: true },
            { end_date: true },
            { "report-to": true },
            { account_statements_request_id: false },
            { nel: true },
            { "Custom Column 1": false },
            { csv_url: false },
            { date_created: true },
            { version: false },
            { "content-length": true },
            { id: false },
            { connection: true },
          ],
        }}
        columnWidths={[{ object: { id: "pdf_url", value: 241.5546875 } }]}
        customButtonName=""
        data="{{ statements.data }}"
        defaultSortByColumn="date_created"
        defaultSortDescending={true}
        pageSize={20}
        rowHeight="compact"
        showColumnBorders={true}
        sortMappedValue={{ ordered: [{ end_date: false }] }}
        useCompactMode={true}
      />
      <TableLegacy
        id="table11"
        _columns={["document_uri", "unit_id", "date", "end_date"]}
        _columnVisibility={{
          ordered: [
            { unit_ticker: false },
            { document_uri: true },
            { start_date: true },
            { unit_num: true },
            { property_expense_id: true },
            { date: true },
            { end_date: true },
            { property_ticker: true },
            { unit_id: true },
            { date_created: true },
            { id: true },
            { category: true },
            { amount_amount: true },
          ],
        }}
        applyDynamicSettingsToColumnOrder={false}
        columnAlignment={{
          ordered: [
            { start_date: "center" },
            { document_uri: "center" },
            { end_date: "center" },
            { date: "center" },
            { unit_id: "center" },
            { "Custom Column 1": "left" },
          ],
        }}
        columnColors={{
          ordered: [
            { unit_ticker: "" },
            { document_uri: "" },
            { start_date: "" },
            { unit_num: "" },
            { property_expense_id: "" },
            { date: "" },
            { end_date: "" },
            { property_ticker: "" },
            { "Custom Column 1": "" },
            { unit_id: "" },
            { date_created: "" },
            { id: "" },
            { category: "" },
            { amount_amount: "" },
          ],
        }}
        columnEditable={{
          ordered: [{ document_uri: false }, { "Custom Column 1": false }],
        }}
        columnFormats={{
          ordered: [
            { start_date: "date" },
            { document_uri: "button" },
            { end_date: "datetime_tz" },
            { date: "datetime_tz" },
            { "Custom Column 1": "button" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { document_uri: "Leases" },
            { start_date: "Start_date" },
            { unit_num: "Unit Number" },
            { end_date: "End Date" },
            { "Custom Column 1": "Redacted " },
            { date: "Start Date" },
          ],
        }}
        columnMappers={{
          ordered: [
            { document_uri: "{{self ? 'Lease' : null}}" },
            { "Custom Column 1": "Redacted " },
          ],
        }}
        columns={["document_uri", "unit_id", "date", "end_date"]}
        columnTypeSpecificExtras={{
          ordered: [
            {
              document_uri: {
                ordered: [
                  { buttonType: "action" },
                  { action: "leases_sign_uri" },
                ],
              },
            },
          ],
        }}
        columnVisibility={{
          ordered: [
            { unit_ticker: false },
            { document_uri: true },
            { start_date: true },
            { unit_num: true },
            { property_expense_id: true },
            { date: true },
            { end_date: true },
            { property_ticker: true },
            { unit_id: true },
            { date_created: true },
            { id: true },
            { category: true },
            { amount_amount: true },
          ],
        }}
        columnWidths={[
          { object: { id: "unit_id", value: 197.8507080078125 } },
          { object: { id: "date", value: 11 } },
        ]}
        customButtonName=""
        data="{{ leases_documents_kyc.data}}"
        events={[
          {
            ordered: [
              { event: "rowSelectChange" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "all_leases_in_prop" },
              { targetId: null },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
              {
                eventParams: {
                  ordered: [{ onlyRespondToUserInteraction: true }],
                },
              },
            ],
          },
        ]}
        hidden=""
        pageSize={7}
        rowHeight="compact"
        useCompactMode={true}
      />
      <Include src="./src/container8.rsx" />
      <TableLegacy
        id="table8"
        _columns={["Account_type", "Debit", "Credit"]}
        _columnVisibility={{
          ordered: [{ Account_type: true }, { Debit: true }, { Credit: true }],
        }}
        applyDynamicSettingsToColumnOrder={false}
        columnAlignment={{
          ordered: [
            { Account_type: "center" },
            { Debit: "center" },
            { Credit: "center" },
          ],
        }}
        columnColors={{
          ordered: [{ Account_type: "" }, { Debit: "" }, { Credit: "" }],
        }}
        columnFormats={{
          ordered: [{ Debit: "usd_dollars" }, { Credit: "usd_dollars" }],
        }}
        columns={["Account_type", "Debit", "Credit"]}
        columnVisibility={{
          ordered: [{ Account_type: true }, { Debit: true }, { Credit: true }],
        }}
        customButtonName=""
        data="{{ classifier.data }}"
        hidden="{{select2.value != 'Trial Balance'}}"
        pageSize={6}
      />
      <Text
        id="text129"
        _defaultValue=""
        style={{ ordered: [{ color: "#262626" }] }}
        value="**Electricity**"
        verticalAlign="center"
      />
      <Switch id="switch7" _defaultValue={false} label="on/off" />
      <Link id="link1" text="Gas GA" />
      <Text
        id="text130"
        _defaultValue=""
        value="+12312312"
        verticalAlign="center"
      />
      <Text
        id="text131"
        _defaultValue=""
        value="email@landa.app"
        verticalAlign="center"
      />
      <EditableText
        id="editableText1"
        _defaultValue=""
        editIcon="edit"
        inputTooltip="`Enter` to save, `Esc` to cancel"
        label="Account"
        placeholder="add"
      />
      <Divider id="divider2" />
      <Text
        id="text132"
        _defaultValue=""
        style={{ ordered: [{ color: "#262626" }] }}
        value="**HOA**"
        verticalAlign="center"
      />
      <Switch id="switch8" _defaultValue={false} label="on/off" />
      <Link id="link2" text="Gas GA" />
      <Text
        id="text152"
        _defaultValue=""
        value=" **Redacted Leases**"
        verticalAlign="center"
      />
      <Text
        id="text133"
        _defaultValue=""
        value="+12312312"
        verticalAlign="center"
      />
      <TableLegacy
        id="table13"
        _columns={[
          "id",
          "public",
          "date_created",
          "document_label",
          "document_uri",
          "property_ticker",
          "financial_object_id",
          "financial_object_type",
        ]}
        _columnVisibility={{
          ordered: [
            { id: false },
            { date_created: true },
            { document_uri: false },
            { document_label: true },
            { property_ticker: false },
            { financial_object_id: false },
            { financial_object_type: false },
            { public: false },
          ],
        }}
        actionButtonColumnName="Download"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Download PDF" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "download_lease_pdf" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
          {
            ordered: [
              { actionButtonText: "Download DOCX" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "download_lease_docx" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnAlignment={{ ordered: [{ document_label: "left" }] }}
        columnColors={{
          ordered: [
            { id: "" },
            { date_created: "" },
            { document_uri: "" },
            { document_label: "" },
            { property_ticker: "" },
            { financial_object_id: "" },
            { financial_object_type: "" },
            { public: "" },
          ],
        }}
        columnEditable={{ ordered: [{ document_label: false }] }}
        columnFormats={{ ordered: [{ document_label: "button" }] }}
        columns={[
          "id",
          "public",
          "date_created",
          "document_label",
          "document_uri",
          "property_ticker",
          "financial_object_id",
          "financial_object_type",
        ]}
        columnTypeSpecificExtras={{
          ordered: [
            {
              document_label: {
                ordered: [
                  { buttonType: "action" },
                  { action: "download" },
                  { url: "{{currentRow.document_uri}}" },
                  { newWindow: true },
                ],
              },
            },
          ],
        }}
        columnVisibility={{
          ordered: [
            { id: false },
            { date_created: true },
            { document_uri: false },
            { document_label: true },
            { property_ticker: false },
            { financial_object_id: false },
            { financial_object_type: false },
            { public: false },
          ],
        }}
        columnWidths={[
          { object: { id: "document_label", value: 237.71868896484375 } },
          { object: { id: "document_uri", value: 856.7257385253906 } },
        ]}
        customButtonName=""
        data="{{ documents.data }}"
        pageSize={4}
      />
      <Text
        id="text134"
        _defaultValue=""
        value="email@landa.app"
        verticalAlign="center"
      />
      <EditableText
        id="editableText2"
        _defaultValue=""
        editIcon="edit"
        inputTooltip="`Enter` to save, `Esc` to cancel"
        label="Account"
        placeholder="add"
      />
      <Divider id="divider3" />
      <Text
        id="text135"
        _defaultValue=""
        style={{ ordered: [{ color: "#262626" }] }}
        value="**Trash**"
        verticalAlign="center"
      />
      <Switch id="switch9" _defaultValue={false} label="on/off" />
      <Link id="link3" text="Gas GA" />
      <TableLegacy
        id="table5"
        _columns={["2", "0", "1"]}
        _columnVisibility={{
          ordered: [
            { 0: true },
            { 1: true },
            { 2: true },
            { "Accum Depriciation": true },
            { Year: true },
            { Address: true },
            { ticker: true },
            { yearend: true },
          ],
        }}
        applyDynamicSettingsToColumnOrder={false}
        columnAlignment={{
          ordered: [
            { 0: "center" },
            { 1: "center" },
            { 2: "center" },
            { Year: "center" },
            { "Accum Depriciation": "center" },
          ],
        }}
        columnColors={{
          ordered: [
            { 0: "" },
            { 1: "" },
            { 2: "" },
            { "Accum Depriciation": "" },
            { Year: "" },
            { Address: "" },
            { ticker: "" },
            { yearend: "" },
          ],
        }}
        columnFormats={{
          ordered: [
            { 0: "usd_dollars" },
            { 1: "usd_dollars" },
            { 2: "date" },
            { "Accum Depriciation": "usd_dollars" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { 0: "Balance Sheet accum" },
            { 1: "Income Statement dep expense" },
            { 2: "Date" },
          ],
        }}
        columns={["2", "0", "1"]}
        columnVisibility={{
          ordered: [
            { 0: true },
            { 1: true },
            { 2: true },
            { "Accum Depriciation": true },
            { Year: true },
            { Address: true },
            { ticker: true },
            { yearend: true },
          ],
        }}
        columnWidths={[{ object: { id: "Year", value: 71.328125 } }]}
        customButtonName=""
        data="{{ Depreciation_schedule_full.value }}"
        hidden={'{{select2.value != "Depriciation schedule"}}'}
        pageSize={29}
      />
      <Text
        id="text137"
        _defaultValue=""
        value="email@landa.app"
        verticalAlign="center"
      />
      <Text
        id="text136"
        _defaultValue=""
        value="+12312312"
        verticalAlign="center"
      />
      <EditableText
        id="editableText3"
        _defaultValue=""
        editIcon="edit"
        inputTooltip="`Enter` to save, `Esc` to cancel"
        label="Account"
        placeholder="add"
      />
      <Divider id="divider4" />
      <Text
        id="text138"
        _defaultValue=""
        style={{ ordered: [{ color: "#262626" }] }}
        value="**Insurance**"
        verticalAlign="center"
      />
      <Switch id="switch10" _defaultValue={false} label="on/off" />
      <Button
        id="button6"
        iconBefore="download"
        styleVariant="solid"
        text="Form"
      />
      <Link id="link4" text="Gas GA" />
      <Text
        id="text139"
        _defaultValue=""
        value="+12312312"
        verticalAlign="center"
      />
      <Text
        id="text140"
        _defaultValue=""
        value="email@landa.app"
        verticalAlign="center"
      />
      <EditableText
        id="editableText4"
        _defaultValue=""
        editIcon="edit"
        inputTooltip="`Enter` to save, `Esc` to cancel"
        label="Account"
        placeholder="add"
      />
      <Divider id="divider5" />
      <Text
        id="text141"
        _defaultValue=""
        style={{ ordered: [{ color: "#262626" }] }}
        value="**Water**"
        verticalAlign="center"
      />
      <Switch id="switch11" _defaultValue={false} label="on/off" />
      <Link id="link5" text="Gas GA" />
      <Text
        id="text142"
        _defaultValue=""
        value="+12312312"
        verticalAlign="center"
      />
      <Text
        id="text143"
        _defaultValue=""
        value="email@landa.app"
        verticalAlign="center"
      />
      <EditableText
        id="editableText5"
        _defaultValue=""
        editIcon="edit"
        inputTooltip="`Enter` to save, `Esc` to cancel"
        label="Account"
        placeholder="add"
      />
      <ContainerWidget id="container7">
        <Text
          id="text87"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="**📜 Legal**"
          verticalAlign="center"
        />
        <Text
          id="text90"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Series: {{series.data.series_name}}"
          verticalAlign="center"
        />
        <Text
          id="text156"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="{{series.data.name}}, Filing: #{{series.data.number}}"
          verticalAlign="center"
        />
        <Text
          id="text91"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="EIN: Working Progress"
          verticalAlign="center"
        />
        <Text
          id="text88"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Routing: {{account_number_routing.data.routing_number}}"
          verticalAlign="center"
        />
        <Text
          id="text89"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Account: {{account_number_routing.data.account_number}}"
          verticalAlign="center"
        />
        <Text
          id="text147"
          _defaultValue=""
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="Old account number (Landa Properties):"
          verticalAlign="center"
        />
        <Timeline
          id="timeline1"
          items={
            '["Sourcing:","Contract:","Closing: {{ dates_trasformer.value.closing_date }}", "Filing: {{series.data.date_filed}} ", "Qualification:"]'
          }
          timestamps={
            '["2020-06-29T21:34:00+00:00", "2020-06-29T20:39:00+00:00", "2020-06-28T11:12:00+00:00"]'
          }
        />
      </ContainerWidget>
      <TableLegacy
        id="table6"
        _columns={[
          "Address",
          "date",
          "contract_price",
          "building_value",
          "monthly_depriciation",
          "yearend",
          "ticker",
        ]}
        _columnVisibility={{
          ordered: [
            { yearend: true },
            { monthly_depriciation: true },
            { building_value: true },
            { contract_price: true },
            { date: true },
            { ticker: true },
            { Address: true },
          ],
        }}
        applyDynamicSettingsToColumnOrder={false}
        columnAlignment={{
          ordered: [
            { contract_price: "center" },
            { building_value: "center" },
            { monthly_depriciation: "center" },
            { yearend: "center" },
            { ticker: "center" },
          ],
        }}
        columnColors={{
          ordered: [
            { yearend: "" },
            { monthly_depriciation: "" },
            { building_value: "" },
            { contract_price: "" },
            { date: "" },
            { ticker: "" },
            { Address: "" },
          ],
        }}
        columnFormats={{
          ordered: [
            { contract_price: "usd_dollars" },
            { building_value: "usd_dollars" },
            { monthly_depriciation: "usd_dollars" },
            { yearend: "usd_dollars" },
          ],
        }}
        columns={[
          "Address",
          "date",
          "contract_price",
          "building_value",
          "monthly_depriciation",
          "yearend",
          "ticker",
        ]}
        columnVisibility={{
          ordered: [
            { yearend: true },
            { monthly_depriciation: true },
            { building_value: true },
            { contract_price: true },
            { date: true },
            { ticker: true },
            { Address: true },
          ],
        }}
        customButtonName=""
        data="{{ yearend.data }}"
        hidden="{{select2.value != 'Depriciation schedule'}}"
        pageSize={1}
      />
      <Text
        id="text144"
        _defaultValue=""
        hidden="{{select2.value != 'Trial Balance'}}"
        value="**CASH - BANK - BALANCE**"
        verticalAlign="center"
      />
      <Text
        id="text145"
        _defaultValue=""
        hidden="{{select2.value != 'Trial Balance'}}"
        value="**SUM debit: {{SUM_debit_credit.data['0'].sum_debit}}$**"
        verticalAlign="center"
      />
      <TableLegacy
        id="table9"
        _columns={[
          "date_created",
          "address",
          "account_type",
          "amount",
          "property_expense_id",
          "comment",
        ]}
        _columnVisibility={{
          ordered: [
            { account_type: true },
            { amount: true },
            { address: true },
            { date_created: true },
            { property_expense_id: false },
            { comment: false },
          ],
        }}
        applyDynamicSettingsToColumnOrder={false}
        columnAlignment={{
          ordered: [
            { account_type: "center" },
            { amount: "center" },
            { date_created: "center" },
            { address: "center" },
          ],
        }}
        columnColors={{
          ordered: [
            { account_type: "" },
            { amount: "" },
            { address: "" },
            { date_created: "" },
            { property_expense_id: "" },
            { comment: "" },
          ],
        }}
        columnFormats={{
          ordered: [{ date_created: "date" }, { amount: "usd_dollars" }],
        }}
        columns={[
          "date_created",
          "address",
          "account_type",
          "amount",
          "property_expense_id",
          "comment",
        ]}
        columnVisibility={{
          ordered: [
            { account_type: true },
            { amount: true },
            { address: true },
            { date_created: true },
            { property_expense_id: false },
            { comment: false },
          ],
        }}
        customButtonName=""
        data="{{ general_ledger.data }}"
        hidden="{{select2.value!='General ledger'}}"
        pageSize={18}
      />
      <Text
        id="text146"
        _defaultValue=""
        hidden="{{select2.value!='Trial Balance'}}"
        value="**SUM debit: {{SUM_debit_credit.data['0'].sum_credit}}$**"
        verticalAlign="center"
      />
    </TabbedContainerWidget>
  </Frame>
</App>

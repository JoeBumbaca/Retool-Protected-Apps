<Modal
  id="deleteTenantGraphButton"
  buttonText="Delete Tenant Graph"
  closeOnOutsideClick={true}
  disabled="{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith('argovisor-tenant')).length != 0 ?? false}}"
  events={[
    {
      ordered: [
        { event: "open" },
        { type: "widget" },
        { method: "clearValue" },
        { pluginId: "tenantNameForApproval" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  modalHeight="280px"
  style={{ ordered: [{ "accent-background": "hsl(4, 57%, 52%)" }] }}
  tooltipText="Deletes the graph. Stop ETL first"
>
  <Text
    id="text11"
    _disclosedFields={{ array: [] }}
    value="#### Are you sure you want to delete tenant {{tenantIdPicker.value}} graph data?"
    verticalAlign="center"
  />
  <TextInput
    id="tenantNameForApproval"
    _disclosedFields={{ array: [] }}
    label="Type tenant's name to approve:"
    labelWidth="45"
    placeholder="{{CurrentTenant.data.tenants_by_pk.name}}"
  />
  <Button
    id="button5"
    _disclosedFields={{ array: [] }}
    disabled="{{CurrentTenant.data.tenants_by_pk.name != tenantNameForApproval.value}}"
    style={{ ordered: [{ background: "danger" }] }}
    styleVariant="solid"
    text="Delete Tenant Data"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="RunGraphDeleter"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>

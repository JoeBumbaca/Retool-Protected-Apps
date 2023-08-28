<Frame id="$header" sticky={true} type="header">
  <Image
    id="tenant_logo"
    _disclosedFields={{ array: [] }}
    altText="Tenant Logo"
    fit="contain"
    heightType="fixed"
    hidden=""
    horizontalAlign="center"
    src={
      '{{CurrentTenant.data.tenants_by_pk.logo_url ?? "https://cdn.icon-icons.com/icons2/2385/PNG/512/image_broken_icon_144282.png"}}'
    }
  />
  <Text
    id="tenantInfo2"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    heightType="fixed"
    hidden="{{ !CurrentTenant.data || CurrentTenant.data.error }}"
    horizontalAlign="center"
    value="## {{ stamp.value}}
"
    verticalAlign="center"
  />
  <Text
    id="tenantInfo"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    heightType="fixed"
    hidden="{{ !CurrentTenant.data || CurrentTenant.data.error }}"
    value={
      '### {{ CurrentTenant.data.error ? "No tenant selected" : CurrentTenant.data.tenants_by_pk.name}}\n0x{{decimalToHex(CurrentTenant.data.tenants_by_pk.tid, 8)}} ({{CurrentTenant.data.tenants_by_pk.tid}})'
    }
    verticalAlign="center"
  />
  <Text
    id="text3"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    hidden="{{ !CurrentTenant.data || CurrentTenant.data.error }}"
    horizontalAlign="right"
    style={{ ordered: [{ color: "rgba(27, 200, 53, 1)" }] }}
    value="### Good to go! ✨"
    verticalAlign="center"
  />
</Frame>

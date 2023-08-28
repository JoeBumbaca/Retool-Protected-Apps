let isTailorConfigPathInvalid = {{ TailorConfigPath.value === "" || TailorConfigPath.value === undefined }}
let isTailorSpecificConfigPathInvalid = {{ TailorSpecificConfigPath.value === "" || TailorSpecificConfigPath.value === undefined }}

return isTailorSpecificConfigPathInvalid || isTailorConfigPathInvalid || {{ isUnAuthorizedForUpsert.value }} || {{ isJobConfigDataInvalid.value }}
let isBabelfishDepsConfigInvalid = {{BabelfishDepsConfigPath.value === "" || BabelfishDepsConfigPath.value === undefined}}
let isBabelfishConfigPathInvalid = {{BabelfishConfigPath.value === "" || BabelfishConfigPath.value === undefined}}
    
return isBabelfishDepsConfigInvalid || isBabelfishConfigPathInvalid || {{isUnAuthorizedForUpsert.value}} || {{ isJobConfigDataInvalid.value }}
rounting = {{rounting.value}}
account = {{account.value}}
zip_code = {{zip_code.value}}
raise_error = false
if (account.indexOf(' ') > -1 || rounting.indexOf(' ') > -1 || zip_code.indexOf(' ') > -1){
  raise_error = true
}

return raise_error
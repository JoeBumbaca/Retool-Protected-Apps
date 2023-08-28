const allow_status = ['filed', 'inventory', 'qualified', 'signed'];
const status = {{property_details.data['0'].status}};
if (allow_status.includes(status)){
  return true;
}
else{
  return false;
}

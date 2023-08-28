SELECT external_object_id FROM {{formatDataAsArray(vendors_expense.data)}} vendors
WHERE vendors.first_name = {{choose_vendor.value}}
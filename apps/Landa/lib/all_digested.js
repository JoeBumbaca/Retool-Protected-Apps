let allRecords = {{all.data}};
let propertyExpenseTypes = {{property_expense_types.data}};
let propertyExpenseTypeById = Object.assign({}, ...Object.values(propertyExpenseTypes.id_as_hash).map((propertyExpenseTypeId, i) => (
  {
  	[propertyExpenseTypeId]: propertyExpenseTypes.type[i]
  }
)));
let orderedTypes = allRecords.property_expense_id.map((propertyExpenseId, i) => propertyExpenseTypeById[propertyExpenseId] || allRecords.category[i]);

 return {
   property_ticker: allRecords.property_ticker,
   amount: allRecords.amount_amount.map(parseFloat),
   date_created: allRecords.date_created,
   type: orderedTypes,
   id: allRecords.id,
 }
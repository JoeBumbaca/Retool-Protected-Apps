const mergedArray = {{balance_sheet_accum.value}}.map((item1, i) => {
  const item2 = {{income_statement_expense.value}}[i];
  const item3 = {{dates_end_year.value}}[i];
  return [{{balance_sheet_accum.value}}[i], {{income_statement_expense.value}}[i],{{dates_end_year.value}}[i].date];
});

return mergedArray
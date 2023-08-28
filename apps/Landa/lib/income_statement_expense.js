list_of_dep_expenses = {{Depreciation_year_schedule.value}}
diff_list = list_of_dep_expenses.map(element => {{yearend.data['0'].building_value}} - element);
diff_list_without_neg = diff_list.filter(function(x){ return x > -1 });
min_value = Math.min.apply(null, diff_list_without_neg)
first_year_expense = {{first_year_depreciation.value}}
second_part_list = Array(27).fill({{yearend.data['0'].yearend}})
const arrLength = second_part_list.unshift(first_year_expense);
const last_list = second_part_list.push(min_value)
return second_part_list
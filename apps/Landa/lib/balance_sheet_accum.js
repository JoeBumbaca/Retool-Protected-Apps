list_of_dep_expenses = {{Depreciation_year_schedule.value}}
diff_list = list_of_dep_expenses.map(element => {{yearend.data['0'].building_value}} - element);
diff_list_without_neg = diff_list.filter(function(x){ return x > -1 });
min_value = Math.min.apply(null, diff_list_without_neg)
index_min_value = diff_list_without_neg.indexOf(min_value)
var last_value = list_of_dep_expenses[index_min_value]
last_value = last_value + min_value 
concat_list = list_of_dep_expenses.slice(0,index_min_value+1).concat(last_value);
return concat_list
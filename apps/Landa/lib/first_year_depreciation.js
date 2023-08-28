const monthDiff = (d1, d2) => {
  let months;
  months = (d2.getFullYear() - d1.getFullYear()) * 12;
  months -= d1.getMonth();
  months += d2.getMonth();
  return months <= 0 ? 0 : months;
}

date = {{yearend.data['0'].date }}
date_new = new Date(date)
current_year = date_new.getFullYear()
end_of_year = new Date(current_year, 12, 1)
diff_month_dates = monthDiff(date_new,end_of_year)

monthly_depreciation_first_year = diff_month_dates* {{yearend.data['0'].monthly_depriciation}}

return monthly_depreciation_first_year
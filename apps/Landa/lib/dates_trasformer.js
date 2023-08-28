closing_date = new Date({{ property_details.data.closing_date }});
closing_date = closing_date.toISOString();
closing_date = closing_date.split('T')[0];
return {'closing_date': closing_date};

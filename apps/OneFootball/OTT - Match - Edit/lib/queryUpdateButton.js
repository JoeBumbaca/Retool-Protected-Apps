const validate = async() => {
  const forms = [
    selectPrice,
    selectCommentaryLanguage,
    textInputCountriesOfPurchase,
    textInputCountriesOfConsumption,
    select_encoding_before_mins,
    select_encoding_after_mins,
    select_live_before_mins,
    select_live_after_mins
  ];
  for (const form of forms) {
    await form.validate();
    if (form.validationMessage !== "") {
      return false;
    }
  }

  return true;
}

const run = async() => {
  const is_valid = await validate()
  if (!is_valid) {
    utils.showNotification({ title: 'Form validation failed!', description: 'Please check all fields above', notificationType: 'error'});
    return;
  }

  if (select_thumbnail.value.length > 0) {
    await query_save_thumbnail.trigger();
  }
  
  await updateProduct.trigger();
}

run();
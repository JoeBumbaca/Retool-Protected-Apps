const translationsData = {{getTranslationKeys.data.translations_object}}     
const defaultLanguage = {{localStorage.values.default_language}}

const getTranslations = (defaultLanguage) => {
  switch (defaultLanguage) {
    case "de":
      return translationsData.reduce((acc, cur) => ({ ...acc, [cur.key]: cur.de}), {})
      break;
    case "pl":
      return translationsData.reduce((acc, cur) => ({ ...acc, [cur.key]: cur.pl}), {})
      break;
    case "nl":
      return translationsData.reduce((acc, cur) => ({ ...acc, [cur.key]: cur.nl}), {})
      break;
    default:
      return translationsData.reduce((acc, cur) => ({ ...acc, [cur.key]: cur.en}), {})
  }
};
  
return getTranslations(defaultLanguage);
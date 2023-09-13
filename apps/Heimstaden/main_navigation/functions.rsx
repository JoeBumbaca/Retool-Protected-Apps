<GlobalFunctions>
  <Folder id="Translations">
    <Function
      id="getTranslations"
      funcBody={include("./lib/getTranslations.js", "string")}
    />
    <SqlQueryUnified
      id="getTranslationKeys"
      importedQueryInputs={{
        ordered: [{ app_uuid: "784085b6-bf34-11ed-89b2-9fa63ab1d3c8" }],
      }}
      isImported={true}
      playgroundQueryId={496}
      playgroundQueryName="get_translations_by_app_uuid"
      playgroundQueryUuid="b837412e-2028-45ab-a536-dfff868d484a"
      query={include("./lib/getTranslationKeys.sql", "string")}
      resourceName="34c51cb9-83bb-46aa-a00a-3c8bd0c9293d"
      retoolVersion="2.123.1"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
</GlobalFunctions>

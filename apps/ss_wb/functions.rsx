<GlobalFunctions>
  <Folder id="Temporary state">
    <State id="state_widget_heredoc" value="{}" />
    <State id="state_widget_needs_building" value="false" />
    <State id="state_widget_needs_saving" value="false" />
  </Folder>
  <S3Query
    id="load_Config"
    actionType="read"
    bucketName="ia-sites"
    enableTransformer={true}
    fileKey="{{'explore-now.com/treatments/default.config.json'}}"
    resourceName="3f8076d7-f465-4c3b-92de-9d6b7551c3a0"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.Body;"
    uploadData="{
adAnnotations:{{checkboxGroup_adAnnotations.value}}, 
adExtensions:{{checkboxGroup_adExtensions.value}},
miscellaneous:{{checkboxGroup_miscellaneous.value}}
}"
    uploadFileName="{{select_domain.value}}/{{select_treatments_2.value + '/config.json'}}"
    uploadFileType="json"
  />
</GlobalFunctions>

<GlobalFunctions>
  <Folder id="FeatureFlags">
    <GraphQLQuery
      id="DeleteFeatureFlag"
      body={include("./lib/DeleteFeatureFlag.gql", "string")}
      graphQLVariables={
        '[{"key":"tid","value":"{{tenantIdPicker.value}}"},{"key":"user_id","value":"{{ featureFlagsTable?.selectedRow.data?.user_id  }}"},{"key":"key","value":"{{ featureFlagsTable?.selectedRow.data?.key  }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetFeatureFlags"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetFeatureFlags"
      body={include("./lib/GetFeatureFlags.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || !["Feature Flags"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
    <JavascriptQuery
      id="GetPotentialFeatureFlags"
      query={include("./lib/GetPotentialFeatureFlags.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      runWhenPageLoads={true}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <GraphQLQuery
      id="UpsertFeatureFlag"
      body={include("./lib/UpsertFeatureFlag.gql", "string")}
      graphQLVariables={
        '[{"key":"user_id","value":"{{ (featureFlagsTable.recordUpdates.length > 0 ? featureFlagsTable.recordUpdates[0] : featureFlagsTable.newRow).user_id || \\"00000000-0000-0000-0000-000000000000\\"}}"},{"key":"key","value":"{{ (featureFlagsTable.recordUpdates.length > 0 ? featureFlagsTable.recordUpdates[0] : featureFlagsTable.newRow).key }}"},{"key":"value","value":"{{ (featureFlagsTable.recordUpdates.length > 0 ? featureFlagsTable.recordUpdates[0] : featureFlagsTable.newRow).value }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetFeatureFlags"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="Sherlock">
    <Function
      id="AllInsightTagsWithUser"
      funcBody={include("./lib/AllInsightTagsWithUser.js", "string")}
    />
    <GraphQLQuery
      id="DeleteSelectedDetection"
      body={include("./lib/DeleteSelectedDetection.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{ detectionsTable.selectedRow.data.id}}"},{"key":"tid","value":"{{tenantIdPicker.value}}"},{"key":"","value":""}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer={
        '// type your code here\n// example: return formatDataAsArray(data).filter(row => row.quantity > 20)\nreturn data.detections.map((o) => {\n  o["job.started_at"] = o.job.started_at;\n  o["job.status"] = o.job.status;\n  o["job.progress"] = o.job.progress;\n  o["job.last_successful_started_at"] = o.job.last_successful_started_at;\n  o["job.last_successful_finished_at"] = o.job.last_successful_finished_at;\n  delete o.job;\n  return o;\n})'
      }
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllDetections"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <JavascriptQuery
      id="GetAllDetectionTemplates"
      query={include("./lib/GetAllDetectionTemplates.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      runWhenPageLoads={true}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <GraphQLQuery
      id="GetAllDetections"
      body={include("./lib/GetAllDetections.gql", "string")}
      enableTransformer={true}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || !["Sherlock"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer={
        '// type your code here\n// example: return formatDataAsArray(data).filter(row => row.quantity > 20)\nreturn data.detections.map((o) => {\n  o["job.started_at"] = o?.job?.started_at;\n  o["job.status"] = o?.job?.status;\n  o["job.progress"] = o?.job?.progress;\n  o["job.last_successful_started_at"] = o?.job?.last_successful_started_at;\n  o["job.last_successful_finished_at"] = o?.job?.last_successful_finished_at;\n  o["config"] = JSON.stringify(o?.config ?? {});\n  delete o.job;\n  return o;\n})'
      }
    />
    <GraphQLQuery
      id="GetAllInsights"
      body={include("./lib/GetAllInsights.gql", "string")}
      enableTransformer={true}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || !["Sherlock"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer="return data.insight_types.map((insight) => {
  return insight;
})"
    />
    <GraphQLQuery
      id="ResetDetectionState"
      body={include("./lib/ResetDetectionState.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{ detectionsTable.selectedRow.data.id }}"},{"key":"state","value":"{}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer={
        '// type your code here\n// example: return formatDataAsArray(data).filter(row => row.quantity > 20)\nreturn data.detections.map((o) => {\n  o["job.started_at"] = o.job.started_at;\n  o["job.status"] = o.job.status;\n  o["job.progress"] = o.job.progress;\n  o["job.last_successful_started_at"] = o.job.last_successful_started_at;\n  o["job.last_successful_finished_at"] = o.job.last_successful_finished_at;\n  delete o.job;\n  return o;\n})'
      }
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllDetections"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="RunSherlock"
      body={include("./lib/RunSherlock.gql", "string")}
      confirmationMessage="Are you sure you want to run sherlock workflow?"
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ArgoList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobs"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <OpenAPIQuery
      id="SendTrialExpiresSoon"
      confirmationMessage={
        '## Are you sure you want to send a "Trial expires soon" email to {{usersEmailTable.selectedRow.data.email}} ?'
      }
      method="post"
      operationId="POST_mail_send"
      parameterDynamicStates={'{"body":true}'}
      parameters={
        '{"body":"{\\n  \\"personalizations\\": [\\n    {\\n      \\"to\\": [  {    \\"email\\": {{usersEmailTable.selectedRow.data.email }},    \\"name\\": {{usersEmailTable.selectedRow.data.first_name + \\" \\" + usersEmailTable.selectedRow.data.last_name }}  }],\\n      \\"bcc\\":[  {    \\"email\\": \\"outgoing@sightfull.com\\"} ],\\n      \\"dynamic_template_data\\": {  \\"first_name\\": {{usersEmailTable.selectedRow.data.first_name}} }\\n    }\\n  ],\\n  \\"template_id\\": \\"d-b310f193a9df4bda8d5937fc6df38abb\\",\\n  \\"subject\\": \\"Your Sightfull trail expires soon\\",\\n  \\"from\\": {\\n    \\"email\\": \\"no-reply@notifications.sightfull.com\\",\\n    \\"name\\": \\"Sightfull\\"\\n  },\\n  \\"asm\\": {\\n    \\"group_id\\": 17772,\\n    \\"groups_to_display\\": [17772]\\n  },\\n\\"reply_to\\": {\\n    \\"email\\": \\"support@sightfull.com\\",\\n    \\"name\\": \\"Sightfull Support\\"\\n  }\\n}"}'
      }
      path="/mail/send"
      requestBody={null}
      requireConfirmation={true}
      resourceName="8e074666-797c-4ea4-9816-f6832cd5804c"
      server="https://api.sendgrid.com/v3"
      serverVariables={null}
      specBasePath="https://api.sendgrid.com/v3"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <OpenAPIQuery
      id="SendWelcomeEmail"
      confirmationMessage="## Are you sure you want to send a welcome email to {{usersEmailTable?.selectedRow?.data?.email}} ?"
      method="post"
      operationId="POST_mail-send"
      parameterDynamicStates={'{"body":false}'}
      parameters={
        '{"body":{"personalizations":[{"to":"[\\n  {\\n    \\"email\\": {{usersEmailTable.selectedRow.data.email}},\\n    \\"name\\": {{usersEmailTable.selectedRow.data.first_name + \\" \\" + usersEmailTable.selectedRow.data.last_name}}\\n  }\\n]","dynamic_template_data":"{\\n  \\"first_name\\": {{usersEmailTable.selectedRow.data.first_name}},\\n  \\"last_name\\": {{usersEmailTable.selectedRow.data.last_name}},\\n  \\"company\\": {{tenant_name_textbox.value}}\\n}"}],"template_id":"d-aecf7a748fe74d89aaeef020592e6606","subject":"\\"first_name last_name, finish setting up your new Sightfull account\\"","from":{"email":"no-reply@notifications.sightfull.com","name":"Sightfull"}}}'
      }
      path="/mail/send"
      requestBody={null}
      requireConfirmation={true}
      resourceName="8e074666-797c-4ea4-9816-f6832cd5804c"
      server="https://api.sendgrid.com/v3"
      serverVariables={null}
      specBasePath="https://api.sendgrid.com/v3"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <GraphQLQuery
      id="SubscribeToAllTags"
      body={include("./lib/SubscribeToAllTags.gql", "string")}
      graphQLVariables={
        '[{"key":"objects","value":"{{AllInsightTagsWithUser.value}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer={
        'return data.users.map((o) => {\n  o.is_subscribed_all = o.tags.includes("all");\n  return o;\n                       })'
      }
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UsersWithTags"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="ToggleAutoApprove"
      body={include("./lib/ToggleAutoApprove.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"id","value":"{{InsightTypesTable.selectedRow.data.id}}"},{"key":"tid","value":"{{tenantIdPicker.value}}"},{"key":"auto_approve","value":"{{InsightTypesTable.selectedRow.data.auto_approve == InsightTypesTable.selectedRow.data.auto_approve_override ? null : !InsightTypesTable.selectedRow.data.auto_approve}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || !["Sherlock"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllInsights"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="ToggleAutoSubscribe"
      body={include("./lib/ToggleAutoSubscribe.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{usersSubscriptionsTable.selectedRow.data.id}}"},{"key":"auto_subscribe","value":"{{!usersSubscriptionsTable.selectedRow.data.subscribe_to_new_insights}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer={
        'return data.users.map((o) => {\n  o.is_subscribed_all = o.tags.includes("all");\n  return o;\n                       })'
      }
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UsersWithTags"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="ToggleHiddenOverride"
      body={include("./lib/ToggleHiddenOverride.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"id","value":"{{InsightTypesTable.selectedRow.data.id}}"},{"key":"tid","value":"{{tenantIdPicker.value}}"},{"key":"visible_override","value":"{{InsightTypesTable.selectedRow.data.visible == InsightTypesTable.selectedRow.data.visible_override ? null : !InsightTypesTable.selectedRow.data.visible}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || !["Sherlock"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllInsights"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertDetectionSaveChanges"
      body={include("./lib/UpsertDetectionSaveChanges.gql", "string")}
      graphQLVariables={
        '[{"key":"config","value":"{{JSON.parse((detectionsTable.recordUpdates.length > 0 ? detectionsTable.recordUpdates[0] : detectionsTable.state).config) || undefined}}"},{"key":"display_name","value":"{{ (detectionsTable.recordUpdates.length > 0 ? detectionsTable.recordUpdates[0] : detectionsTable.newRow).display_name}}"},{"key":"execution_options","value":"{{ (detectionsTable.recordUpdates.length > 0 ? detectionsTable.recordUpdates[0] : detectionsTable.newRow).execution_options}}"},{"key":"id","value":"{{ (detectionsTable.recordUpdates.length > 0 ? detectionsTable.recordUpdates[0] : detectionsTable.newRow).id}}"},{"key":"require_oversight","value":"{{ (detectionsTable.recordUpdates.length > 0 ? detectionsTable.recordUpdates[0] : detectionsTable.newRow).require_oversight}}"},{"key":"schedule","value":"{{ (detectionsTable.recordUpdates.length > 0 ? detectionsTable.recordUpdates[0] : detectionsTable.newRow).schedule}}"},{"key":"state","value":"{{ (detectionsTable.recordUpdates.length > 0 ? detectionsTable.recordUpdates[0] : detectionsTable.state).display_name || {}}}"},{"key":"timeout_seconds","value":"{{ (detectionsTable.recordUpdates.length > 0 ? detectionsTable.recordUpdates[0] : detectionsTable.state).timeout_seconds || undefined}}"},{"key":"type","value":"{{ (detectionsTable.recordUpdates.length > 0 ? detectionsTable.recordUpdates[0] : detectionsTable.newRow).type}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer={
        '// type your code here\n// example: return formatDataAsArray(data).filter(row => row.quantity > 20)\nreturn data.detections.map((o) => {\n  o["job.started_at"] = o.job.started_at;\n  o["job.status"] = o.job.status;\n  o["job.progress"] = o.job.progress;\n  o["job.last_successful_started_at"] = o.job.last_successful_started_at;\n  o["job.last_successful_finished_at"] = o.job.last_successful_finished_at;\n  delete o.job;\n  return o;\n})'
      }
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllDetections"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertDetectionsPreset"
      body={include("./lib/UpsertDetectionsPreset.gql", "string")}
      graphQLVariables={
        '[{"key":"objects","value":"{{detectionPresetTable.selectedRow.data}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer={
        '// type your code here\n// example: return formatDataAsArray(data).filter(row => row.quantity > 20)\nreturn data.detections.map((o) => {\n  o["job.started_at"] = o.job.started_at;\n  o["job.status"] = o.job.status;\n  o["job.progress"] = o.job.progress;\n  o["job.last_successful_started_at"] = o.job.last_successful_started_at;\n  o["job.last_successful_finished_at"] = o.job.last_successful_finished_at;\n  delete o.job;\n  return o;\n})'
      }
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllDetections"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertSubscriptionSaveChanges"
      body={include("./lib/UpsertSubscriptionSaveChanges.gql", "string")}
      graphQLVariables={
        '[{"key":"objects","value":"{{usersSubscriptionsTable.recordUpdates.map(o=>JSON.parse(o.subscribed_to_tags).map(b=>Object.assign({},{user_id:o.id, tag_id:b}))).flat() }}"},{"key":"users_ids","value":"{{usersSubscriptionsTable.recordUpdates.map(o=>o.id) }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UsersWithTags"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UsersWithTags"
      body={include("./lib/UsersWithTags.gql", "string")}
      enableTransformer={true}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || !["Sherlock"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer="return data.users.map((user) => {
  user.name = `${user.first_name} ${user.last_name}`;
  user.subscribed_to_tags = user.tags.map((tags) => {return tags.tag_id});
  return user;
})"
    />
  </Folder>
  <Folder id="Utils">
    <JavascriptQuery
      id="AccessTokenStorageQuery"
      queryDisabled="{{ urlparams.hash.access_token === undefined }}"
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      runWhenPageLoads={true}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        enabled=""
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{{ urlparams.hash.access_token }}" }] }}
        pluginId="access_token"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="confetti"
        params={{ ordered: [] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Congrats on getting an amazing token!" },
                  { description: "You must be happy." },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="IsDataEditorRole"
      query={include("./lib/IsDataEditorRole.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="IsDataViewerRole"
      query={include("./lib/IsDataViewerRole.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="IsProduction"
      query={include("./lib/IsProduction.js", "string")}
      queryDisabled="{{ urlparams.hash.access_token === undefined }}"
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      runWhenPageLoads={true}
      runWhenPageLoadsDelay="5000"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="IsStaffRole"
      query={include("./lib/IsStaffRole.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      runWhenPageLoads={true}
      runWhenPageLoadsDelay="0.3"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="TenantNotSelected"
      query={include("./lib/TenantNotSelected.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="IsDataEditorRole"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="IsDataViewerRole"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="IsStaffRole"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <Function
      id="TinyTenant"
      funcBody={include("./lib/TinyTenant.js", "string")}
    />
  </Folder>
  <Folder id="Jobs">
    <GraphQLQuery
      id="ArgoList"
      body={include("./lib/ArgoList.gql", "string")}
      cacheKeyTtl="10"
      enableCaching={true}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || tabs.labels[tabs.currentViewIndex] != "Jobs" || JobsTabs.labels[JobsTabs.currentViewIndex] != "Argo"}}'
      }
      queryRefreshTime="40000"
      queryThrottleTime="3000"
      queryTimeout="15000"
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
    <GraphQLQuery
      id="ArgoRun"
      body={include("./lib/ArgoRun.gql", "string")}
      graphQLVariables={
        '[{"key":"specific_step","value":"{{stepModeSwitch.value == \\"Step\\" ? stepSelector.value : specificObjectsTo.value}}"},{"key":"run_from","value":"{{stepModeSwitch.value == \\"From\\" ? stepSelector.value : undefined}}"},{"key":"specific_objects","value":"{{specificObjectsTo.value ? specificObjectNames.value.split(\\"\\\\n\\").filter(o=>o!=\\"\\") : []}}"},{"key":"override_tags","value":"{{[ RunDb2graphOverrideImageTag,RunBabelfishOverrideImageTag,RunTailorOverrideImageTag,RunValidatorOverrideImageTag].filter(x=>(x.value!=\\"\\")).map(o=>`${o.label}=${o.value}`)}}"},{"key":"schema_revision","value":"{{OverrideSchemaRevision.value ? OverrideSchemaRevision.value : undefined}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{ runTinyTenantCheckbox.value ? TinyTenant.value : tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      successMessage="{{ArgoRun.data.argo_run.msg}}"
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ArgoList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { title: "{{ self.data.argoRun.msg }}" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="newWorkflowModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clear"
        params={{ ordered: [] }}
        pluginId="JobRunAdvancedForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="TinyTenantArgoList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="ArgoTerminate"
      body={include("./lib/ArgoTerminate.gql", "string")}
      graphQLVariables={
        '[{"key":"workflow","value":"{{argoTable?.selectedRow?.data?.metadata?.name}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ArgoList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { title: "{{ self.data.argoTerminate.msg }}" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <Function
      id="BuildArgovisorConfig"
      funcBody={include("./lib/BuildArgovisorConfig.js", "string")}
    />
    <Function
      id="CacherMetricURLTransformerToConfig"
      funcBody={include(
        "./lib/CacherMetricURLTransformerToConfig.js",
        "string"
      )}
    />
    <GraphQLQuery
      id="DeleteCronByTabName"
      body={include("./lib/DeleteCronByTabName.gql", "string")}
      confirmationMessage="Are you sure you want to *delete* the job?"
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"workflow","value":"{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + \'-tenant\'))[0]?.name}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data || GetJobsConfig.data == undefined}}"
      queryDisabledMessage="Not allowed"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetChosenDB2GraphConfig"
      body={include("./lib/GetChosenDB2GraphConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"{{ `DB2Graph-${ChosenDB2Graph.value}` }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || tabs.labels[tabs.currentViewIndex] != "Tenant Settings" || TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex] != "DB2Graph"}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    />
    <GraphQLQuery
      id="GetJobs"
      body={include("./lib/GetJobs.gql", "string")}
      cacheKeyTtl="15"
      enableCaching={true}
      enableTransformer={true}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"},{"key":"x-role","value":"{{role.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || !["Jobs", "Status","Tenant Settings"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer={
        '// type your code here\n// example: return formatDataAsArray(data).filter(row => row.quantity > 20)\nreturn data.jobs.map((o) => {\n  switch (o["status"]){\n    case "failed":\n      o["statusPretty"] = "😭";\n      break;\n    case "finished":\n      o["statusPretty"] = "👌";\n      break;\n    case "started":\n      o["statusPretty"] =  "😬";\n      break;\n  }\n  return o;\n})'
      }
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsTimeline"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetJobsConfig"
      body={include("./lib/GetJobsConfig.gql", "string")}
      enableTransformer={true}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      transformer=""
    />
    <JavascriptQuery
      id="GetJobsTimeline"
      query={include("./lib/GetJobsTimeline.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <GraphQLQuery
      id="PartialTailorSetLastSuccesfullRunTsToNow"
      body={include(
        "./lib/PartialTailorSetLastSuccesfullRunTsToNow.gql",
        "string"
      )}
      confirmationMessage="## Are you sure that you want to clear the cache?"
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"partial_Tailor"},{"key":"last_successful_started_at","value":"{{ now_days_delta(0).toISOString() }}"},{"key":"","value":""}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobs"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="ResetJobLastSuccessful"
      body={include("./lib/ResetJobLastSuccessful.gql", "string")}
      confirmationMessage={
        'Are you sure you want to reset {{jobsStatusTable.selectedRow.data.name}}?\n\n{{jobsStatusTable.selectedRow.data.name.startsWith("DB2Graph") ? "DB2G will do a full resync and clean garbage" : ""}}'
      }
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"{{jobsStatusTable.selectedRow.data.name}}"},{"key":"last_successful_started_at","value":"null"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobs"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="ResetJobLastSuccessfull2W"
      body={include("./lib/ResetJobLastSuccessfull2W.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"{{jobsStatusTable.selectedRow.data.name}}"},{"key":"last_successful_started_at","value":"{{ now_days_delta(-14).toISOString() }}"},{"key":"","value":""}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobs"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="ResumeCronByTabName"
      body={include("./lib/ResumeCronByTabName.gql", "string")}
      confirmationMessage="Are you sure you want to **resume** this job?"
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"workflow","value":"{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + \'-tenant\'))[0]?.name}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data || GetJobsConfig.data == undefined}}"
      queryDisabledMessage="Not allowed!"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="SuspendCronByTabName"
      body={include("./lib/SuspendCronByTabName.gql", "string")}
      confirmationMessage="Are you sure you want to **suspend** this job?"
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"workflow","value":"{{GetJobsConfig.data.argo_cron.filter(x => x.name?.startsWith(TenantSettingsTabs.labels[TenantSettingsTabs.currentViewIndex].toLowerCase() + \'-tenant\'))[0]?.name}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data || GetJobsConfig.data == undefined}}"
      queryDisabledMessage="Not allowed!"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="TinyTenantArgoList"
      body={include("./lib/TinyTenantArgoList.gql", "string")}
      cacheKeyTtl="10"
      enableCaching={true}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{TinyTenant.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || tabs.labels[tabs.currentViewIndex] != "Jobs" || JobsTabs.labels[JobsTabs.currentViewIndex] != "Argo"}}'
      }
      queryRefreshTime="40000"
      queryThrottleTime="3000"
      queryTimeout="15000"
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
    <GraphQLQuery
      id="UpsertArgovisorConfig"
      body={include("./lib/UpsertArgovisorConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"argovisor"},{"key":"config","value":"{{BuildArgovisorConfig.value}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpsertArgovisorCron"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertArgovisorCron"
      body={include("./lib/UpsertArgovisorCron.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"schedule","value":"{{ArgovisorSchedule.value}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value}}"
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clear"
        params={{ ordered: [] }}
        pluginId="ArgohConfigForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertBabelfishConfig"
      body={include("./lib/UpsertBabelfishConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"Babelfish"},{"key":"config","value":"{{ {config_path: BabelfishDepsConfigPath.value, specific_config_path: BabelfishConfigPath.value, largeDeletionsUntil: BabelfishLargeDeletionsUntil.value} }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertCacherConfig"
      body={include("./lib/UpsertCacherConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"cacher"},{"key":"config","value":"{{ {\\"metrics\\": [ ...CacherJsonConfig.value, ...CacherMetricURLTransformerToConfig.value], \\"async_workers\\": CacherAsyncWorkers.value, \\"range\\": CacherDefaultRangeJsonConfig.value} }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="CacherPulseURLtoAdd"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="AddMetricToCaherConfigModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertChosenDB2GraphConfig"
      body={include("./lib/UpsertChosenDB2GraphConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"{{ `DB2Graph-${ChosenDB2Graph.value}` }}"},{"key":"config","value":"{{ {schema: ChosenDB2Graph.value == \\"Targets\\" ? undefined: db2graphSchema.value, source: ChosenDB2Graph.value == \\"Targets\\" ? \\"xlsx\\" : \\"sql\\", config_path: (db2graphDefaultConfigPath.value == \\"\\" ? undefined : db2graphDefaultConfigPath.value), specific_config_path: (db2graphSpecificConfigPath.value === \\"\\" ? undefined : db2graphSpecificConfigPath.value), incremental: db2graphIncremental.value, shift_dates: db2graphShiftDates.value} }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data || GetJobsConfig.data == undefined || !db2graphSchema.value}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetChosenDB2GraphConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clear"
        params={{ ordered: [] }}
        pluginId="DB2GraphConfig"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertHermesConfig"
      body={include("./lib/UpsertHermesConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"hermes"},{"key":"schedule","value":"{{HermesSchedule.value}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clear"
        params={{ ordered: [] }}
        pluginId="HermesConfigForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="clear"
        params={{ ordered: [] }}
        pluginId="HermesConfigForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertMetricTesterConfig"
      body={include("./lib/UpsertMetricTesterConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"metric-tester"},{"key":"config","value":"{\'metric_groups\': {{ MetricTesterConfigJson.value }}, \'num_threads\': {{MetricTesterNumThreads.value}} }"},{"key":"schedule","value":"{{MetricTesterSchedule.value}}"},{"key":"extra_params","value":"{{ {} }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value}}"
      queryFailureConditions={
        '[{"condition":"{{metadata.status != 201}}","message":"{{UpsertMetricTesterConfig.data.upsert_argo_cron.msg}}"},{"condition":"","message":""}]'
      }
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      successMessage="{{UpsertMetricTesterConfig.data.upsert_argo_cron.msg}}"
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clear"
        params={{ ordered: [] }}
        pluginId="MetricTesterConfigForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="clear"
        params={{ ordered: [] }}
        pluginId="MetricTesterConfigForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertSherlockConfig"
      body={include("./lib/UpsertSherlockConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"sherlock"},{"key":"config","value":"{{ {configFilePath: SherlockTenantConfigPath.value} }}"},{"key":"schedule","value":"{{SherlockSchedule.value}}"},{"key":"extra_params","value":"{{ {\\"schemaRevision\\": schemaRepoRevision.value } }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value}}"
      queryFailureConditions={
        '[{"condition":"{{metadata.status != 201}}","message":"{{UpsertSherlockConfig.data.upsert_argo_cron.msg}}"},{"condition":"","message":""}]'
      }
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      successMessage="{{UpsertSherlockConfig.data.upsert_argo_cron.msg}}"
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clear"
        params={{ ordered: [] }}
        pluginId="SherlockConfigForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="clear"
        params={{ ordered: [] }}
        pluginId="SherlockConfigForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertTablefishConfig"
      body={include("./lib/UpsertTablefishConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"tablefish"},{"key":"config","value":"{{ {\\"snapshot_schema\\": snapshotSchema.value, \\"schema\\": tablefishSalesforceSchema.value, \\"project_path\\": projectPath.value, \\"execution_step\\": dbtSteps.value} }}"},{"key":"","value":""}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value || isTablefishConfigInvalid.value}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="CacherPulseURLtoAdd"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="AddMetricToCaherConfigModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertTailorConfig"
      body={include("./lib/UpsertTailorConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"Tailor"},{"key":"config","value":"{{ {config_path: TailorConfigPath.value, specific_config_path: TailorSpecificConfigPath.value == \'\' ? null : TailorSpecificConfigPath.value} }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertUseratorConfig"
      body={include("./lib/UpsertUseratorConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"userator"},{"key":"config","value":"{{ {configFilePath: UseratorTenantConfigPath.value,  isDryRun: useratorMutedCheckbox.value, salesforceSchema: useratorSalesforceSchema.value} }}"},{"key":"schedule","value":"{{UseratorSchedule.value}}"},{"key":"extra_params","value":"{{ {\\"schemaRevision\\": useratorSchemaRepo.value} }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{isUnAuthorizedForUpsert.value}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clear"
        params={{ ordered: [] }}
        pluginId="UseratorConfigForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="clear"
        params={{ ordered: [] }}
        pluginId="UseratorConfigForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="Tenant">
    <GraphQLQuery
      id="CreateNewTenant"
      body={include("./lib/CreateNewTenant.gql", "string")}
      graphQLVariables={
        '[{"key":"name","value":"{{newTenantNameTextbox.value}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{newTenantIDTextbox.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={'{{role.value!="staff" || stamp.value==""}}'}
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CurrentTenant"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clear"
        params={{ ordered: [] }}
        pluginId="newTenantForm"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTenants"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="tenantIdPicker"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="stamp"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="tenantIdPicker"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="CurrentTenant"
      body={include("./lib/CurrentTenant.gql", "string")}
      graphQLVariables={'[{"key":"tid","value":"{{tenantIdPicker.value}}"}]'}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{ stamp.value == "" || role.value == "" || tenantIdPicker.value == ""}}'
      }
      queryRefreshTime="120000"
      resourceName="GraphQL-WithoutResource"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="TenantNotSelected"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="CurrentTinyTenant"
      body={include("./lib/CurrentTinyTenant.gql", "string")}
      graphQLVariables={'[{"key":"tid","value":"{{TinyTenant.value}}"}]'}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{TinyTenant.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{ stamp.value == "" || role.value == "" || tenantIdPicker.value == ""}}'
      }
      queryRefreshTime="120000"
      resourceName="GraphQL-WithoutResource"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <GraphQLQuery
      id="GetTenants"
      body={include("./lib/GetTenants.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"staff"},{"key":"x-tenant-id","value":"2"},{"key":"","value":""}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={'{{ stamp.value == ""}}'}
      resourceName="GraphQL-WithoutResource"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <GraphQLQuery
      id="SyncTinyTenant"
      body={include("./lib/SyncTinyTenant.gql", "string")}
      graphQLVariables={
        '[{"key":"fiscal_year_start","value":"{{CurrentTenant.data.tenants_by_pk.fiscal_year_start}}"},{"key":"name","value":"{{`Tiny ${CurrentTenant.data.tenants_by_pk.name}`}}"},{"key":"internal_metadata","value":"{{ {is_tiny: true} }}"},{"key":"tablefish_config","value":"{{ {...GetJobsConfig.data.jobs.find((job) => job.name == \\"tablefish\\").config, snapshot_schema: `tiny_${GetJobsConfig.data.jobs.find((job) => job.name == \\"tablefish\\").config.snapshot_schema}`, is_tiny_tenant: true} }}"},{"key":"db2graph_salesforce_config","value":"{{ {...GetJobsConfig.data.jobs.find((job) => job.name == \\"DB2Graph-Salesforce\\").config, schema: `tiny_${GetJobsConfig.data.jobs.find((job) => job.name == \\"DB2Graph-Salesforce\\").config.schema}`} }}"},{"key":"db2graph_targets_config","value":"{{ {...GetJobsConfig.data.jobs.find((job) => job.name == \\"DB2Graph-Targets\\")?.config} }}"},{"key":"babelfish_config","value":"{{ {...GetJobsConfig.data.jobs.find((job) => job.name == \\"Babelfish\\").config} }}"},{"key":"tailor_config","value":"{{ {...GetJobsConfig.data.jobs.find((job) => job.name == \\"Tailor\\").config, \\"tiny_config_path\\": \\"/schemas/default/tiny_config.yaml\\"} }}"},{"key":"argovisor_config","value":"{{ {...GetJobsConfig.data.jobs.find((job) => job.name == \\"argovisor\\").config, \\"db2graphConfig\\": {\\"stepsAppendArgs\\": GetJobsConfig.data.jobs.find((job) => job.name == \\"argovisor\\").config[\\"db2graphConfig\\"][\\"stepsAppendArgs\\"].filter((arg) => [\\"-t salesforce\\", \\"-t targets\\"].includes(arg))}, \\"tailorConfig\\": {...GetJobsConfig.data.jobs.find((job) => job.name == \\"argovisor\\").config[\\"tailorConfig\\"], \\"concurrentJobsCount\\": \\"6\\"} } }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{TinyTenant.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql?"
      queryDisabled={
        '{{ stamp.value == "" || role.value == "" || tenantIdPicker.value == "" || !IsStaffRole.data }}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CurrentTinyTenant"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="TenantMetadata"
      body={include("./lib/TenantMetadata.gql", "string")}
      graphQLVariables={'[{"key":"tid","value":"{{tenantIdPicker.value}}"}]'}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{ stamp.value == "" || role.value == "" || tenantIdPicker.value == "" || !IsStaffRole.data }}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <GraphQLQuery
      id="UpsertTenant"
      body={include("./lib/UpsertTenant.gql", "string")}
      graphQLVariables={
        '[{"key":"fiscal_year_start","value":"{{ tenant_fiscalyear_textbox.value}}"},{"key":"logo_url","value":"{{tenant_logo_url_textbox.value}}"},{"key":"name","value":"{{tenant_name_textbox.value}}"},{"key":"graph_colors","value":"{{tenant_color_palette_textbox.value && undefined}}"},{"key":"decimal_digits","value":"{{ tenant_decimal_digits.value || undefined}}"},{"key":"trial_end","value":"{{ (tenant_trial_end.value != \\"\\") ? (new Date(tenant_trial_end.value)).toISOString() : undefined  }}"},{"key":"last_sync","value":"{{ (tenant_last_sync.value != \\"\\") ? (new Date(tenant_last_sync.value)).toISOString() : undefined  }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CurrentTenant"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertTenantMetadata"
      body={include("./lib/UpsertTenantMetadata.gql", "string")}
      graphQLVariables={
        '[{"key":"internal_metadata","value":"{{ {tenantState: tenantState.value, tenantOwner: tenantOwner.value, tenantAE: tenantAE.value} }}"},{"key":"tid","value":"{{tenantIdPicker.value}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="TenantMetadata"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="DataHygiene">
    <GraphQLQuery
      id="DeleteFixedHygieneIssues"
      body={include("./lib/DeleteFixedHygieneIssues.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllDataHygieneIssues"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetAllDataHygieneIssues"
      body={include("./lib/GetAllDataHygieneIssues.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsStaffRole.data || !["Data Hygiene"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
  </Folder>
  <Folder id="Workspaces">
    <GraphQLQuery
      id="DeleteWorkspace"
      body={include("./lib/DeleteWorkspace.gql", "string")}
      confirmationMessage={
        'Are you sure you want to delete\n"{{workspacesTable.selectedRow.data.name}}" \nworkspace?'
      }
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"id","value":"{{workspacesTable.selectedRow.data.id}}"},{"key":"name","value":"{{`${workspacesTable.selectedRow.data.name} (${Date.now()})`}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Workspaces", "Signals"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllWorkspaces"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="ExportWorkspace"
      body={include("./lib/ExportWorkspace.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"name","value":"{{workspacesTable.selectedRow.data.name}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Workspaces", "Signals"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer={
        'let workspace = data["workspaces"][0];\n\nconst onlyFeedSignals = data["workspaces"][0]["feed"];\n\nconst feedSignalsFormat = {\n  "feed_signals": {\n    "data": onlyFeedSignals["feed_signals"].map((feed_signal) => {\n      feed_signal["signal"] = {"data": feed_signal["signal"]}\n      return feed_signal\n    })\n  }\n }\n\nworkspace["feed"] = {\n  "data": feedSignalsFormat\n}\n\nreturn workspace'
      }
    >
      <Event
        event="success"
        method="exportData"
        params={{
          ordered: [
            { fileType: "json" },
            {
              fileName:
                "{{workspacesTable.selectedRow.data.name}}-{{CurrentTenant.data.tenants_by_pk.name}}-exported",
            },
            { data: "{{ExportWorkspace.data}}" },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="copyToClipboard"
        params={{
          ordered: [{ value: "{{JSON.stringify(ExportWorkspace.data)}}" }],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { duration: "5" },
                  { title: "JSON copied to clipboard" },
                  { description: "JSON copied to clipboard" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetAllSignalsInWorkspace"
      body={include("./lib/GetAllSignalsInWorkspace.gql", "string")}
      graphQLVariables={
        '[{"key":"feed_id","value":"{{workspacesTable.selectedRow.data.id}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Workspaces", "Signals"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    />
    <GraphQLQuery
      id="GetAllWorkspaces"
      body={include("./lib/GetAllWorkspaces.gql", "string")}
      enableTransformer={true}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Workspaces", "Signals"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer={
        'return data.workspaces.map((o) => {\n  o["Dashboard?"] = o?.collection_type == "dashboard";\n  delete o.collection_type;\n  return o;\n});'
      }
    />
    <GraphQLQuery
      id="ImportFromJson"
      body={include("./lib/ImportFromJson.gql", "string")}
      confirmationMessage={
        'Are you sure you want to upload: \n"{{workspaceImportName.value}}" \nworkspace?'
      }
      graphQLVariables={
        '[{"key":"name","value":"{{workspaceImportName.value}}"},{"key":"collection_type","value":"{{importedJsonWorkspace.parsedValue[0].collection_type}}"},{"key":"feed","value":"{{importedJsonWorkspace.parsedValue[0].feed}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Workspaces", "Signals"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="confetti"
        params={{ ordered: [] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="importWorkspace"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="importedJsonWorkspace"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="workspaceImportName"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllWorkspaces"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertFeedSignal"
      body={include("./lib/UpsertFeedSignal.gql", "string")}
      graphQLVariables={
        '[{"key":"feed_id","value":"{{ signalsInWorkspaceTable.recordUpdates[0].feed_id }}"},{"key":"signal_id","value":"{{ signalsInWorkspaceTable.recordUpdates[0].signal_id }}"},{"key":"order","value":"{{ signalsInWorkspaceTable.recordUpdates[0].order }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsDataEditorRole.data}}"
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllWorkspaces"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertWorkspace"
      body={include("./lib/UpsertWorkspace.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{ workspacesTable.recordUpdates[0].id }}"},{"key":"order","value":"{{ workspacesTable.recordUpdates[0].order }}"},{"key":"name","value":"{{ workspacesTable.recordUpdates[0].name }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsDataEditorRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllWorkspaces"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="Signals">
    <GraphQLQuery
      id="DeleteSignal"
      body={include("./lib/DeleteSignal.gql", "string")}
      confirmationMessage="Are you sure you want to delete this signal?"
      graphQLVariables={
        '[{"key":"signal_id","value":"{{signalsTable.selectedRow.data.id}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsDataViewerRole.data}}"
      queryDisabledMessage="You are not allowed to do that, re-token?"
      queryFailureConditions={'[{"condition":"","message":""}]'}
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllSignals"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetAllFeedSignalsByUser"
      body={include("./lib/GetAllFeedSignalsByUser.gql", "string")}
      graphQLVariables={
        '[{"key":"feed_id","value":"{{FeedUserSelector.value}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Feeds"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
    <GraphQLQuery
      id="GetAllSignals"
      body={include("./lib/GetAllSignals.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Signals"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
    <GraphQLQuery
      id="PublishSignal"
      body={include("./lib/PublishSignal.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{signalsTable.selectedRow.data.id}}"},{"key":"state","value":"AwaitingPublication"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsDataEditorRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllSignals"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UnpinSignalFromEverywhere"
      body={include("./lib/UnpinSignalFromEverywhere.gql", "string")}
      confirmationMessage="Are you sure you want to unpin this signal from all feeds and workspaces?"
      graphQLVariables={
        '[{"key":"signal_id","value":"{{signalsTable.selectedRow.data.id}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      notificationDuration="6"
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsDataViewerRole.data}}"
      queryDisabledMessage="You are not allowed to do that"
      queryFailureConditions={'[{"condition":"","message":""}]'}
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      successMessage="Unpinned from {{UnpinSignalFromEverywhere.data.delete_feed_signals.affected_rows}}: {{JSON.stringify(UnpinSignalFromEverywhere.data.delete_feed_signals.returning)}}"
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllSignals"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UnpinSignalFromFeed"
      body={include("./lib/UnpinSignalFromFeed.gql", "string")}
      confirmationMessage="Are you sure you want to unpin this signal from all feeds and workspaces?"
      graphQLVariables={
        '[{"key":"signal_id","value":"{{FeedSignalsTable.selectedRow.data.signal_id}}"},{"key":"feed_id","value":"{{FeedSignalsTable.selectedRow.data.feed_id}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      notificationDuration="6"
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsDataViewerRole.data}}"
      queryDisabledMessage="You are not allowed to do that"
      queryFailureConditions={'[{"condition":"","message":""}]'}
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      successMessage="Unpinned from {{FeedUserSelector.selectedItem.email}}"
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllSignals"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpdateAllSignalInWorkspaceAuthorId"
      body={include("./lib/UpdateAllSignalInWorkspaceAuthorId.gql", "string")}
      graphQLVariables={
        '[{"key":"author_id","value":""},{"key":"workspace_id","value":""}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsDataEditorRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllSignals"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpsertSignal"
      body={include("./lib/UpsertSignal.gql", "string")}
      graphQLVariables={
        '[{"key":"objects","value":"{{signalsTable.recordUpdates.map(o=>[o].reduce((_, v) => ({ id: v.id, attachment: v.attachment,message:v.message,author_id:v.author_id,tid:v.tid }), {})) }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsDataEditorRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllSignals"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="query82"
      body={include("./lib/query82.gql", "string")}
      graphQLVariables={
        '[{"key":"workspace_name","value":"Sales Productivity 1"},{"key":"collection_type","value":"dashboard"},{"key":"order","value":"100"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Signals"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    />
  </Folder>
  <Folder id="DataOverrides">
    <Function
      id="CsvToDataOverrides"
      funcBody={include("./lib/CsvToDataOverrides.js", "string")}
    />
    <Function
      id="DataOverridesToCsv"
      funcBody={include("./lib/DataOverridesToCsv.js", "string")}
    />
    <GraphQLQuery
      id="DeleteDataOverride"
      body={include("./lib/DeleteDataOverride.gql", "string")}
      graphQLVariables={
        '[{"key":"object_id","value":"{{DataOverridesTable.selectedRow.data.object_id}}"},{"key":"dimension","value":"{{DataOverridesTable.selectedRow.data.dimension}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Data Overrides"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllDataOverrides"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetAllDataOverrides"
      body={include("./lib/GetAllDataOverrides.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Data Overrides"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
    <GraphQLQuery
      id="GetDataOverrideHistory"
      body={include("./lib/GetDataOverrideHistory.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Data Overrides"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    />
    <GraphQLQuery
      id="ImportOverridesFromCsv"
      body={include("./lib/ImportOverridesFromCsv.gql", "string")}
      graphQLVariables={
        '[{"key":"objects","value":"{{ CsvToDataOverrides.value }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Data Overrides"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="ImportOverridesFromCsvModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllDataOverrides"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="InsertDataOverride"
      body={include("./lib/InsertDataOverride.gql", "string")}
      graphQLVariables={
        '[{"key":"object_id","value":"{{DataOverridesTable.newRow.object_id}}"},{"key":"dimension","value":"{{DataOverridesTable.newRow.dimension}}"},{"key":"value","value":"{{DataOverridesTable.newRow.value}}"},{"key":"comment","value":"{{DataOverridesTable.newRow.comment}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Data Overrides"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllDataOverrides"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpdateDataOverrides"
      body={include("./lib/UpdateDataOverrides.gql", "string")}
      graphQLVariables={
        '[{"key":"objects","value":"{{DataOverridesTable.recordUpdates.map(update => ({\\"object_id\\": update[\\"object_id\\"], \\"dimension\\": update[\\"dimension\\"], \\"value\\": update[\\"value\\"], \\"comment\\": update[\\"comment\\"]}))}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{!IsDataViewerRole.data || !["Data Overrides"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAllDataOverrides"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="Temporary state">
    <State
      id="access_token"
      localStorageKey="{{ self.id }}"
      persistToLocalStorage={false}
    />
    <State
      id="state1"
      localStorageKey="{{ self.id }}"
      persistToLocalStorage={false}
    />
  </Folder>
  <Folder id="Userator">
    <GraphQLQuery
      id="RunUserator"
      body={include("./lib/RunUserator.gql", "string")}
      confirmationMessage="Are you sure you want to run userator workflow?"
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ArgoList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobs"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="Hermes">
    <GraphQLQuery
      id="RunHermes"
      body={include("./lib/RunHermes.gql", "string")}
      confirmationMessage="Are you sure you want to run hermes workflow?"
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ArgoList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobs"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="MetricTester">
    <GraphQLQuery
      id="RunMetricTester"
      body={include("./lib/RunMetricTester.gql", "string")}
      confirmationMessage="Are you sure you want to run metric tester?"
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ArgoList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobs"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="DeleteTenant">
    <JavascriptQuery
      id="DeleteAllCrons"
      confirmationMessage="Are you sure you want to **DELETE** all jobs for '{{CurrentTenant.data.tenants_by_pk.name}}'?"
      notificationDuration="6"
      query={include("./lib/DeleteAllCrons.js", "string")}
      queryFailureConditions="[]"
      requireConfirmation={true}
      resourceName="JavascriptQuery"
      successMessage="All crons deleted! Please VERIFY"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetJobsConfig"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <GraphQLQuery
      id="DeleteCronByParameter"
      body={include("./lib/DeleteCronByParameter.gql", "string")}
      confirmationMessage=""
      enableTransformer={true}
      graphQLVariables={'[{"key":"workflow","value":"{{workflow}}"}]'}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data || GetJobsConfig.data == undefined}}"
      queryDisabledMessage="Not allowed"
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      successMessage="Deleted {{workflow}} job"
      transformer=""
    />
    <GraphQLQuery
      id="RunGraphDeleter"
      body={include("./lib/RunGraphDeleter.gql", "string")}
      confirmationMessage="Are you really sure you want to **delete graph data?**"
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data || tenantNameForApproval.value != CurrentTenant.data.tenants_by_pk.name}}"
      queryDisabledMessage="**Not Allowed!**"
      queryFailureConditions={
        '[{"condition":"{{ data?.argo_run?.msg != \\"Done\\" ?? true}}","message":"{{data?.argo_run?.msg ?? \\"FAILED\\"}}"}]'
      }
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      successMessage="Started Graph Deleter job"
      transformer=""
    >
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="deleteTenantGraphButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="Columbus">
    <GraphQLQuery
      id="CreateConnector"
      body={include("./lib/CreateConnector.gql", "string")}
      graphQLVariables={
        '[{"key":"source","value":"{{ selectorConnectorType.value }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{!IsStaffRole.data}}"
      queryTimeout="30000"
      requireConfirmation={true}
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  {
                    title:
                      "Got new Connect-Card URL and copied to your clipboard",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="copyToClipboard"
        params={{
          ordered: [
            {
              value:
                "{{ CreateConnector.data?.fivetran_create_connector?.result?.url }}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <OpenAPIQuery
      id="SendActivationMail"
      confirmationMessage={
        '## Are you sure you want to send a "Activation" email to {{ActivationEmailInput.value }} ?'
      }
      method="post"
      operationId="POST_mail_send"
      parameterDynamicStates={'{"body":true}'}
      parameters={
        '{"body":"{\\n  \\"personalizations\\": [\\n    {\\n      \\"to\\": [  {    \\"email\\": {{ActivationEmailInput.value }} }],\\n      \\"bcc\\":[  {    \\"email\\": \\"outgoing@sightfull.com\\"} ],\\n      \\"dynamic_template_data\\": {  \\"first_name\\": {{ActivationEmailInputName.value }}, \\"connect_url\\":{{CreateConnector.data.fivetran_create_connector.result.url}} }\\n    }\\n  ],\\n  \\"template_id\\": \\"d-d09a39f785b549a6a6ba41dfdb8ec3b2\\",\\n  \\"subject\\": \\"Activate your Sightfull account\\",\\n  \\"from\\": {\\n    \\"email\\": \\"no-reply@notifications.sightfull.com\\",\\n    \\"name\\": \\"Sightfull\\"\\n  },\\n  \\"asm\\": {\\n    \\"group_id\\": 17772,\\n    \\"groups_to_display\\": [17772]\\n  },\\n\\"reply_to\\": {\\n    \\"email\\": \\"support@sightfull.com\\",\\n    \\"name\\": \\"Sightfull Support\\"\\n  }\\n}"}'
      }
      path="/mail/send"
      queryDisabled={
        '{{(CreateConnector.data?.fivetran_create_connector?.result?.url ?? null) == null || ActivationEmailInput.value == "" || ActivationEmailInputName.value == ""}}'
      }
      requestBody={null}
      requireConfirmation={true}
      resourceName="8e074666-797c-4ea4-9816-f6832cd5804c"
      server="https://api.sendgrid.com/v3"
      serverVariables={null}
      specBasePath="https://api.sendgrid.com/v3"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
  </Folder>
  <Folder id="Users">
    <GraphQLQuery
      id="CreateUser"
      body={include("./lib/CreateUser.gql", "string")}
      graphQLVariables={
        '[{"key":"email","value":"{{(usersEmailTable.recordUpdates[0]||usersEmailTable.newRow)?.email}}"},{"key":"first_name","value":"{{(usersEmailTable.recordUpdates[0]||usersEmailTable.newRow)?.name?.split(\' \')[0]}}"},{"key":"last_name","value":"{{(usersEmailTable.recordUpdates[0]||usersEmailTable.newRow)?.name?.split(\' \').slice(1).join(\' \')}}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      notificationDuration="6"
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{ TenantNotSelected.data || TenantNotSelected.data == null}}"
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    />
    <GraphQLQuery
      id="GetAllUsers"
      body={include("./lib/GetAllUsers.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{ TenantNotSelected.data || TenantNotSelected.data == null || !["Sherlock","Feature Flags", "Signals", "Workspaces", "Feeds"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
    <GraphQLQuery
      id="GetUsersForCS"
      body={include("./lib/GetUsersForCS.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{ TenantNotSelected.data || TenantNotSelected.data == null || !["Users"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
    <GraphQLQuery
      id="UpdateUserMetadata"
      body={include("./lib/UpdateUserMetadata.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{id}}"},{"key":"internal_metadata","value":"{{ internal_metadata }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      notificationDuration="6"
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled="{{ TenantNotSelected.data || TenantNotSelected.data == null}}"
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    />
    <JavascriptQuery
      id="UpdateUserMetadataForAll"
      query={include("./lib/UpdateUserMetadataForAll.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetUsersForCS"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
  </Folder>
  <Folder id="Metrics">
    <GraphQLQuery
      id="EditManyMetrics"
      body={include("./lib/EditManyMetrics.gql", "string")}
      graphQLVariables={
        '[{"key":"updates","value":"{{ MetricTable.recordUpdates.map((entry) => {  let {    name,    flavor,    export_config = null,    category = null,    should_run_override = null,  } = entry; export_config=export_config ? JSON.parse(export_config):null; return {    where: { name: { _eq: name }, flavor: { _eq: flavor } },    _set: { export_config, category },  };}) }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{ TenantNotSelected.data || TenantNotSelected.data == null || !["Metrics"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetMetrics"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="EditMetric"
      body={include("./lib/EditMetric.gql", "string")}
      graphQLVariables={
        '[{"key":"export_config","value":"{{ JSON.parse(MetricTable.recordUpdates[0].export_config)}}"},{"key":"flavor","value":"{{ MetricTable.recordUpdates[0].flavor }}"},{"key":"name","value":"{{ MetricTable.recordUpdates[0].name }}"},{"key":"category","value":"{{ MetricTable.recordUpdates[0].category ===\\"\\" ? null : MetricTable.recordUpdates[0].category }}"}]'
      }
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{ TenantNotSelected.data || TenantNotSelected.data == null || !["Metrics"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      runWhenModelUpdates={false}
      transformer=""
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetMetrics"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetMetrics"
      body={include("./lib/GetMetrics.gql", "string")}
      headers={
        '[{"key":"authorization","value":"Bearer {{tokenInput.value}}"},{"key":"x-role","value":"{{role.value}}"},{"key":"x-tenant-id","value":"{{tenantIdPicker.value}}"}]'
      }
      query="https://api.{{stamp.value}}.sightfull.com/v1/graphql"
      queryDisabled={
        '{{ TenantNotSelected.data || TenantNotSelected.data == null || !["Metrics"].includes(tabs.labels[tabs.currentViewIndex])}}'
      }
      resourceName="GraphQL-WithoutResource"
      transformer=""
    />
  </Folder>
  <Folder id="upsertValidations">
    <Function
      id="isArgovisorConfigInvalid"
      funcBody={include("./lib/isArgovisorConfigInvalid.js", "string")}
    />
    <Function
      id="isBabelfishConfigInvalid"
      funcBody={include("./lib/isBabelfishConfigInvalid.js", "string")}
    />
    <Function
      id="isCacherConfigInvalid"
      funcBody={include("./lib/isCacherConfigInvalid.js", "string")}
    />
    <Function
      id="isDB2GConfigInvalid"
      funcBody={include("./lib/isDB2GConfigInvalid.js", "string")}
    />
    <Function
      id="isHermesConfigInvalid"
      funcBody={include("./lib/isHermesConfigInvalid.js", "string")}
    />
    <Function
      id="isJobConfigDataInvalid"
      funcBody={include("./lib/isJobConfigDataInvalid.js", "string")}
    />
    <Function
      id="isMetricTesterConfigInvalid"
      funcBody={include("./lib/isMetricTesterConfigInvalid.js", "string")}
    />
    <Function
      id="isSherlockConfigInvalid"
      funcBody={include("./lib/isSherlockConfigInvalid.js", "string")}
    />
    <Function
      id="isTablefishConfigInvalid"
      funcBody={include("./lib/isTablefishConfigInvalid.js", "string")}
    />
    <Function
      id="isTailorConfigInvalid"
      funcBody={include("./lib/isTailorConfigInvalid.js", "string")}
    />
    <Function
      id="isUnAuthorizedForUpsert"
      funcBody={include("./lib/isUnAuthorizedForUpsert.js", "string")}
    />
    <Function
      id="isUseratorConfigInvalid"
      funcBody={include("./lib/isUseratorConfigInvalid.js", "string")}
    />
  </Folder>
  <RESTQuery
    id="query100"
    resourceDisplayName="2xOauthTest"
    resourceName="a38e35fa-3dcc-4e67-b65b-4150f2f5a81d"
  />
</GlobalFunctions>

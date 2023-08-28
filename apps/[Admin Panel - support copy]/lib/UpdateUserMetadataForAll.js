await usersTable.recordUpdates.forEach(async (record) => {
  await UpdateUserMetadata.trigger({
    additionalScope: {
      id: record.id,
      internal_metadata: {isOnboarded: record["Custom Column 1"], state: record["Custom Column 2"]},
    },
});
}
)

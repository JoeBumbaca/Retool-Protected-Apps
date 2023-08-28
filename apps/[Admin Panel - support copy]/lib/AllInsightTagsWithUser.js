var insights = {{GetAllInsights?.data?.map((o) => o.id)}};

return insights.map((o) => ({"user_id": {{usersSubscriptionsTable?.selectedRow?.data?.id}},"tag_id": o}))
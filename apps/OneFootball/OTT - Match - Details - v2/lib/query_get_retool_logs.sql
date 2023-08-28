select ate."createdAt", u."firstName", u."lastName", u.email, ate."metadata" ->> 'status' as Status, ate."metadata" ->> 'error' as Error, ate."metadata" -> 'request' ->> 'body' as Body
from audit_trail_events ate 
  inner join users u on ate."userId" = u.id 
where 
  ate."pageName" = {{pageName}} and
  ate."queryName" = {{queryName}} and
  ate."actionType" = 'QUERY_RUN'
  and ate."metadata" -> 'request' ->> 'url' = {{url}}
order by ate."createdAt" desc
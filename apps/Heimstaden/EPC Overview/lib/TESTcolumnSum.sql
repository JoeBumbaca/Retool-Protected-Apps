SELECT
*,
YEAR (NOW ()) -a.Construction_Year as difference
from {{EPCdatabaseConnect.data}} as a
---Difference between current year and constuction hear and inserted as new column with values



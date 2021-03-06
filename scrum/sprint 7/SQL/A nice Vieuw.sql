ALTER VIEW EventsByCategory AS

-- show number of events by category

SELECT TOP 100 PERCENT

c.CategoryName AS Category,

COUNT(e.EventName) AS What

FROM

tblCategory AS c

INNER JOIN tblEvent AS e

ON c.CategoryID = e.CategoryID

GROUP BY

c.CategoryName

ORDER BY

-- change the sort order

What ASC
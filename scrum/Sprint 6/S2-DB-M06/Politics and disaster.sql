SELECT CategoryName, COUNT(EventID) AS 'Number of Events'
FROM tblCategory
INNER JOIN tblEvent ON tblCategory.CategoryID = tblEvent.CategoryID
GROUP BY CategoryName
ORDER BY [Number of Events] DESC
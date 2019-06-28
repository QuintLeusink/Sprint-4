SELECT 
LEFT(CategoryName, 1) AS 'Category initial' ,COUNT(EventName) AS 'Number of events' ,FORMAT(AVG(LEN(EventName)), 'N2') AS 'Average event name length'
FROM            
tblEvent event
INNER JOIN tblCategory ON tblCategory.CategoryID = event.CategoryID
GROUP BY CategoryName
SELECT
[EventName] AS What ,[EventDate] AS "When"
FROM
[dbo].[tblEvent]
WHERE DATEPART (yyyy, [EventDate]) = 2005 and DATEPART(month, [EventDate]) = 2
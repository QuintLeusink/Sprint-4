SELECT
[EventName],[EventDate]
FROM [dbo].[tblEvent]
WHERE [EventName] LIKE '%Teletubbies%' or [EventDetails] LIKE '%Pandy%'

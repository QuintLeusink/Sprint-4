SELECT
[EventName],[EventDate]
FROM
[dbo].[tblEvent]
WHERE
[EventName] LIKE '%Teletubbies%' or [EventName] LIKE '%Pandy%'
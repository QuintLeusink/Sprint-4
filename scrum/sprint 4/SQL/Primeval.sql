SELECT * FROM [dbo].[tblEvent]
WHERE [EventDetails] Like '%Train%' AND [CategoryID] != 14

SELECT * FROM [dbo].[tblEvent]
WHERE [CountryID] in (13) AND [EventName] not like '%Space%' AND [EventDetails] not like '%Space%'

SELECT * FROM [dbo].[tblEvent]
WHERE [CategoryID] in (5,6) AND [EventDetails] not like '%War%' AND [EventDetails] not like '%Death%'
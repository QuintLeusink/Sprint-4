SELECT 
[EventName],[EventDetails],[EventDate]
FROM [dbo].[tblEvent]

WHERE 
([CountryID] in (8, 22, 30, 35) or [EventDetails] LIKE '%Water%' or [CategoryID] = 4)
and [EventDate] > '1970-01-01'
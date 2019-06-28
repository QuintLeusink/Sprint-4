SELECT CONCAT(EventName, ' (category ', CategoryID, ')') as "Event (category)", [EventDate]
FROM tblEvent
WHERE CountryID = 1
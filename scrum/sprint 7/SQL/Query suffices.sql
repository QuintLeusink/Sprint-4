SELECT EventName,
CASE 
WHEN DAY(EventDate) = 1 THEN DATENAME(WEEKDAY, [EventDate]) + ' ' + CAST(DATENAME(DAY, [EventDate]) AS VARCHAR(2)) + 'st' + ' ' +  FORMAT([Eventdate], 'MMMM') + ' ' + DATENAME(YEAR, [EventDate])
WHEN DAY(EventDate) = 2 THEN DATENAME(WEEKDAY, [EventDate]) + ' ' + CAST(DATENAME(DAY, [EventDate]) AS VARCHAR(2)) + 'nd' + ' ' +  FORMAT([Eventdate], 'MMMM') + ' ' + DATENAME(YEAR, [EventDate])
WHEN DAY(EventDate) = 3 THEN DATENAME(WEEKDAY, [EventDate]) + ' ' + CAST(DATENAME(DAY, [EventDate]) AS VARCHAR(2)) + 'rd' + ' ' +  FORMAT([Eventdate], 'MMMM') + ' ' + DATENAME(YEAR, [EventDate])
ELSE DATENAME(WEEKDAY, [EventDate]) + ' ' + CAST(DATENAME(DAY, [EventDate]) AS VARCHAR(2)) + 'th' + ' ' +  FORMAT([Eventdate], 'MMMM') + ' ' + DATENAME(YEAR, [EventDate])
END AS 'Full Date'
FROM tblEvent
ORDER BY EventDate ASC

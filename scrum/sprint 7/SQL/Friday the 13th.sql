SELECT EventName, EventDate,
	DATENAME(dw, EventDate) AS 'Day of week',
	DATEPART(DD, EventDate) AS 'Day number'
FROM tblEvent
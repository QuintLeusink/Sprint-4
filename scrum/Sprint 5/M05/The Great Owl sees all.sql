SELECT 
	EventName
	,EventDate AS 'NotFormatted'
	,FORMAT (EventDate, 'd', 'en-gb') AS 'UsingFormat'
	,CONVERT (CHAR(10),EventDate,103) AS 'UsingConvert'
FROM tblEvent
WHERE EventDate = '2001'
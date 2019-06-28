SELECT EventName, EventDate,
	ABS (DATEDIFF ( day, EventDate , CURRENT_TIMESTAMP )) AS 'Days offset',
	ABS (DATEDIFF ( day, EventDate , CURRENT_TIMESTAMP )) AS 'Day difference'
FROM tblEvent
ORDER BY EventDate ASC
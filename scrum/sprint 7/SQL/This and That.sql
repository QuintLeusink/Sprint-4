SELECT EventName, EventDate ,CHARINDEX('this', EventDetails ,1) AS thisPosition,
CHARINDEX('that', EventDetails ,1) AS thatPosition,
CHARINDEX('that', EventDetails ,1)-CHARINDEX('this', EventDetails ,1) AS offset FROM tblEvent

WHERE EventDetails LIKE '%this% %that%' 
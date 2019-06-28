SELECT 
CASE 
WHEN DATEPART(YEAR,EventDate) LIKE '18%' THEN '19th Century'
WHEN DATEPART(YEAR,EventDate) LIKE '17%' THEN '18th Century'
WHEN DATEPART(YEAR,EventDate) LIKE '19%' THEN '20th Century'
WHEN DATEPART(YEAR,EventDate) LIKE '20%' THEN '21st Century'
END AS Century,COUNT(EventName) AS 'Number events'
FROM tblEvent
GROUP BY ROLLUP
(CASE 
WHEN DATEPART(YEAR,EventDate) LIKE '18%' THEN '19th Century'
WHEN DATEPART(YEAR,EventDate) LIKE '17%' THEN '18th Century'
WHEN DATEPART(YEAR,EventDate) LIKE '19%' THEN '20th Century'
WHEN DATEPART(YEAR,EventDate) LIKE '20%' THEN '21st Century'
END)
ORDER BY 'Century' ASC
SELECT ContinentName AS 'Continent',CountryName AS 'Country',COUNT(EventName) AS 'Number of events'  FROM tblContinent
INNER JOIN tblCountry ON tblContinent.ContinentID = tblCountry.ContinentID
INNER JOIN tblEvent ON tblCountry.CountryID = tblEvent.CountryID
WHERE ContinentName!='Europe'
GROUP BY ContinentName, CountryName
HAVING COUNT(EventName)>=5

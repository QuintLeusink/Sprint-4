-- list events, with countries
SELECT
-- fields from the country table        
tblCountry.CountryName AS Country, 
tblEvent.EventName AS [What happend], 
tblEvent.EventDate AS [When happend]

FROM
tblCountry INNER JOIN
tblEvent ON tblCountry.CountryID = tblEvent.CountryID
ORDER BY
[When happend]
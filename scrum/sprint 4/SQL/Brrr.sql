SELECT        
tblEvent.EventName, tblEvent.EventDate, tblCountry.CountryName, tblContinent.ContinentName

FROM            
tblEvent INNER JOIN
tblCountry ON tblEvent.CountryID = tblCountry.CountryID INNER JOIN
tblContinent ON tblCountry.ContinentID = tblContinent.ContinentID

WHERE

 [CountryName] LIKE '%Antarctic%' or [CountryName] LIKE '%Russia%'

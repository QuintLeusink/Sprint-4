SELECT        
tblCountry.CountryName,
tblContinent.ContinentName,
tblEvent.Eventname.
FROM
tblCountry, 
LEFT JOIN
tblContinent ON tblCountry.CountryName = tblContinent.ContinentName

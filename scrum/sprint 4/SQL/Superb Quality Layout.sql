--lijst van events en landen
SELECT      
--colom uit Country _able  
tblCountry.CountryName Land,

--colom uit Event Table
tblEvent.EventName [Wat is  er gebeurd],
tblEvent.EventDate [wanneer gebeurde dit]

FROM            
tblCountry INNER JOIN
tblEvent ON tblCountry.CountryID = tblEvent.CountryID

Order By
[wanneer gebeurde dit]
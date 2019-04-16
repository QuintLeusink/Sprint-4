SELECT        
tblEvent.EventName,  tblEvent.EventDate, tblCategory.CategoryName

FROM            
tblEvent RIGHT JOIN
tblCategory ON tblEvent.CategoryID = tblCategory.CategoryID

ORDER BY 
tblEvent.EventDate desc



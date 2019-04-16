select *
from [dbo].[tblEvent]
where DATEPART(yyyy, EventDate) = 2005 and
      DATEPART(month, EventDate) = 2s
SELECT        
DoctorName,
Title

FROM           
tblDoctor INNER JOIN
tblEpisode ON tblDoctor.DoctorId = tblEpisode.DoctorId

Where
EpisodeDate between  '2010-01-01' and '2010-12-31'

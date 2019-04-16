SELECT     
tblDoctor.DoctorName,
tblEpisode.Title
FROM            
tblDoctor INNER JOIN
tblEpisode ON tblDoctor.DoctorId = tblEpisode.DoctorId
WHERE
EpisodeDate between '2010-01-01' AND '2010-12-31'
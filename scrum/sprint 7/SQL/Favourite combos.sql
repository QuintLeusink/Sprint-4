SELECT AuthorName, DoctorName, COUNT(EpisodeType) AS Episodes
FROM tblAuthor
INNER JOIN tblEpisode ON tblAuthor.AuthorId = tblEpisode.AuthorId
INNER JOIN tblDoctor ON tblEpisode.DoctorID = tblDoctor.DoctorId
GROUP BY AuthorName, DoctorName
HAVING COUNT(EpisodeType) > 5
ORDER BY Episodes DESC
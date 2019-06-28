SELECT AuthorName,COUNT(EpisodeDate) AS 'Episodes', MIN(EpisodeDate) AS 'Earliest Date',MAX(EpisodeDate)  AS 'Latest Date'
FROM tblAuthor INNER JOIN tblEpisode ON tblAuthor.AuthorId = tblEpisode.AuthorId
GROUP BY AuthorName
ORDER BY 'Episodes' DESC
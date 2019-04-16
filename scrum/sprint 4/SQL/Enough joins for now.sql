SELECT 
EpisodeEnemyId, 
e.EnemyName,
EpisodeNumber,
AuthorName
FROM
tblEpisodeEnemy AS epe
LEFT JOIN tblEnemy AS e
ON epe.EnemyId= e.EnemyId
LEFT JOIN tblEpisode AS e1
ON epe.EpisodeId= e1.EpisodeId
LEFT JOIN tblAuthor AS a
ON e1.AuthorId = a.AuthorId

WHERE
EnemyName LIKE '%Daleks%' 
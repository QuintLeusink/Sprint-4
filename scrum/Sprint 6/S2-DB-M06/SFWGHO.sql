SELECT YEAR(EpisodeDate) AS 'Episode year', EnemyName, COUNT(Title) AS 'Number of episodes'
FROM tblEpisodeEnemy
INNER JOIN tblEnemy ON tblEpisodeEnemy.EnemyId = tblEnemy.EnemyId 
INNER JOIN tblEpisode ON tblEpisode.EpisodeId = tblEpisodeEnemy.EpisodeId 
INNER JOIN tblDoctor ON tblEpisode.DoctorId = tblDoctor.DoctorId
WHERE YEAR(BirthDate) < 1970
GROUP BY  YEAR(EpisodeDate) ,EnemyName
HAVING COUNT(Title) > 1
ORDER BY 'Number of episodes' DESC
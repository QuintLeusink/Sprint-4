SELECT AuthorName,Title,DoctorName,EnemyName,LEN(AuthorName + Title + DoctorName + EnemyName) AS [Total length]
FROM tblAuthor,tblEpisode,tblDoctor,tblEnemy
WHERE
LEN(AuthorName + Title + DoctorName + EnemyName) < 40

WHERE
LEN(AuthorName + Title + DoctorName + EnemyName) > 30
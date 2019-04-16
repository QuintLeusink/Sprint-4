SELECT
a.AuthorName,
e.Title,
d.DoctorName,
en.EnemyName

FROM
tblAuthor AS a,
tblEpisode AS e,
tblDoctor as d,
tblEnemy as en
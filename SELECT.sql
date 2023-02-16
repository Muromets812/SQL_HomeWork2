SELECT name, COUNT(musician_id) FROM music_genres mg
LEFT JOIN genres_musicians gm ON mg.genre_id  = gm.genre_id
GROUP BY name
ORDER BY COUNT(musician_id) DESC; 

SELECT year, COUNT(*)  FROM alboms a 
JOIN treks t ON a.albom_id = t.albom_id 
WHERE year BETWEEN 2000 and 2010
GROUP BY year;

SELECT a.name, AVG(time) FROM alboms AS a 
JOIN treks AS t ON a.albom_id = t.albom_id
GROUP BY a.name;

SELECT DISTINCT m.name  FROM musicians AS m 
JOIN musicians_alboms AS ma ON m.musician_id = ma.musician_id 
JOIN alboms AS a ON ma.albom_id = a.albom_id 
WHERE a.year != 2020;

SELECT  c.name  FROM collections AS c  
WHERE c.name  LIKE '%Queen%';

SELECT  a.name FROM alboms AS a
JOIN musicians_alboms AS ma ON a.albom_id = ma.albom_id 
JOIN genres_musicians gm ON ma.musician_id  = gm.musician_id  
GROUP BY a.name ,gm.musician_id
HAVING COUNT(gm.musician_id) > 1;

SELECT t.name FROM treks t 
LEFT JOIN collection_trek ct ON t.trek_id  = ct.trak_id 
WHERE ct.trak_id IS NULL

SELECT m.name  FROM musicians m 
JOIN musicians_alboms ma ON m.musician_id = ma.musician_id 
JOIN treks t ON ma.albom_id = t.albom_id 
GROUP BY  m.name, t.time  
HAVING t.time = (select min(t2.time) from treks t2); 

SELECT a.name, COUNT(t.albom_id)  from alboms a 
JOIN treks t ON a.albom_id = t.albom_id
GROUP BY a.name 
HAVING COUNT(t.albom_id) = (SELECT COUNT(t.trek_id) FROM treks t 
							 GROUP BY t.albom_id 
							 ORDER BY COUNT(t.trek_id) ASC
							 LIMIT 1)
;
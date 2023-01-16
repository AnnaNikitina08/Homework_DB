SELECT name,  COUNT(id_genre) FROM genre gn
JOIN genreperformer g on g.id_genre = gn.id
GROUP BY gn.name
ORDER BY COUNT(*) DESC

SELECT COUNT(production_year) FROM album a
JOIN track t ON t.album_id = a.id
WHERE production_year BETWEEN '2019-01-01' AND '2020-12-31';

SELECT title, AVG(lenghs) FROM album a
JOIN track t ON t.album_id = a.id
GROUP by title
ORDER BY COUNT(*) DESC;

SELECT name FROM performer p 
JOIN albumperformer a ON p.id = a.id_performer 
JOIN album a2 ON a.id_album = a2.id 
WHERE name NOT IN (SELECT name FROM performer p
WHERE production_year BETWEEN '2020-01-01' AND '2020-12-31');

SELECT names, name FROM collection c 
JOIN collectiontrack c2 ON c.id = c2.id_collection 
JOIN track t ON c2.id_track = t.id 
JOIN album a ON t.album_id = a.id 
JOIN albumperformer a2 ON a.id = a2.id_album 
JOIN performer p ON a2.id_performer = p.id 
WHERE name = 'Boney M'

SELECT titles, genre_name FROM album a 
JOIN albumperformer a2 ON a.id = a2.id_album 
JOIN performer p ON a2.id_performer = p.id 
JOIN genreperformer g ON p.id = g.id_performer 
JOIN genre g2 ON g.id_genre = g2.id
GROUP BY genre_name, titles
HAVING COUNT(*) > 1;

SELECT title FROM track t 
LEFT JOIN collectiontrack c ON t.id = c.id_track 
WHERE c.id_track IS  NULL 

SELECT name, lenghs FROM performer p 
JOIN albumperformer a ON p.id = a.id_performer 
JOIN album a2 ON a.id_album = a2.id 
JOIN track t ON a2.id = t.album_id 
WHERE lenghs = (SELECT MIN(lenghs) FROM track)

SELECT titles FROM album a 
LEFT JOIN track t ON a.id = t.album_id 
GROUP by titles
HAVING count(title) =
(SELECT count(title) FROM album a 
LEFT JOIN track t ON a.id = t.album_id 
GROUP by titles
ORDER BY count(title) ASC
LIMIT 1)


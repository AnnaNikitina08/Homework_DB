SELECT name,  COUNT(id_genre) FROM genre gn
JOIN genreperformer g on g.id_genre = gn.id
GROUP BY gn.name
ORDER BY COUNT(*) DESC

SELECT COUNT(production_year) FROM album a
JOIN track t ON t.album_id = a.id
WHERE production_year BETWEEN '2019-01-01' AND '2020-12-31';

SELECT title, AVG(lenghs) from album a
JOIN track t ON t.album_id = a.id
GROUP by title
ORDER BY COUNT(*) desc;

select name from performer p 
join albumperformer a on p.id = a.id_performer 
join album a2 on a.id_album = a2.id 
where production_year not BETWEEN '2020-01-01' AND '2020-12-31';

select names, name from collection c 
join collectiontrack c2 on c.id = c2.id_collection 
join track t on c2.id_track = t.id 
join album a on t.album_id = a.id 
join albumperformer a2 on a.id = a2.id_album 
join performer p on a2.id_performer = p.id 
where name = 'Boney M'

select titles, genre_name from album a 
join albumperformer a2 on a.id = a2.id_album 
join performer p on a2.id_performer = p.id 
join genreperformer g on p.id = g.id_performer 
join genre g2 on g.id_genre = g2.id
GROUP BY genre_name, titles
having COUNT(*) > 1;

select title from track t 
left Join collectiontrack c on t.id = c.id_track 
where c.id_track is  NULL 

select name, lenghs from performer p 
join albumperformer a on p.id = a.id_performer 
join album a2 on a.id_album = a2.id 
join track t on a2.id = t.album_id 
WHERE lenghs = (SELECT MIN(lenghs) FROM track)

select titles, COUNT(*) as c from album a 
left join track t on a.id = t.album_id 
GROUP by titles
ORDER BY c ASC
limit 1


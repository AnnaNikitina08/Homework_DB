SELECT title, production_year FROM album
WHERE production_year >= '2018-01-01';

SELECT title, lenghs FROM track 
ORDER BY  lenghs DESC
LIMIT 1;

SELECT title, lenghs FROM track 
WHERE lenghs >= 3.5;

SELECT name FROM collection 
WHERE production_year BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name FROM performer 
WHERE name NOT LIKE'% %';

SELECT title FROM track 
WHERE title LIKE '%way%';
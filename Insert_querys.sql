INSERT INTO genre (name, description) VALUES
('Rock musik', 'Rock band culture'),
('Jazz', 'Improvisation'),
('Disco', 'Electric syntethesizers'),
('Country', 'Acoustic guitar'),
('Classical', 'Symphony and concerto');

SELECT * FROM genre

INSERT INTO performer (name, nickname) VALUES
('Led Zeppelin', null),
('Donna Summer', null),
('Bethoven', null),
('Davison', 'Wild Bill'),
('Mozart', null)
('Garth Brooks', null),
('Boney M', null),
('Armstrong', null);

SELECT * FROM performer

INSERT INTO  genreperformer (id_genre, id_performer) VALUES
(1, 1),
(2, 5),
(3, 4),
(4, 11),
(5, 8),
(5, 10),
(3, 12),
(2, 13);

SELECT * FROM genreperformer

INSERT INTO album (title, production_year) VALUES
('Wole Lotta Rock', '03/11/2018'),
('Icon', '11/10/2013'),
('Solo Flight', '01/02/1991'),
('Greatest hits', '25/06/1985'),
('Night music', '06/03/1979'),
('Fun', '15/09/2009'),
('Oceans of fantasy', '05/07/1979'),
('Porgy and Bess', '14/01/1959');

SELECT * FROM album

INSERT INTO albumperformer (id_album, id_performer) VALUES
(1, 1),
(3, 4),
(4, 5),
(5, 8),
(6, 10),
(7, 11),
(8, 12),
(9, 12);

SELECT * FROM albumperformer 

INSERT INTO collection (name, production_year) VALUES
('Rock 2022', '20/12/2022'),
('Greatest Hits', '11/10/2022'),
('Classical music, the best', '12/07/2019'),
('All that jazz', '17/08/2021'),
('Christmas Hits', '25/12/218'),
('All you need is love', '09/09/2006'),
('Guitar Tracks', '11/01/2008'),
('I love pop music', '17/03/1995');

SELECT * FROM collection 

INSERT INTO track (title, lenghs, album_id) VALUES
('That is the way', 3.04, 1),
('Going to California', 3.33, 1),
('Hot Staff', 3.17, 3),
('Last dance', 4.55, 3),
('Blue room', 3.18, 4),
('Monday Date', 4.02, 4),
('Symphony N 5',7.25, 5),
('Egmont Overture', 8.20, 5),
('Serenade', 7.48, 6),
('Menuet', 2.62, 6),
('All day long', 3.04, 7),
('Dive bar', 2.33, 7),
('Bahama mama', 3.33, 8),
('Bye bay bluebird', 4.47, 8),
('Sammertime', 4.58, 9),
('Buzzard Song', 2.58, 9)

SELECT * FROM track

INSERT INTO collectiontrack (id_collection, id_track) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 5),
(4, 6),
(4, 11),
(4, 12),
(5, 1),
(5, 4),
(5, 5),
(5, 9),
(6, 2),
(6, 3),
(6, 15),
(7, 5),
(7, 6),
(7, 16),
(8, 3),
(8, 4),
(8, 13),
(8, 14);

SELECT * FROM collectiontrack 

UPDATE album
SET production_year = '03/11/2018'
WHERE id = 1;
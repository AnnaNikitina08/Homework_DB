CREATE TABLE IF NOT EXISTS Performer (
    id SERIAL PRIMARY KEY,
    name VARCHAR (60) NOT NULL,
    nickname VARCHAR (60)
);

CREATE TABLE IF NOT EXISTS Genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR (60) NOT NULL,
    description text
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
    id SERIAL PRIMARY KEY,
    id_genre INTEGER NOT NULL REFERENCES Genre(id),
    id_performer INTEGER NOT NULL REFERENCES Performer(id)
);

CREATE TABLE IF NOT EXISTS Album (
    id SERIAL PRIMARY KEY,
    title VARCHAR (60) NOT NULL,
    production_year date NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumPerformer (
    id SERIAL PRIMARY KEY,
    id_album INTEGER NOT NULL REFERENCES Album(id),
    id_performer INTEGER NOT NULL REFERENCES Performer(id)
);       

CREATE TABLE IF NOT EXISTS Track (
    id SERIAL PRIMARY KEY,
    title VARCHAR (60) NOT NULL,
    lenghs INTEGER NOT NULL,
    id_album INTEGER NOT NULL REFERENCES Album(id)
);
 
 CREATE TABLE IF NOT EXISTS Collection (
    id SERIAL PRIMARY KEY,
    name VARCHAR (60) NOT NULL,
    production_year date NOT NULL
);

 create TABLE IF NOT exists Collectiontrack (
    id SERIAL PRIMARY KEY,
    id_collection INTEGER NOT NULL REFERENCES Collection(id),
    id_track INTEGER NOT NULL REFERENCES Track(id)
);

        
 
 
create table if not exists Performer (
        id SERIAL primary key,
        name VARCHAR (60) not null,
        nickname VARCHAR (60)
);

create table if not exists Genre (
        id SERIAL primary key,
        name VARCHAR (60) not null,
        description text
);

create table if not exists GenrePerformer (
        id SERIAL primary key,
        id_genre INTEGER not null references Genre(id),
        id_performer INTEGER not null references Performer(id)
);

create table if not exists Album (
        id SERIAL primary key,
        title VARCHAR (60) not null,
        production_year date not null
);

create table if not exists AlbumPerformer (
        id SERIAL primary key,
        id_album INTEGER not null references Album(id),
        id_performer INTEGER not null references Performer(id)
);       

create table if not exists Track (
        id SERIAL primary key,
        title VARCHAR (60) not null,
        lenghs INTEGER not null,
        id_album INTEGER NOT NULL REFERENCES Album(id)
);
 
 create table if not exists Collection (
        id SERIAL primary key,
        name VARCHAR (60) not null,
        production_year date not null
);

create table if not exists CollectionTrack (
        id SERIAL primary key,
        id_track INTEGER NOT NULL REFERENCES Track(id),
        id_collection INTEGER NOT NULL REFERENCES Track
);

        
 
 
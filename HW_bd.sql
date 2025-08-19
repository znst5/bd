create table Genre (
GID SERIAL primary key,
Name VARCHAR(40) not null
);

create table Artist (
AID SERIAL primary key,
Name VARCHAR(80) not null
);

create table Album (
AlbumID SERIAL primary key,
Name VARCHAR(80) not null,
Year date not null
);

create table Collection (
CID SERIAL primary key,
Name VARCHAR(80) not null,
Year date not null
);

create table Treck (
TID SERIAL primary key,
Name VARCHAR(80) not null,
Duration time not null,
AlbumID integer not null references Album(AlbumID)
);

create table GenreArtist (
GenreID integer references Genre(GID),
ArtistID integer references Artist(AID),
constraint ga primary key (GenreID, ArtistID)
);

create table AlbumArtist (
AlbumID integer references Album(AlbumID),
ArtistID integer references Artist(AID),
constraint aa primary key (AlbumID, ArtistID)
);

create table CollectionTreck (
TreckID integer references Treck(TID),
CollectionID integer references Collection(CID),
constraint tc primary key (TreckID, CollectionID)
);












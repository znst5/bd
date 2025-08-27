
CREATE TABLE Genre (
GID SERIAL PRIMARY KEY,
Name VARCHAR(40) NOT NULL
);

CREATE TABLE Artist (
AID SERIAL PRIMARY KEY,
Name VARCHAR(80) NOT NULL
);

CREATE TABLE Album (
AlbumID SERIAL PRIMARY KEY,
Name VARCHAR(80) NOT NULL,
year integer NOT NULL
);

CREATE TABLE Collection (
CID SERIAL PRIMARY KEY,
Name VARCHAR(80) NOT NULL,
Year integer NOT NULL
);

CREATE TABLE Treck (
TID SERIAL PRIMARY KEY,
Name VARCHAR(80) NOT NULL,
Duration integer NOT NULL,
AlbumID integer NOT NULL references Album(AlbumID)
);

CREATE TABLE GenreArtist (
GenreID integer references Genre(GID),
ArtistID integer references Artist(AID),
constraint ga PRIMARY KEY (GenreID, ArtistID)
);

CREATE TABLE AlbumArtist (
AlbumID integer references Album(AlbumID),
ArtistID integer references Artist(AID),
constraint aa PRIMARY KEY (AlbumID, ArtistID)
);

CREATE TABLE CollectionTreck (
TreckID integer references Treck(TID),
CollectionID integer references Collection(CID),
constraint tc PRIMARY KEY (TreckID, CollectionID)
);





 



















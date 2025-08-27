INSERT INTO Artist(AID, name) 
VALUES(1, 'Michael Jackson'), (2, 'The Beatles'), (3, 'Nirvana'), (4, 'Scorpions'), (5, 'Dua Lipa');

select * from Artist

INSERT INTO album(AlbumID, name, year)
VALUES(1, 'Thriller', 1982), (2, 'Dangerous', 1991), (3, 'Help!', 1965), (4, 'Abbey Road', 1969), (5, 'The White Album', 1968),
(6, 'Please Please Me', 1963), (7, 'Rubber Soul', 1965), (8, 'Nevermind', 1991), (9, 'In Utero', 1993), (10, 'MTV Unplugged in New York', 1994),
(11, 'Love at First Sting', 1984), (12, 'Crazy World', 1990), (13, 'Unbreakable', 2004), (14, 'Lovedrive', 1979), (15, 'Blackout', 1982), 
(16, 'Future Nostalgia', 2020);

select * from Album

INSERT INTO Treck(TID, name, Duration, AlbumID)
VALUES(1, 'Thriller', 357, 1), (2, 'P.Y.T.', 148, 1), (3, 'Black or White', 139, 2), (4, 'Beat It', 258, 1), (5, 'Billie Jean', 297, 1), (6, 'Remember the Time', 240, 2),
(7, 'Yesterday', 123, 3), (8, 'Come Together', 260, 4), (9, 'Blackbird', 207, 5), (10, 'Twist and Shout', 152, 6), (11, 'In My Life', 148, 7),(12, 'Help!', 138, 3), 
(13, 'Smells Like Teen Spirit', 301, 8), (14, 'Come as You Are', 218, 8), (15, 'Lithium', 256, 8), (16, 'Heart-Shaped Box', 279, 9),(17, 'In Bloom', 254, 8), 
(18, 'The Man Who Sold The World', 228, 10), (19, 'Still Loving You', 386, 11), (20, 'Wind Of Change', 313, 12), (21, 'Send Me An Angel', 272, 12), 
(22, 'Maybe I Maybe You', 210, 13), (23, 'Always Somewhere', 297, 14), (24, 'When the Smoke Is Going Down', 230, 15), (25, 'Future Nostalgia', 184, 16), 
(26, 'Don''t Start Now', 183, 16), (27, 'Cool', 209, 16), (28, 'Physical', 193, 16), (29, 'Levitating', 203, 16), (30, 'Pretty Please', 194, 16);

select * from treck

INSERT INTO Genre(GID, Name)
VALUES(1, 'funk'), (2, 'disco'), (3, 'jazz'), (4, 'rhythm and blues'), (5, 'pop'), (6, 'rap'), (7, 'hard rock'), (8, 'dance rock'), (9, 'post-disco'), (10, 'R&B'), 
(11, 'dance pop'), (12, 'new jack swing'), (13, 'gospel'), (14, 'baroque-pop'), (15, 'chamber-pop'), (16, 'blues-rock'), (17, 'folk-rock'), (18, 'rock-and-roll'), 
(19, 'pop-rock'), (20, 'grunge'), (21, 'alternative rock'), (22, 'punk rock'), (23, 'acoustic rock'), (24, 'heavy metal'), (25, 'rock ballad'), (26, 'pop metal'), 
(27, 'soft rock'), (28, 'electro funk'), (29, 'synth-pop'), (30, 'nude disco'), (31, 'power pop'), (32, 'future pop'), (33, 'electro disco'), 
(34, 'space rock'), (35, 'disco pop'), (36, 'electro R&B');

select * from Genre

INSERT INTO Collection(CID, name, year)
VALUES(1, 'HIStory: Past, Present and Future, Book I', 1995), (2, 'Number Ones', 2003), (3, 'The Essential Michael Jackson', 2005), (4, 'This Is It', 2009), 
(5, 'The Ultimate Collection', 2004), (6, 'King of Pop', 2008), (7, 'The Indispensable Collection', 2013), (8, 'The Ultimate Fan Extras Collection', 1981), 
(9, 'A Collection of Beatles Oldies', 1966), (10, 'The Gold Collection', 2024), (11, 'The Diamond Celebration', 2018);

select * from collection

INSERT INTO GenreArtist(GenreID, ArtistID)
VALUES(1, 1), (1, 5), (2, 1), (3, 1), (4, 1), (5, 1), (5, 5), (6, 1), (7, 1), (7, 3), (7, 4), (8, 1), (8, 5), (9, 1), (10, 1), 
(11, 1), (12, 1), (13, 1), (14, 2), (15, 2), (16, 2), (17, 2), (18, 2), (19, 2), 
(20, 3), (21, 3), (22, 3), (23, 3), (24, 4), (25, 4), (26, 4), (27, 4), (28, 5), (29, 5), (30, 5), (31, 5), (32, 5), (33, 5), (34, 5), (35, 5), (36, 5);

INSERT INTO AlbumArtist(AlbumID, ArtistID)
VALUES(1, 1), (2, 1), (3, 2), (4, 2), (5, 2),
(6, 2), (7, 2), (8, 3), (9, 3), (10, 3),
(11, 4), (12, 4), (13, 4), (14, 4), (15, 4), (16, 5);

INSERT INTO CollectionTreck(TreckID, CollectionID)
VALUES(1, 1), (1, 2), (1, 3), (1, 4), (2, 5), (5, 1), (5, 2), (5, 3), (5, 5), (5, 6), (5, 7), (5, 8),
(7, 9), (11, 1), (11, 3), (11, 4), (11, 5), (11, 6), (13, 10);



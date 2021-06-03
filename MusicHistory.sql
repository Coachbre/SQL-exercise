﻿
--Query all of the entries in the Genre table
/*SELECT * FROM Genre; */

--Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
/*SELECT * FROM Artist
order by ArtistName; */

--Write a SELECT query that lists all the songs in the Song table and include the Artist name
/*SELECT 
s.Title,
a.ArtistName
FROM Song s
LEFT JOIN Artist a on s.ArtistId = a.Id */

--Write a SELECT query that lists all the Artists that have a Pop Album
/* SELECT distinct
--distict restricts duplicate results from showing
a.ArtistName
FROM Artist a
LEFT JOIN Album al on al.ArtistId = a.id
LEFT JOIN Genre g on al.GenreId = g.id
WHERE g.Name = 'Pop'; */

--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
/*SELECT distinct
--distict restricts duplicate results from showing
a.ArtistName
FROM Artist a
LEFT JOIN Album al on al.ArtistId = a.id
INNER JOIN Genre g on al.GenreId = g.id
WHERE g.Name = 'Rock' OR g.Name = 'Jazz';*/

--Write a SELECT statement that lists the Albums with no songs
/* SELECT 
al.Title
From Album al
LEFT JOIN Song s on s.AlbumId = al.Id
WHERE s.SongLength is NULL; */

--Using the INSERT statement, add one of your favorite artists to the Artist table.
/* INSERT INTO
Artist (ArtistName, YearEstablished)
VALUES ('Me', 2021); */

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
/*INSERT INTO 
Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
Values ('My Song', 2021, 50, 'Something', 35, 7); */

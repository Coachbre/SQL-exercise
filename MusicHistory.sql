
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
INNER JOIN Artist a on s.ArtistId = a.Id */

--Write a SELECT query that lists all the Artists that have a Pop Album
/* SELECT distinct
--distict restricts duplicate results from showing
a.ArtistName
FROM Artist a
LEFT JOIN Album al on al.ArtistId = a.id
INNER JOIN Genre g on al.GenreId = g.id
WHERE g.Name = 'Rock'; */

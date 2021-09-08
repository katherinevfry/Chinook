--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.Name AS TrackName,
a.Title AS AlbumName,
g.Name AS Genre,
m.Name AS MediaType
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN Genre g
on t.GenreId = g.GenreId
JOIN MediaType m
ON t.MediaTypeId = m.MediaTypeId

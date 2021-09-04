--SUBQUERIES

--nesting results of a query

SELECT *
FROM Artist a
JOIN ( SELECT ArtistId, [Name], MAX(Milliseconds) LongestSongLength
		FROM Track t
		JOIN Album a
		ON a.AlbumId = t.AlbumId
		GROUP BY ArtistId, [Name]) MaxSong
ON a.ArtistId = MaxSong.ArtistId
ORDER BY MaxSong.LongestSongLength DESC

--correlated subquery
SELECT a.ArtistId, 
a.name, 
(SELECT MAX(Milliseconds) LongestSongLength
		FROM Track t
		JOIN Album al
		ON al.AlbumId = t.AlbumId
		where al.ArtistId = a.ArtistId
		GROUP BY ArtistId)
FROM Artist a

--which artists have no tracks
--correlated subquery in where clause

SELECT *
FROM Artist a
WHERE NOT EXISTS(
SELECT *
		FROM Track t
		JOIN Album al
		ON al.AlbumId = t.AlbumId
		WHERE al.ArtistId = a.ArtistId
)

--regular subquery
SELECT *
FROM Artist a
WHERE ArtistId NOT IN (
SELECT ArtistId
		FROM Track t
		JOIN Album al
		ON al.AlbumId = t.AlbumId
		WHERE al.ArtistId = a.ArtistId
)
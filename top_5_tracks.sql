--top_5_tracks.sql

SELECT TOP(5) t.Name, COUNT(i.total) AS TopSong
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY TopSong DESC
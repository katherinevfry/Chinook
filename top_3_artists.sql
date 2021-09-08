--top_3_artists

SELECT TOP(3) a.Name, COUNT(i.total) as TotalSales
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
JOIN Album al
ON al.AlbumId = t.AlbumId
JOIN Artist a
ON a.ArtistId = al.AlbumId
GROUP BY a.Name
ORDER BY TotalSales desc
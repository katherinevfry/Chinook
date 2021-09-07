SELECT InvoiceId,
	t.Name AS TrackName,
	ar.Name AS ArtistName
FROM InvoiceLine il
JOIN Track t
ON il.TrackId = t.TrackId
JOIN Album al
ON al.AlbumId = t.AlbumId
JOIN Artist ar
ON ar.ArtistId = al.ArtistId
ORDER BY InvoiceId

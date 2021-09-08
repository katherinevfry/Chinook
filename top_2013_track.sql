--Provide a query that shows the most purchased track of 2013.

SELECT TOP(1) t.Name, COUNT(CASE WHEN i.InvoiceDate BETWEEN '2013-01-01 00:00:00:000' AND '2013-12-31 00:00:00:000' THEN i.Total ELSE 0 END) AS TopSong
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY TopSong DESC
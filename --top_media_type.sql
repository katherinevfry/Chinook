--top_media_type

SELECT TOP (1) m.Name, COUNT(i.Total) as TotalSales
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
JOIN MediaType m
ON m.MediaTypeId = t.MediaTypeId
GROUP BY m.Name
ORDER BY TotalSales DESC

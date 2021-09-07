--.Provide a query that includes the purchased track name with each invoice line item.

SELECT InvoiceId, [Name]
FROM InvoiceLine il
JOIN Track t
ON il.TrackId = t.TrackId
GROUP BY InvoiceId, [Name]

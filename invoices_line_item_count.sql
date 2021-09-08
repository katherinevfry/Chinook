--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId,
COUNT(il.InvoiceId) AS NumberOfLineItems
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId
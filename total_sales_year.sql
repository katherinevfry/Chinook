--What are the respective total sales for each of those years?

SELECT
    SUM(CASE WHEN InvoiceDate BETWEEN '2009-01-01 00:00:00:000' AND '2009-12-31 00:00:00:000' THEN Invoice.Total
        ELSE 0 END) Total2009,
    SUM(CASE WHEN InvoiceDate BETWEEN '2011-01-01 00:00:00:000' AND '2011-12-31 00:00:00:000' THEN Invoice.Total
        ELSE 0 END) Total2011
FROM Invoice

--8. `total_invoices_year.sql`: How many Invoices were there in 2009 and 2011?

SELECT
    COUNT(CASE WHEN InvoiceDate BETWEEN '2009-01-01 00:00:00:000' AND '2009-12-31 00:00:00:000' THEN 1
        ELSE NULL END) Invoices2009,
    COUNT(CASE WHEN InvoiceDate BETWEEN '2011-01-01 00:00:00:000' AND '2011-12-31 00:00:00:000' THEN 1
        ELSE NULL END)Invoices2011
FROM Invoice

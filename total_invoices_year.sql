--8. `total_invoices_year.sql`: How many Invoices were there in 2009 and 2011?

SELECT COUNT(*) numberOfInvoices
FROM Invoice
WHERE InvoiceDate LIKE '%2011%'
OR InvoiceDate LIKE '%2009%'


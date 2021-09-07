--country_invoices.sql: Provide a query that shows the # of invoices per country

Select BillingCountry,
	COUNT(*) as NumberOfInvoices
From Invoice
GROUP BY BillingCountry
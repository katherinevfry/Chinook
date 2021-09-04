--invoice_totals
--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.


SELECT e.FirstName Employee_FirstName, e.LastName Employee_LastName, i.Total, c.FirstName customer_FirstName, c.LastName customer_LastName, c.Country
FROM ((Customer c
JOIN Invoice i
ON i.CustomerId = c.CustomerId)
JOIN Employee e
ON c.SupportRepId = e.EmployeeId)
ORDER BY c.FirstName

--Which sales agent made the most in sales in 2009?

SELECT TOP(1) e.FirstName Employee_FirstName, e.LastName Employee_LastName, SUM(CASE WHEN i.InvoiceDate BETWEEN '2009-01-01 00:00:00:000' AND '2009-12-31 00:00:00:000' THEN i.Total ELSE 0 END) AS TotalSales
FROM Customer c
JOIN Invoice i
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
ORDER BY TotalSales DESC 

--Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName Employee_FirstName, e.LastName Employee_LastName, SUM(i.Total) AS TotalSales
FROM Customer c
JOIN Invoice i
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
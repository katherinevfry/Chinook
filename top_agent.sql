--top_agent.sql

SELECT TOP(1) e.FirstName Employee_FirstName, e.LastName Employee_LastName, SUM(i.Total) AS TotalSales
FROM Customer c
JOIN Invoice i
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
ORDER BY TotalSales DESC 
--Provide a query that shows the count of customers assigned to each sales agent.

SELECT e.FirstName Employee_FirstName, e.LastName Employee_LastName, COUNT(i.CustomerId) AS NumberOfCustomers
FROM Customer c
JOIN Invoice i
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
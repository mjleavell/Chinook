--20. `top_agent.sql`: Which sales agent made the most in sales over all?

SELECT Top 1 e.FirstName + ' ' + e.lastName as SalesAgent, SUM(i.Total) as TotalSales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.FirstName, e.LastName
ORDER BY TotalSales desc

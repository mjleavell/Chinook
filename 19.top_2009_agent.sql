--19. `top_2009_agent.sql`: Which sales agent made the most in sales in 2009? HINT: [MAX](https://docs.microsoft.com/en-us/sql/t-sql/functions/max-transact-sql)

SELECT Top 1 e.FirstName + ' ' + e.lastName as SalesAgent, SUM(i.Total) as TotalSales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE YEAR(i.InvoiceDate) = '2009'
AND e.Title = 'Sales Support Agent'
GROUP BY e.FirstName, e.LastName
ORDER BY TotalSales desc

-- Steve Johnson	164.34
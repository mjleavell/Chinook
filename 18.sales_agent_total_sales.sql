--18. `sales_agent_total_sales.sql`: Provide a query that shows total sales made by each sales support agent.

SELECT e.EmployeeId, e.FirstName as EmployeeFirstName, e.LastName as EmployeeLastName, SUM(i.Total) as TotalSales
FROM Employee e
JOIN Customer c ON c.CustomerId = e.EmployeeId
JOIN Invoice i ON  i.CustomerId = c.SupportRepId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId, e.FirstName, e.LastName

--3	Jane	Peacock	39.62
--4	Margaret	Park	39.62
--5	Steve	Johnson	39.62
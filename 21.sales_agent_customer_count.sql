--21. `sales_agent_customer_count.sql`: Provide a query that shows the count of customers assigned to each sales agent.

SELECT e.FirstName + ' ' + e.lastName as SalesAgent, COUNT(*) as NumberOfCustomers
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.FirstName, e.LastName

--Steve Johnson	18
--Margaret Park	20
--Jane Peacock	21
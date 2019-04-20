--6. `sales_agent_invoices.sql`: Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.
SELECT LastName, FirstName, InvoiceId, Title
FROM Employee, Invoice
WHERE Title = 'Sales Support Agent'
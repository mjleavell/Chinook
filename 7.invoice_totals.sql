--7. `invoice_totals.sql`: Provide a query that shows the Invoice Total, 
--Customer name, Country and Sale Agent name for all invoices and customers.
Selecte.LastName EmployeeLastName,e.FirstName EmployeeFirstName,c.LastName CustomerLastName,c.FirstName CustomerFirstName,InvoiceId,TotalFROM Employee e, Invoice i, Customer cWhere Title = 'Sales Support Agent'
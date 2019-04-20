--17. `invoices_line_item_count.sql`: Provide a query that shows all Invoices but includes the # of invoice line items.

--SELECT COUNT(il.InvoiceLineId) as NumberOfLineItems, i.*
--FROM Invoice i
--JOIN InvoiceLine il
--ON i.InvoiceId = il.InvoiceId
--GROUP BY i.InvoiceId

SELECT i.*, COUNT(il.InvoiceLineId) as NumberOfLineItems
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId, i.CustomerId, i.BillingAddress, i.BillingCity, i.BillingCountry, i.BillingPostalCode, i.BillingState, i.InvoiceDate, i.Total
--14. `country_invoices.sql`: Provide a query that shows the # of invoices per country. 

SELECT BillingCountry, COUNT(*) as TotalInvoices
FROM Invoice
GROUP BY BillingCountry

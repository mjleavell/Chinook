--9. `total_sales_year.sql`: What are the respective total sales for each of those years?
SELECT count(i.InvoiceId) as [2011TotalInvoices], sum(i.Total) as [2011TotalSales]FROM Invoice iWHERE i.InvoiceDate between '2011-01-01 00:00:00' and '2011-12-31 00:00:00'

SELECT count(i.InvoiceId) as [2009TotalInvoices], sum(i.Total) as [2009TotalSales]
FROM Invoice as i
WHERE i.InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 00:00:00'
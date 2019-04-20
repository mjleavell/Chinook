--8. `total_invoices_year.sql`: How many Invoices were there in 2009 and 2011?
--2009Select count(i.InvoiceId) as [2011TotalInvoices]From Invoice iWhere i.InvoiceDate between '2011-01-01 00:00:00' and '2011-12-31 00:00:00'
--2011
Select count(i.InvoiceId) as [2009TotalInvoices]
From Invoice as i
Where i.InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 00:00:00'

---------2009 and 2011 Combined---------------
SELECT COUNT(*)
FROM Invoice as i
WHERE i.InvoiceDate between '2009-01-01' and '2009-12-31'
OR i.InvoiceDate between '2011-01-01' and '2011-12-31'
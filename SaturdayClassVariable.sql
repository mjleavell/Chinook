--    nameOfVariable type
declare @invoiceYr int

--if you want to change the value of variable, use set or = 2013 in declar
set @invoiceYr = 2013

--combine both if you want
declare @invoiceYear int = 2013
declare @countOfTracksSoldIn2013 int

-- using @invoiceYear in solution
SELECT @countOfTracksSoldIn2013 = count(*)
FROM Track t
	JOIN InvoiceLine il
		ON il.TrackId = t.TrackId
	JOIN Invoice i 
		ON i.InvoiceId = il.InvoiceId
WHERE DATEPART(Year, i.InvoiceDate) = @invoiceYear
GROUP BY t.TrackId, t.Name
ORDER BY  t.Name

--selecting and setting a variable equal to something does the same thin
select @invoiceYear = 1234
set @invoiceYear = 1234
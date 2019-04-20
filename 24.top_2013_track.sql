--24. `top_2013_track.sql`: Provide a query that shows the most purchased track of 2013.

SELECT Top 500 t.[Name] as TrackName, COUNT(t.TrackId) as NumberOfTracksSold, t.TrackId
FROM Track t
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
WHERE YEAR(i.InvoiceDate) = 2013
GROUP BY t.TrackId, t.[Name]
ORDER BY NumberOfTracksSold DESC

---other way to solve
SELECT Top 500 t.[Name] TrackName, COUNT(*) NumberOfTracksSold
FROM InvoiceLine il
JOIN (SELECT InvoiceId FROM Invoice WHERE YEAR(InvoiceDate) = 2013) i ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.TrackId, t.[Name]
ORDER BY NumberOfTracksSold DESC

--ALL OF THEM HAVE 1 TRACK SOLD

-- ****************************BELOW IS PROOF THAT YOU HAVE TO GROUP BY TRACKID****************************
--SELECT t.[Name] TrackName, COUNT(*) NumberOfTracksSold
--FROM InvoiceLine il
--JOIN (SELECT InvoiceId FROM Invoice WHERE YEAR(InvoiceDate) = '2013') i ON il.InvoiceId = i.InvoiceId
--JOIN Track t ON t.TrackId = il.TrackId
--GROUP BY t.TrackId, t.[Name]
--ORDER BY NumberOfTracksSold DESC

/* ****************************CLASS SOLUTION**************************** */
SELECT Top 500 t.Name, count(*) as PurchaseTrackCount
FROM Track t
	JOIN InvoiceLine il
		ON il.TrackId = t.TrackId
	JOIN Invoice i 
		ON i.InvoiceId = il.InvoiceId
WHERE DATEPART(Year, i.InvoiceDate) = 2013
--WHERE i.InvoiceDate	between '1/1/2013' and '1/1/2014'
GROUP BY t.TrackId, t.Name
ORDER BY PurchaseTrackCount desc
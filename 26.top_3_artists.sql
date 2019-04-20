--26. `top_3_artists.sql`: Provide a query that shows the top 3 best selling artists.

SELECT TOP 3 art.[Name] as ArtistName, COUNT(*) TotalSales
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId 
JOIN Album alb ON alb.AlbumId = t.AlbumId
JOIN Artist art ON art.ArtistId = alb.ArtistId
GROUP BY art.[Name]
ORDER BY TotalSales DESC

--Iron Maiden	140
--U2	107
--Metallica	91
--25. `top_5_tracks.sql`: Provide a query that shows the top 5 most purchased songs.

SELECT Top 10 t.Name as TrackName, COUNT(t.TrackId) as NumberOfTracksSold
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY NumberOfTracksSold desc

-- if you do it by name, you get dazed and confused with 5 because it is on multiple led zeppelin albums
--if you do it by t.trackId then you get a bunch with 2

SELECT Top 10 t.Name as TrackName, COUNT(t.TrackId) as NumberOfTracksSold
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.TrackId
ORDER BY NumberOfTracksSold desc

--PROOF OF MULTIPLE INSTANCES
--select t.TrackId, t.Name, alb.Title, art.Name
--from track t
--join Album alb ON alb.AlbumId = t.AlbumId
--join Artist art on art.ArtistId = alb.ArtistId
--Where t.Name = 'Dazed and Confused'
--Group by t.Name, t.TrackId, alb.Title, art.Name
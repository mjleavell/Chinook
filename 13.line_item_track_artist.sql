--13. `line_item_track_artist.sql`: Provide a query that includes the purchased track name AND 
--artist name with each invoice line item.

SELECT il.InvoiceLineId, t.[Name] as 'Track Name', art.[Name] as 'Artist Name'
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album alb ON alb.AlbumId = t.AlbumId
JOIN Artist art ON art.ArtistId = alb.ArtistId

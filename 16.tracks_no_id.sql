--16. `tracks_no_id.sql`: Provide a query that shows all the Tracks, but displays no IDs. 
--The result should include the Album name, Media type and Genre.

SELECT t.[Name] as TrackName, alb.Title as AlbumName, mt.[Name] as MediaType, g.[Name] as Genre
FROM Track t, Album alb, MediaType mt, Genre g
WHERE t.AlbumID = alb.AlbumId
AND t.MediaTypeId = mt.MediaTypeId
AND t.GenreId = g.GenreId
ORDER BY alb.Title
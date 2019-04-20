--15. `playlists_track_count.sql`: Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resulant table.

SELECT p.[Name] as 'Playlist Name', Count(pt.TrackId) as 'Number of Tracks'
FROM Playlist p, PlaylistTrack pt 
WHERE p.PlayListId = pt.PlayListId 
GROUP BY p.[Name]

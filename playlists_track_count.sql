--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.

Select [Name],
COUNT(TrackId) AS NumnerOfTracks
From Playlist p
JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
GROUP BY [Name]

SELECT PlaylistTrack.PlaylistId, COUNT(TrackId), Playlist.Name
FROM PlaylistTrack
JOIN Playlist ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY PlaylistTrack.PlaylistId
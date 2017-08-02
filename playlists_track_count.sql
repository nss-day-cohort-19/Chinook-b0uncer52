SELECT Count(t.PlaylistId) as "Track Count", p.Name as "Playlist"
FROM Playlist p
LEFT JOIN PlaylistTrack t
ON t.PlaylistId = p.PlaylistId
GROUP BY t.PlaylistId

SELECT t.Name as "Track", ar.Name as "Artist"
FROM InvoiceLine l
LEFT JOIN Track t
ON t.TrackId = l.TrackId
LEFT JOIN Album a
ON t.AlbumId = a.AlbumId
LEFT JOIN Artist ar
ON ar.ArtistId = a.ArtistId

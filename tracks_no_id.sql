SELECT t.name as "Track", a.title as "Album", g.name as "Genre", m.name as "Media"
FROM Track t
LEFT JOIN Album a
ON t.albumId = a.albumId
LEFT JOIN MediaType m
ON m.mediaTypeId = t.mediaTypeId
LEFT JOIN Genre g
ON g.genreId = t.genreId


SELECT Track.Name as TrackName, Album.Title, Genre.Name as GenreName, MediaType.Name as MediaTypeName
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Track.GenreId = Genre.GenreId

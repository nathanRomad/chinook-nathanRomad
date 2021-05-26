SELECT InvoiceId, InvoiceLineId, Track.Name as TrackName, Artist.Name as ArtistName
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN Artist ON Artist.ArtistId = Album.ArtistId

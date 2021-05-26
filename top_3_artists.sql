------------NATE----------
SELECT Artist.Name as Artist, COUNT(*) as TotalTracks
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY TotalTracks DESC
LIMIT 3

---------CALEB---------
SELECT Artist.name as Artist, SUM(InvoiceLine.UnitPrice) as Sales
FROM InvoiceLine
    INNER JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    INNER JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId
    INNER JOIN Album
    ON Album.AlbumId = Track.AlbumId
    INNER JOIN Artist
    ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist
ORDER BY Sales DESC
LIMIT 3



---------BLU--------
select

	artist.name,
	count(*) as totalTracks

from invoiceLine

join track on track.TrackId = InvoiceLine.TrackId 
join album on album.albumId = track.AlbumId
join artist on artist.ArtistId = album.ArtistId

group by artist.ArtistId

order by totalTracks DESC
limit 3


----------AMART----------
With TrackCounts AS (
    Select COUNT(InvoiceLineId) TotalSales, TrackId
    FROM InvoiceLine
    GROUP BY TrackId
)


SELECT SUM(tc.TotalSales) TotalSales, Artist.Name
FROM TrackCounts tc
JOIN Track ON Track.TrackId = tc.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.Artistid = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY TotalSales DESC
LIMIT 3
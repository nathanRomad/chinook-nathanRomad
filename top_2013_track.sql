-- Provide a query that shows the most purchased track of 2013.

SELECT COUNT(Track.TrackId) as TrackCount, Track.Name as TrackName
FROM Track
INNER JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
GROUP BY Track.TrackId
ORDER BY TrackCount ASC
LIMIT 1

--------------------- CALEB
SELECT COUNT(track.TrackId) as TCount, track.name
FROM InvoiceLine
    INNER JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    INNER JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId 
WHERE InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
Group BY track.TrackId
ORDER BY TCount DESC
LIMIT 1

-------------------------------
SELECT COUNT(InvoiceLine.InvoiceId) as TrackCount, Track.Name as TrackName, Track.TrackId
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Track.TrackId
ORDER BY TrackCount DESC
LIMIT 5


---------CALEB----------
SELECT COUNT(InvoiceId) as InvoiceCount, TrackId
FROM InvoiceLine
GROUP BY TrackId
ORDER BY InvoiceCount DESC
LIMIT 5

-------BLU---------
select

	track.Name as trackName,
	count(*) as totalTracks,
    track.trackId

from InvoiceLine

join track on track.TrackId = InvoiceLine.TrackId

group by InvoiceLine.TrackId
order by totalTracks desc
limit 5

-------------AMART-----------
With TrackCounts AS (
    Select COUNT(InvoiceLineId) TotalSales, TrackId
    FROM InvoiceLine
    GROUP BY TrackId
)
SELECT tc.TotalSales TotalSales, t.Name
FROM TrackCounts tc
JOIN Track t ON tc.TrackId = t.TrackId
ORDER BY TotalSales DESC
LIMIT 5
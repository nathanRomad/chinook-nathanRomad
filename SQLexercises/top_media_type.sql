SELECT MediaType.Name, COUNT(InvoiceLine.InvoiceLineId) as SalesCount
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name
ORDER BY SalesCount DESC
LIMIT 1



----------BLU------------
select typeName, max(totalTracks) 
FROM (
select
	MediaType.name as typeName,
	count(*) as totalTracks
from invoiceLine
join track on track.TrackId = InvoiceLine.TrackId 
join MediaType on MediaType.MediaTypeId = track.MediaTypeId
group by MediaType.Name
order by totalTracks DESC
)

---------CALEB-----------
SELECT COUNT(InvoiceLine.InvoiceLineId) as SalesCount, MediaType.Name
FROM MediaType
    INNER JOIN Track
    ON Track.MediaTypeId = MediaType.MediaTypeId
    INNER JOIN InvoiceLine
    ON InvoiceLine.TrackId = Track.TrackId
GROUP BY MediaType.Name
ORDER BY SalesCount DESC
LIMIT 1

-----------AMART----------
With TrackCounts AS (
    Select COUNT(InvoiceLineId) TotalSales,
        TrackId
    FROM InvoiceLine
    GROUP BY TrackId
),
MediaTypeSales AS (
    SELECT SUM(tc.TotalSales) TotalSales,
        mt.Name Name
    FROM TrackCounts tc
        JOIN Track t on t.TrackId = tc.TrackId
        JOIN MediaType mt ON mt.MediaTypeid = t.MediaTypeId
    GROUP BY mt.Name
)

SELECT MAX(TotalSales) TotalSales, Name
FROM MediaTypeSales
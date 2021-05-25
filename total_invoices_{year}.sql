SELECT COUNT (InvoiceId)
FROM Invoice
WHERE InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31"
OR InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31"

SELECT COUNT(InvoiceId) as "Sales",
    STRFTIME("%Y", InvoiceDate) as "Year"
FROM Invoice
WHERE InvoiceDate LIKE "%2009%"
    OR InvoiceDate LIKE "%2011%"
GROUP BY STRFTIME("%Y", InvoiceDate)
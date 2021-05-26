-- SELECT SUM (Total)
-- FROM Invoice
-- WHERE InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31"
-- OR InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31"
-- GROUP BY strftime ('%Y', InvoiceDate)


-- SELECT SUM (Total)
-- FROM Invoice
-- WHERE strftime ( '%Y', InvoiceDate ) = '2009' OR strftime ( '%Y', InvoiceDate ) = '2011'
-- GROUP BY strftime ( '%Y', InvoiceDate )


select
    strftime("%Y", InvoiceDate) as iYear,
    sum(total)
from invoice
where
    iYear = "2009"
    OR
    iYear = "2011"
group by iYear
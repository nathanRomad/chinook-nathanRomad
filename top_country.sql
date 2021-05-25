SELECT SUM(Total) AS TotalSales, Customer.CustomerId, BillingCountry
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
ORDER BY SumTotal

-----------------
WITH TotalSales AS (
    SELECT SUM(Total) Total,
        BillingCountry Country
    FROM Invoice
    GROUP BY BillingCountry
)
SELECT '$' || MAX(Total) "Grand Total", Country
FROM TotalSales

----------------
SELECT
    SUM(Total) as TotalSales,
    *
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalSales DESC
LIMIT 1
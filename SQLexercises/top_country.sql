SELECT BillingCountry, '$'|| MAX(ROUND(TotalSales, 2))
FROM (
SELECT BillingCountry, SUM(Total) AS TotalSales
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
GROUP BY BillingCountry
ORDER BY TotalSales DESC
)
-----------------

SELECT BillingCountry, '$'||ROUND(TotalSales, 2)
FROM (
SELECT BillingCountry, SUM(Total) AS TotalSales
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
GROUP BY BillingCountry
ORDER BY TotalSales DESC
LIMIT 1
)

-------------AMART--------------
WITH TotalSales AS (
    SELECT SUM(Total) Total,
        BillingCountry Country
    FROM Invoice
    GROUP BY BillingCountry
)
SELECT '$' || MAX(Total) "Grand Total", Country
FROM TotalSales

----------------
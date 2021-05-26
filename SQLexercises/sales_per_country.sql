SELECT BillingCountry, ROUND(Total, 2)
FROM(
SELECT BillingCountry, SUM(Total) AS Total
FROM Invoice
GROUP BY BillingCountry
)
-- SELECT MAX(Total), EmployeeName
-- FROM (SELECT Employee.FirstName ||' '||Employee.LastName as EmployeeName, SUM(Total) as Total
-- FROM Employee
-- JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
-- JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
-- WHERE InvoiceDate
-- GROUP BY Customer.SupportRepId)

-- SELECT "Sales Rep" "Top Sales Rep",
--     MAX("Number Of Sales") "Number Of Sales"
-- FROM (
--         SELECT COUNT(i.InvoiceId) "Number Of Sales",
--             e.FirstName || ' ' || e.LastName "Sales Rep"
--         FROM Invoice i
--             JOIN Customer c ON i.CustomerId = c.CustomerId
--             JOIN Employee e ON e.EmployeeId = c.SupportRepId
--         GROUP BY "Sales Rep"
--     )

SELECT
    SalesAgent,
    Max(TotalSales) as OverallMaxSales
FROM (
    SELECT
        e.FirstName || " " || e.LastName as SalesAgent,
        sum(i.total) as TotalSales
    FROM employee e
    JOIN Customer c on c.supportrepid = e.EmployeeId
    JOIN invoice i on i.customerid = c.customerid
)
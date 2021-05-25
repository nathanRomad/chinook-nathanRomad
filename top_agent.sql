SELECT MAX(Total), EmployeeName
FROM (SELECT Employee.FirstName ||' '||Employee.LastName as EmployeeName, SUM(Total) as Total
FROM Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE InvoiceDate
GROUP BY Customer.SupportRepId)
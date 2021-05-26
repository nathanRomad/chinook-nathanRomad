SELECT MAX(Total), FirstName, LastName
FROM (SELECT Employee.FirstName as FirstName, Employee.LastName as LastName, SUM(Total) as Total
FROM Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
GROUP BY Customer.SupportRepId)
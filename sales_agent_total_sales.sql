SELECT SUM(Total), Employee.FirstName, Employee.LastName
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUp BY Employee.EmployeeId
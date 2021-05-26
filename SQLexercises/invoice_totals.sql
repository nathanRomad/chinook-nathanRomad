SELECT Invoice.Total, Invoice.BillingCountry, Customer.FirstName ||' '|| Customer.LastName AS CustomerName , Employee.FirstName as EmployeeFirstName, Employee.LastName as EmployeeLastName
FROM Customer
JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Invoice.Total ASC

SELECT Invoice.Total, Invoice.BillingCountry, Customer.FirstName, Customer.LastName, Employee.FirstName, Employee.LastName
FROM Customer
JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Invoice.Total ASC

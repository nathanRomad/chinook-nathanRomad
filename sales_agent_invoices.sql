SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId, Invoice.CustomerId, Invoice.InvoiceDate
FROM Customer
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
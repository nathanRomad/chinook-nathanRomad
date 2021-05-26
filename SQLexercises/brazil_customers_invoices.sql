SELECT FirstName, LastName, BillingCountry, InvoiceId, InvoiceDate
FROM Invoice
INNER JOIN Customer
ON Invoice.CustomerId = Customer.CustomerId
WHERE BillingCountry= "Brazil"
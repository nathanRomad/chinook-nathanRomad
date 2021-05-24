SELECT FirstName, LastName, BillingCountry, InvoiceId, InvoiceDate
FROM Invoice
INNER JOIN Customer
WHERE BillingCountry="Brazil"
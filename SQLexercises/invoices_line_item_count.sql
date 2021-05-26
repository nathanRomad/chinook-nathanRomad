SELECT Invoice.*, COUNT (InvoiceLine.InvoiceLineId)
FROM Invoice
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId
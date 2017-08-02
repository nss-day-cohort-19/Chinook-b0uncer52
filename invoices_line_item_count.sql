SELECT Count(*), i.InvoiceId as "ID"
FROM Invoice i
LEFT JOIN InvoiceLine l
ON i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId;
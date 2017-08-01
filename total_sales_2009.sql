SELECT Sum(i.Total)
FROM Invoice i
WHERE i.InvoiceDate LIKE '%2011%';
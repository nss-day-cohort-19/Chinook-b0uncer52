SELECT Count(*), BillingCountry
FROM Invoice
GROUP BY BillingCountry;
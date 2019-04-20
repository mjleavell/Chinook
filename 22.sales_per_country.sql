--22. `sales_per_country.sql`: Provide a query that shows the total sales per country.
--By customer's country?
SELECT c.Country, SUM(i.Total) as TotalSales
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
GROUP BY c.Country

--or is it by billing country
SELECT BillingCountry, SUM(Total) as TotalSales
FROM Invoice
GROUP BY BillingCountry
--23. `top_country.sql`: Which country's customers spent the most?

SELECT Top 1 BillingCountry, SUM(Total) as TotalSales
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalSales desc
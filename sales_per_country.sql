--Provide a query that shows the total sales per country.


Select BillingCountry,
SUM(Total) AS SalesTotal
from Invoice
Group By BillingCountry
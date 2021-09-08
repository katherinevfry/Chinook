--top_country.sql: Which country's customers spent the most?

Select TOP(1) BillingCountry,
SUM(Total) AS SalesTotal
from Invoice
Group By BillingCountry
ORDER BY SalesTotal DESC
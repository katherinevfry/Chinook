--non_usa_customers
SELECT *
FROM Customer
WHERE NOT Country = 'USA'
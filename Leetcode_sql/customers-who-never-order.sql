SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o ON o.customerID = c.id
WHERE o.customerID IS NULL;

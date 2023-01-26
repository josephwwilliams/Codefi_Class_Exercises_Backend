SELECT * FROM customers;

SELECT address, city, postalcode, country FROM customers;

SELECT * FROM customers WHERE country = "USA" AND city = "Portland";

SELECT * FROM products WHERE price < 50 ORDER BY price DESC;

SELECT orders.OrderID, customers.CustomerName, orders.OrderDate FROM orders INNER JOIN customers ON orders.CustomerID = customers.CustomerID
#Write an SQL query to show the total payment amount for each payment date from payments table.

USE salesdb;
SELECT paymentDate, SUM(amount) AS total_payment
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate;


#Sort the results by payment date in descending order.

USE salesdb;
SELECT paymentDate, SUM(amount) AS total_amount_paid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC;

#Show only the top 5 latest payment dates.

USE salesdb;
SELECT paymentDate 
FROM payments
ORDER BY paymentDate DESC
LIMIT 5;

#Write an SQL query to find the average credit limit of each customer from customers table.

USE salesdb;
SELECT AVG(creditLimit) AS AveragecreditLimit
FROM customers;

#Display the customer name, country, and the average credit limit.

USE salesdb;
SELECT customerName, country, AVG(creditLimit) AS AverageCreditLimit
FROM customers
GROUP BY customerName, country;

#Write an SQL query to find the total price of products ordered from orderdetails table.

USE salesdb;
SELECT SUM(PriceEach * QuantityOrdered) AS TotalPrice
FROM orderdetails;

#Display the product code, quantity ordered, and the total price for each product.

USE salesdb;
SELECT Productcode, QuantityOrdered, (PriceEach * QuantityOrdered) AS TotalPrice
FROM orderdetails;

#Group the results by product code and quantity ordered.

USE salesdb;
SELECT Productcode, QuantityOrdered, SUM(PriceEach * QuantityOrdered) AS TotalPrice
FROM orderdetails
GROUP BY Productcode, QuantityOrdered;

#Write an SQL query to find the highest payment amount for each check number from payments table.

USE salesdb;
SELECT checkNumber, MAX(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;

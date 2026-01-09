SHOW TABLEs;
SELECT * from customers;
SELECT * froM employees;
SELECT * FROM products;
SELECT * FROM sales;
SELECT * FROM departments;
SELECT * FROM orders;

---- Question 1: Retrieve Employee Details Retrieve all employees whose salary is greater than 60000. ---
SELECT AVG(salary)
FROM employees;

SELECT name, salary FROM employees WHERE salary >= 60000;

--- Question 2: Find Total Sales Per Customer; calculate the total sales amount for each customer from the sales table.---
SELECT customer_id, SUM(amount) AS Total_sales FROM sales GROUP BY customer_id;

--- Question 3: Employee Salary in Finance Department; Retrieve the names and salaries of all employees working in the 'Finance' department. --
SELECT e.name, e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';

--- Question 4: Total Sales on a Specific Date: Find the total sales amount made on '2023-03-17'.
SELECT SUM(amount) as Total_sales
FROM sales
WHERE sale_date = '2023-03-17';

--- Question 5: High-Value Orders: Get the names of customers who have placed an order of more than 600.
SELECT customer_name
FROM orders
WHERE order_amount > 600;
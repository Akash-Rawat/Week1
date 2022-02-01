--1) Oracle Select Query(used to fetch reocords from database)
SELECT * FROM customers;

--2) Oracle insert query
INSERT INTO customers VALUES(619, 'rahul', 'delhi','http://www.rahul.com',2000);
INSERT INTO customers(CUSTOMER_ID,NAME,ADDRESS,WEBSITE,credit_limit) VALUES (567, 'raahul', 'delhi','http://www.rahul.com',2000);

--3)Oracle Update Query
UPDATE customers SET name='Akki',address='London' Where name='rahul';
--reviewing the change
SELECT * FROM customers WHERE name='Akki';

--4)Oracle Delete Query
DELETE FROM customers WHERE customer_id=567;

--5)Oracle Truncate Query(delets all the rows from table)
TRUNCATE TABLE customers;

--6)Oracle Drop Query(Deletes entire table along with columns)
DROP TABLE customer;

--7)Oracle Create Query
CREATE TABLE my_table
    (id number(10) NOT NULL,
    name VARCHAR2(50) NOT NULL,
    city VARCHAR(50),
    CONSTRAINT my_table_pk PRIMARY KEY(id)
    );
    
--8)Oracle Alter Query
ALTER TABLE 
    my_Table
ADD age varchar2(50); 

--9) Oracle Select Statement
SELECT customer_id,name,website FROM customers WHERE address='London';

--10)Selecting specific fields
SELECT
    name
FROM 
    customers 
WHERE
    credit_limit>3000
ORDER BY 
    name;

--for in descending order
SELECT
    name
FROM 
    customers 
WHERE
    credit_limit>3000
ORDER BY 
    name DESC;

ALTER TABLE my_table DROP COLUMN age;
--11)Inserting into one table by another

INSERT INTO
    my_table(id, name, city)
SELECT 
    customer_id,name,address
FROM 
    customers
WHERE 
    credit_limit<1000;

--reviewing changes
SELECT id, name, city FROM my_Table;

--12)Distinct(Shows values without duplicates)
SELECT  DISTINCT credit_limit FROM customers WHERE credit_limit>3000; 

--13)GROUP BY
SELECT 
    credit_limit 
FROM 
    customers 
WHERE 
    credit_limit>3000 
GROUP BY 
    credit_limit;

--14)Having
SELECT 
    name,sum(credit_limit) 
AS 
    "Total_Credit"
FROM
    customers
GROUP BY
    name
HAVING 
    SUM(credit_limit)<1000;

--15)Count
SELECT 
    name, COUNT(*) 
AS 
    "total_customers"
FROM 
    customers
WHERE 
    credit_limit>3000
GROUP BY
    name
HAVING 
    count(*)>=1;


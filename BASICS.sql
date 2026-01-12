# Q1.Create a New Database and  Table for Employees.

CREATE DATABASE company_db;
use company_db;
create table employees
(employee_id int primary key ,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary int,
hire_date date);


# Q2.Insert Data into Employees Table.

INSERT INTO  EMPLOYEES
( EMPLOYEE_ID, FIRST_NAME , LAST_NAME,
 DEPARTMENT , SALARY , HIRE_DATE)
 VALUES 
       (101 , 'Amit' , 'Sharma' , 'HR' ,50000 , '2020-01-15'),
       (102 , 'Riya' , 'Kapoor' , 'Sales' ,  75000 , '2019-03-22'),
       (103 , 'Raj' , 'Mehta' , 'IT' , 90000 , '2018-07-11'),
       (104 , 'Neha' , 'Verma' , 'IT', 85000, '2021-09-01'),
	   (105 , 'Arjun', 'Singh' , 'Finance', 60000, '2022-02-10');
       

# Q3.Display All Employee Records Sorted by Salary (Lowest to Highest)

select * from employees
order by salary asc;


# Q4.Show Employees Sorted by Department (A–Z) and Salary (High → Low)

select * from employees
order by department asc ,
salary desc;


#Q4. List All Employees in the IT Department, Ordered by Hire Date (Newest First).

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT = 'IT'
ORDER BY HIRE_DATE ASC;

# Q6. Create and Populate a Sales Table
#Task: Create a table to track sales data.

CREATE TABLE SALES
(sale_id int , customer_name varchar(50),
amount int , sale_date date);

INSERT INTO SALES
(sale_id, 
customer_name , 
amount, 
sale_date)
VALUES
	  (1 , 'Aditi', 1500 , '2024-08-01'),
      (2 , 'Rohan' , 2200 , '2024-08-03'),
      (3 , 'Aditi' , 3500 , '2024-09-05'),
	  (4 , 'Meena' , 2700 , '2024-09-15'),
      (5 , 'Rohan' , 4500 , '2024-09-25');
      
# Q7.Display All Sales Records Sorted by Amount (Highest → Lowest)

SELECT * FROM SALES 
ORDER BY AMOUNT DESC;

# Q8. Show All Sales Made by Customer “Aditi”

SELECT * FROM SALES
WHERE CUSTOMER_NAME = 'Aditi';

# Q9. What is the Difference Between a Primary Key and a Foreign Key?
-- ANS.
-- A Primary Key is a column (or set of columns) that uniquely identifies each record in a table.
-- A Foreign Key is a column in one table that refers to the Primary Key of another table.

# Q10. What Are Constraints in SQL and Why Are They Used?
-- ANS
 -- Constraints in SQL are rules applied to table columns to ensure the data stored in the database 
 -- is valid, accurate, and consistent.
 
 -- Constraints help to:

   -- Prevent wrong/duplicate data
   -- Maintain data accuracy & integrity
   -- Create relationships between tables
   -- Enforce business rules automatically.







        








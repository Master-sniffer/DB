/*
A command that suppresses duplicates - DISTINCT 
Links two columns together to form one character data column -Concatenation Operator        
A group of character data- string 
An SQL plus command that displays the structure of a table- DESCRIBE 
*/
 
  
1. The manager of Global Fast Foods would like to send out coupons for the upcoming sale. He wants to send one coupon to each household. Create the SELECT statement that returns the customer last name and a mailing address.  
SELECT Last_name,address ||','|| city||','|| state || '-'|| FROM CUSTOMER; 
 
    
2. Each statement below has errors. Correct the errors and execute the query in Oracle Application Express.  
  
a.  SELECT first_name FROM f_staffs;  
  
b.  SELECT first_name |' ' | last_name AS "DJs on Demand Clients" FROM d_clients;  
  
c.  SELECT DISCTINCT f_order_lines FROM quantity;  
  
d.  SELECT order_number FROM f_orders;  
  
  
3. Sue, Bob, and Monique were the employees of the month. Using the f_staffs table, create a SELECT statement to display the results as shown in the Super Star chart.   
  
Super Star *** Sue *** Sue *** *** Bob *** Bob *** *** Monique *** Monique ***  
 
SELECT **** ' || first_name ||'****'|| first_name ||'***' as "Super Star" FROM f_staffs; 
  
  
4. Which of the following is TRUE about the following query? SELECT first_name, DISTINCT birthdate FROM f_staffs;  
  
a. Only two rows will be returned.  
b. Four rows will be returned.  
c. Only Fred 05-Jan-1988 and Lizzie 10-Nov-1987 will be returned. 
d. No rows will be returned.  ! 
  
  
5. Global Fast Foods has decided to give all staff members a 5% raise. Prepare a report that presents the output as shown in the chart.  
  
EMPLOYEE LAST NAME CURRENT SALARY SALARY WITH 5% RAISE     
SELECT last_name as "E<PLOYEE LAST NAME", salary as "CURRENT SALARY", salary*1,05 as ("salary with 5% raise") 
  
  
6. Create a query that will return the structure of the Oracle database EMPLOYEES  table. Which columns are marked “nullable”? What does this mean?  
DESCRIBE EMPLOYEES;  
  
7. The owners of DJs on Demand would like a report of all items in their D_CDs table with the following column headings: Inventory Item, CD Title, Music Producer, and Year Purchased. Prepare this report.  
SELECT inven_items as "Inventory Items", etc..  
 
  
8. True/False -- The following SELECT statement executes successfully:  
SELECT last_name, job_id, salary AS Sal FROM employees; - TRUE 
  
  
9. True/False -- The following SELECT statement executes successfully: SELECT * FROM job_grades;  - TRUE 
  
  
10. There are four coding errors in this statement. Can you identify them? SELECT employee_id, last_name sal x 12 ANNUAL SALARY FROM employees;  
  
  
11. In the arithmetic expression salary*12 - 400, which operation will be evaluated first?  
  
  
12. Which of the following can be used in the SELECT statement to return all columns of data in the Global Fast Foods f_staffs table? a. column names b. * c. DISTINCT id d. both a and b  
  
  
13. Using SQL to choose the columns in a table uses which capability?   
a. selection  
b. projection ! 
c. partitioning  
d. join  
  
  
14. SELECT last_name AS "Employee". The column heading in the query result will appear as:  
a. EMPLOYEE  
b. employee  
c. Employee !  
d. "Employee:  
  
  
  
   
15. Which expression below will produce the largest value?   
a. SELECT salary*6 + 100  
b. SELECT salary* (6 + 100)  ! 
c. SELECT 6(salary+ 100)  
d. SELECT salary+6*100  
  
  
16. Which statement below will return a list of employees in the following format? Mr./Ms. Steven King is an employee of our company.   
  
a. SELECT "Mr./Ms."||first_name||' '||last_name 'is an employee of our company.' AS "Employees"  FROM employees; b. SELECT 'Mr./Ms. 'first_name,last_name ||' '||'is an employee of our company.'   FROM employees; c. SELECT 'Mr./Ms. '||first_name||' '||last_name ||' '||'is an employee of our company.' AS "Employees"  FROM employees ; d. SELECT Mr./Ms. ||first_name||' '||last_name ||' '||"is an employee of our company." AS "Employees"  FROM employees  
  
  
17. Which is true about SQL statements? a. SQL statements are case-sensitive b. SQL clauses should not be written on separate lines. c. Keywords cannot be abbreviated or split across lines. d. SQL keywords are typically entered in lowercase; all other words in uppercase.  
  
  
18. Which queries will return three columns each with UPPERCASE column headings?  a. SELECT "Department_id", "Last_name", "First_name" FROM employees; b. SELECT DEPARTMENT_ID, LAST_NAME, FIRST_NAME  FROM employees; c. SELECT department_id, last_name, first_name AS UPPER CASE  FROM employees d. SELECT department_id, last_name, first_name FROM employees;  
  
  
19. Which statement below will likely fail?  a. SELCT * FROM employees; b. Select * FROM employees; c. SELECT * FROM EMPLOYEES; d. SelecT* FROM employees;  
  
 

1. Using the three separate words “Oracle,” “Internet,” and “Academy,” use one command to produce the following output: The Best ClassOracle Internet Academy 
 
SELECT CONCAT('Oracle', CONCAT(CONCAT(' ', 'Internet'), CONCAT(' ', 'Academy'))) AS "The Best Class"FROM DUAL; 
 
2. Use the string “Oracle Internet Academy” to produce the following output: The Netnet 
 
SELECT SUBSTR('Oracle Internet Academy', 13, 3)  AS "The Net"FROM DUAL; 
 
3. What is the length of the string “Oracle Internet Academy”? 
 
SELECT LENGTH('Oracle Internet Academy')  AS "Length"FROM DUAL; 
 
4. What’s the position of “I” in “Oracle Internet Academy”?  
 
SELECT INSTR('Oracle Internet Academy', 'I')  AS "Position"FROM DUAL; 
 
5. Starting with the string “Oracle Internet Academy”, pad the string to create ****Oracle****Internet****Academy****  
 
SELECT REPLACE(RPAD(LPAD('Oracle Internet Academy', 27, '*'),31,'*'),' ', '****')  AS "Result"FROM DUAL; 
 
6. Starting with the string “Oracle Internet Academy”, pad the string to produce:Oracle$$$Internet$$$Academy 
 
SELECT TRIM( BOTH '$' FROM  REPLACE(RPAD(LPAD('Oracle Internet Academy', 27, '$'),31,'$'),' ', '$$$$')  )  AS "Result"FROM DUAL; 
 
 
7. Using the string ‘Oracle Internet Academy’, produce the output shown using the REPLACE function.The Best ClassOracle 2013-2014 Academy 
 
 
SELECT REPLACE('Oracle Internet Academy','Internet', '2013-2014')  AS "The Best Class" FROM DUAL; 
 
 
8. List the order date and the order total from the Global Fast Foods F_ORDERS table. Name the order total as TOTAL, and fill in the empty spaces to the left of the order total with $. 
 
SELECT order_date, LPAD( order_total, 9, '$') as total FROM f_orders; 
 
9. Write a query that will output a column called “ADDRESS” which has the following information: ZOE TWEE 1009 OLIVER AVENUE BOSTON, MA 12889. Use the Global Fast Foods F_CUSTOMERS table. 
 
SELECT  UPPER(first_name || ' ' || last_name || ' ' ||  address ||' '|| city ||', '|| state ||' '|| zip) as address FROM f_customers; 
 
10. Write a query to return the first character of the first name concatenated to the last_name, the salary, and the department id for employees working in department 20. Give the first expression an alias of Name. Use the EMPLOYEES table. Change the query to use a substitution variable instead of the hard coded value 20 for department id. Run the query for department 30 and 50 without changing the original where-clause in your statement. 
 
 
SELECT CONCAT( SUBSTR(first_name, 1, 1)  , last_name) "Name", salary, department_idFROM employeesWHERE department_id = 20;SELECT CONCAT( SUBSTR(first_name, 1, 1)  , last_name) "Name", salary, department_idFROM employeesWHERE department_id = :dptid; 
 
 
11. Using a substitution variable for the department name, write a query listing department id, department name, and location id for departments located in the_department_of_your_choice. Use the DEPARTMENTS table. Note: All substitution variables in OAE are treated as character strings, so no quotes (‘ ‘) are needed. 
 
SELECT department_id as "departmentid", department_name as "departmentname", location_id as "location id" FROM departments WHERE LOWER(department_name)  = LOWER(:the_department_of_your_choice); 
 
 
12. Write a query that returns all the employee data depending on the month of their hire date. Use the EMPLOYEES table. The statement should return the month part of the hiredate which is then compared to an abbreviated month (JAN, FEB, MAR) passed into the query via a substitution variable. 
 
SELECT first_name, last_name, hire_date, TO_CHAR(hire_date, 'MON') as "Month" FROM employees WHERE TO_CHAR(hire_date, 'MON') = UPPER(:whichmonth); 

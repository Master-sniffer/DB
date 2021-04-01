/*
ASC Orders the rows in ascendig order (the default order)  
DESC Orders the rows i descending order Z-A 
Sorting To arrange according to class, kind or size 
*/
 
 
SELECT employee_id as "Number", first_name, last_name FROM employees ORDER BY "Number"; 
 
 
SELECT title, year FROM d_cds ORDER BY year, titile; 
 
SELECT title as "Our Collection" FROM d_cds ORDER BY title DESC; 
 
SELECT first_name, last_name, ID, parking_number FROM students ORDER BY first_name AND ORDER BY last_name; 
 
SELECT * FROM employees ORDER BY manager_id WHERE manager_id<125; 
 
 
1. Limiting values with the WHERE clause is an example of: 
a. Projection 
b. Ordering  
c. Joining 
d. Grouping 
e. Selection * 
 
2. You want to sort your CD collection by title, and then by artist. This can be accomplished using: 
a. WHERE 
b. SELECT 
c. ORDER BY * 
d. DISTINCT 
 
 
3. Which of the following are SQL keywords?  
a. SELECT * 
b. ALIAS 
c. COLUMN  
d. FROM * 
 
4. Which of the following are true? 
a. Multiplication and division take priority over addition. * 
b. Operators of the same priority are evaluated from left to right. * 
c. Parentheses can be used to override the rules of precedence. * 
d. None of the above are true 
 
5. The following query was written: 
SELECT DISTINCT last_name FROM students 
a. To select all the outstanding students 
b. To choose last names that are duplicates 
c. To select last names without duplicatesd. To select all last names* 
 
6. The following string was created using which SELECT clause? 
Abby Rogers is an order taker for Global Fast Foods 
a. SELECT first_name ||' ' ||last_name ||' is an ' staff_type ' for Global Fast Foods' 
b. SELECT Abby Rogers is an ||staff_type||' for Global Fast Foods' 
c. SELECT first_name,last_name '||staff_type||' for Global Fast Foods' 
d. SELECT first_name ||' ' ||last_name ||' is an '||staff_type||' for Global Fast Foods' * 
 
7. Which of the following SELECT clauses will return uppercase column headings? 
a. SELECT id, last_name, address, city, state, zip, phone_number; 
b. SELECT ID, LAST_NAME, ADDRESS, CITY, STATE, ZIP, PHONE_NUMBER; 
c. SELECT Id, Last_name, Address, City, State, Zip, Phone_number; 
d. SELECT id AS ID, last_name AS NAME, address AS ADDRESS, city AS CITY, state AS STATE, zip AS ZIP, phone_number AS PHONE_NUMBER;* 
 
8. Which SELECT statement will always return the last names in alphabetical order? 
a. SELECT last_name AS ORDER BY FROM employees 
b. SELECT last_name FROM employees ORDER BY last_name * 
c. SELECT last_name FROM employees 
d. SELECT ASC last_name FROM employees 
 
9. Which SELECT clause will return a column heading for employee_id called “New Employees”? 
 a. SELECT last_name AS "New Employees" 
b. SELECT employee_id AS New Employeesc. 
c. SELECT employee AS "New Employees" 
 d. SELECT employee_id AS "New Employee * 
 
10. Examine the following query:SELECT last_name, job_id, salaryFROM employeesWHERE job_id = 'SA_REP' OR job_id = 'AD_PRES' AND salary >15000;Which results could not have been returned from this query?  
a. Joe Everyone, sales representative, salary 15000 * 
b. Jane Hendricks, sales manager, salary 15500 * 
c. Arnie Smithers, administration president, 20000 
d. Jordan Lim, sales representative, salary 1400011 *.  
 
Finish this query so it returns all employees whose last names start with “St”. SELECT last_name FROM employees 
 
12. What salary values will not be returned from this query? SELECT last_name, first_name, salaryFROM employeesWHERE salary BETWEEN 1900 AND 2100;13. Correct each WHERE clause: 
a. WHERE department_id NOT IN 101,102,103; 
b. WHERE last_name = King 
c. WHERE start date LIKE "05-May-1998" 
d. WHERE salary IS BETWEEN 5000 AND 7000 e. WHERE id =! 10 

 
 
Used to terminate the column, expression, or value to a specified number of decimal places- TRUNC 
These functions accept numeric input and return numeric values.- number functions 
Returns the remainder of a division.- MOD 
Rounds the column, expression, or value to a set number of decimal places.- ROUND 
 
 
1. Display Oracle database employee last_name and salary for employee_ids between 100 and 102. Include a third column that divides each salary by 1.55 and rounds the result to two decimal places. 
 
SELECT last_name, salary, ROUND(salary/1.55,2) "Calculated Salary"FROM employeesWHERE employee_id BETWEEN 100 AND 102; 
 
2. Display employee last_name and salary for those employees who work in department 80. Give each of them a raise of 5.333% and truncate the result to two decimal places. 
 
SELECT last_name, salary, TRUNC(salary*1.0533,2) "Raised Salary" FROM employeesWHERE department_id = 80; 
 
3. Use a MOD number function to determine whether 38873 is an even number or an odd number. 
 
SELECT CASE WHEN MOD(38873 , 2) = 1 THEN 'odd' ELSE 'even' END as "Odd or Even?" FROM dual;  
 
 
 4. Use the DUAL table to process the following numbers:845.553 - round to one decimal place30695.348 - round to two decimal places30695.348 - round to -2 decimal places2.3454 - truncate the 454 from the decimal place 
 
SELECT ROUND( 845.553 , 1) FROM dual; 
SELECT ROUND( 30695.348  , 2) FROM dual; 
SELECT ROUND( 30695.348  , -2)FROM dual; 
SELECT TRUNC( 2.3454   , 1)FROM dual; 
 
 
 
5. Divide each employee’s salary by 3. Display only those employees’ last names and salaries who earn a salary that is a multiple of 3. 
 
SELECT last_name, salaryFROM employees WHERE MOD(salary, 3) = 0; 
 
 
6. Divide 34 by 8. Show only the remainder of the division. Name the output as EXAMPLE. 
 
SELECT MOD(34, 8) as example FROM dual; 
 
 
7. How would you like your paycheck – rounded or truncated? What if your paycheck was calculated to be $565.784 for the week, but you noticed that it was issued for $565.78. The loss of .004 cent would probably make very little difference to you. However, what if this was done to one thousand people, one hundred thousand people, or one million people! Would it make a difference then? How much of a difference? 
 
SELECT (565.784 - ROUND(565.784, 2))*1000*(:xx) as diff FROM dual; 
 

a.Showing all of the email addresses in upper case letters SINGLE ROW 
 
SELECT 
UPPER (email_address) FROM people;  
 
b. Determining the average salary for the employees in the sales MULTIPLE ROW department 
SELECT AVG(salary) FROM employees WHERE job="sales department"' 
 
c. Showing hire dates with the month spelled out (September 1, 2004) ? SINGLE ROW 
  
SELECT hire_date as TOCHAR(hire_date) 
 
d. Finding out the employees in each department that had the most MU:TIPLE ROW seniority (the earliest hire date) 
 
SELECT TOP(1)* FROM employees GROUP BY hire_date; 
 
e. Displaying the employees’ salaries rounded to the hundreds place SINGLE ROW 
f. Substituting zeros for null values when displaying employee commissions. SINGLE ROW 

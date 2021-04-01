 /*
 Inverts the value of the condition- NOT 
 
Both conditions must be true for a record to be selected-AND 
 
Rules that determine the order in which expressions are evaluated and calculated-precedence rules 
 
Either condition can be true for a record to be selected-OR 
 
*/
 
 
 
Execute the two queries below. Why do these nearly identical statements produce two different results? Name the difference and explain why.  
 
First one shows results where two statements should work together. Second one shows statements which work separetly of each other 
 
 
 
 
 
Display the last names of all Global Fast Foods employees who have “e” and “i” in their last names.  
 
SELECT last_name FROM Global_Fast_Foods WHERE last_name LIKE '%e%' and last_name LIKE '%i%'; 
 
 
 
I need to know who the Global Fast Foods employees are that make more than $6.50/hour and their position is not order taker.  
 
SELECT first_name, last_name FROM GLOBAL_FAST_FOOD WHERE staff_type LIKE 'Order Taker' and WHERE salary>6.5; 
 
 
Using the employees table, write a query to display all employees whose last names start with “D” and have “a” and “e” anywhere in their last name 
 
SELECT last_name, first_name WHERE last_name LIKE 'D%' and last_name LIKE '%a%' and last_name LIKE '%e%'; 
 
 
In which venues did DJs on Demand have events that were not in private homes?  
 
SELECT name FROM "D_VENUES" WHERE venues != "Prvate Home"; 
 
 
Which list of operators is in the correct order from highest precedence to lowest precedence?  
a. AND, NOT, OR   
b. NOT, OR, AND   
c. NOT, AND, OR  * 
 
 
 
Who am I? I was hired by Oracle after May 1998 but before June of 1999. My salary is less than $8000 per month, and I have an “en” in my last name.  
 
SELECT first_name , last_name FROM ORACLE WHERE hire_date BETWEEN 1998 and 1999 and salary<=8000 and last_name LIKE "%en%"; 
 
 
What's my email address? Because I have been working for Oracle since the beginning of 1996, I make more than $9000 per month. Because I make so much money, I don't get a commission.  
 
SELECT email FROM ORACLE where hire_date=1996 and salary>=9000 and commission IS NULL; 

/*
This option identifies that the escape characters should be interpreted literally - ESCAPE 
 
Condition tests for null values- IS NULL 
 
Displays rows based on a range of values-  BETWEEN 
 
Including the specified limits and the area between them; the numbers 1-10,  inclusive 
 
Selects rows that match a character pattern- LIKE 
 
Tests for values in a specified list of values- IN 
*/
 
 
 It 
1. Display the first name, last name, and salary of all Global Fast Foods staff whose salary is between $5.00 and $10.00 per hour. 
 
SELECT first_name, last_name, salary WHERE salary BETWEEN 5 AND 10; 
 
 
 
 
2. Display the location type and comments for all DJs on Demand venues that are Private Home. 
 
SELECT location , comments FROM DJs WHERE venues = "Private Home"; 
 
 
3. Using only the less than, equal, or greater than operators, rewrite the following query:SELECT first_name, last_name FROM f_staffsWHERE salary BETWEEN 20.00 and 60.00; 
 
SELECT first_name, last_name FROM f_staffs WHERE salary>=20 and salary<=60 
 
4. Create a list of all the DJs on Demand CD titles that have “a” as the second letter in the title.  
 
SELECT NAME WHERE title LIKE '_a%'; 
 
 
5. Who are the partners of DJs on Demand who do not get an authorized expense amount? 
 
SELECT first_name, last_name FROM partner WHERE auth_expense_amit IS NULL; 
 
6. Select all the Oracle database employees whose last names end with “s”. Change the heading of the column to read Possible Candidates. 
 
SELECT last_name ||' '|| AS "Possible candidates" FROM EMPLOYEES WHERE last_name LIKE '%s"; 
 
7. Which statement(s) are valid?  
a. WHERE quantity <> NULL; 
b. WHERE quantity = NULL;  
c. WHERE quantity IS NULL; * 
d. WHERE quantity != NULL; 
 
8. Write a SQL statement that lists the songs in the DJs on Demand inventory that are type code 77, 12, or 1. 
 
SELECT title as "Song" FROM songs WHERE type_code IN (77,12,1); 
 

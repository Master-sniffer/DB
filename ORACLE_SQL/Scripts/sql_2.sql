Using the Global Fast Foods database, retrieve the customer’s first name, last name, and address for the customer who uses ID 456. 
 
SELECT first_name, last_name, address WHERE (ID=456) FROM .. 
 
 
Show the name, start date, and end date for Global Fast Foods' promotional item “ballpen and highlighter” giveaway 
 
 
 
Create a SQL statement that produces the following output 
OldestThe 1997 recording in our database is The Celebrants Live in Concert 
 
WHERE year=(SELECT MIN(year) FROM d_cds 
 
 
The following query was supposed to return the CD title “Carpe Diem" but no rows were returned. Correct the mistake in the statement and show the output 
 
SELECT  title FROM d_cds WHERE title = 'carpe diem' ; 
 
 
The manager of DJs on Demand would like a report of all the CD titles and years of CDs that were produced before 2000 
 
SELECT titles, years FROM d_cds WHERE (year<2000); 
 
 
Which values will be selected in the following query? 
A,b 
 
 
 
Write a SQL statement that will display the student number (studentno), first name (fname), and last name (lname) for all students who are female (F) in the table named students. 
 
SELECT fname, lname, studentno FROM students WHERE sex='F'; 
 
 
Write a SQL statement that will display the student number (studentno) of any student who has a PE major in the table named students. Title the studentno column Student Number. 
 
SELECT studentno AS "Student Number" FROM students WHERE major = 'PE'; 
 
 
Write a SQL statement that lists all information about all male students in the table named students. 
 
SELECT * FROM students WHERE sex="M"; 
 
Write a SQL statement that will list the titles and years of all the DJs on Demand CDs that were not produced in 2000 
 
SELECT title , year FROM d_cds WHERE year <>2000; 
 
Write a SQL statement that lists the Global Fast Foods employees who were born before 1980 
 
SELECT * FROM d_cds WHERE TO_CHAR(year<=1980); 

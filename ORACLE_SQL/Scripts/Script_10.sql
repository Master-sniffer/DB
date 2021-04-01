Try It / Solve It1. For DJs on Demand, display the number of months between the event_date of the Vigil wedding and today’s date. Round to the nearest month. 
 
SELECT name, event_date, ROUND(MONTHS_BETWEEN(SYSDATE, event_date)) as "number of months"FROM d_eventsWHERE name = 'Vigil wedding'; 
 
2. Display the days between the start of last summer’s school vacation break and the day school started this year. Assume 30.5 days per month. Name the output “Days.” 
 
SELECT TO_DATE('20-Sep-2016', 'dd-Mon-yyyy') - TO_DATE('05-Jun-2016', 'dd-Mon-yyyy') as "Actual Days", ROUND( MONTHS_BETWEEN(TO_DATE('20-Sep-2016', 'dd-Mon-yyyy'), TO_DATE('05-Jun-2016', 'dd-Mon-yyyy'))*30.5, 0) as "Days"FROM dual; 
 
3. Display the days between January 1 and December 31. 
 
SELECT TO_DATE('31-Dec-2016', 'dd-Mon-yyyy') - TO_DATE('01-Jan-2016', 'dd-Mon-yyyy') as "Actual Days"FROM dual; 
 
4. Using one statement, round today's date to the nearest month and nearest year, and truncate it to the nearest month and nearest year. Use an alias for each column. 
 
SELECT ROUND(SYSDATE, 'Month') as "nearest first day of month", ROUND(SYSDATE, 'Year') as "nearest first day of Year", TRUNC(SYSDATE, 'Month') as "current month's 1st day", TRUNC(SYSDATE, 'Year') as "current year's 1st day"FROM dual; 
 
5. What is the last day of the month for June 2005? Use an alias for the output. 
 
SELECT LAST_DAY(To_date('01-Jun-2005', 'dd-Mon-yyyy'))FROM dual; 
 
6. Display the number of years between the Global Fast Foods employee Bob Miller’s birthday and today. Round to the nearest year. 
 
SELECT first_name, last_name , ROUND(MONTHS_BETWEEN(SYSDATE, birthdate)/12) "No of Years"FROM f_staffsWHERE first_name || ' ' || last_name = 'Bob Miller'; 
 
7. Your next appointment with the dentist is six months from today. On what day will you go to the dentist? Name the output, “Appointment.” 
 
SELECT TO_CHAR(ADD_MONTHS(SYSDATE, 6),'dd-Mon-yyyy (DY)') as "Appointment"FROM dual 
 
8. The teacher said you have until the last day of this month to turn in your research paper. What day will this be? Name the output, “Deadline.” 
 
SELECT  TO_DATE('11/05/2016','mm/dd/yyyy') "B'Day current year", ADD_MONTHS(TO_DATE('11/05/2016','mm/dd/yyyy'),12)   "B'Day next year", TRUNC( ADD_MONTHS(TO_DATE('11/05/2016','mm/dd/yyyy'),12), 'Year') "1st day next Year"  , ROUND(MONTHS_BETWEEN( TRUNC( ADD_MONTHS(TO_DATE('11/05/2016','mm/dd/yyyy'),12), 'Year')    ,  TO_DATE('11/05/2016','mm/dd/yyyy'))) "Rounded Months to next 1st jan" FROM dual; 
 
9. How many months between your birthday this year and January 1 next year?  
 
SELECT  TO_DATE('11/05/2016','mm/dd/yyyy') "B'Day current year", NEXT_DAY(TO_DATE('11/05/2016','mm/dd/yyyy'), 'Friday') "First Friday"FROM dual; 
 
10. What’s the date of the next Friday after your birthday this year? Name the output, “First Friday.” 
 
MONTHS_BETWEEN 
 
11. Name a date function that will return a number. 
 
ADD_MONTHS 
 
12. Name a date function that will return a date. 
 
ADD_MONTHS 
 
 
13. Give one example of why it is important for businesses to be able to manipulate date data?Extension Exercises1. Using DUAL, write a statement that will convert 86.678 to 86.68.2. Write a statement that will display the DJs on Demand CD titles for cd_numbers 90 and 91 in uppercase in a column headed “DJs on Demand Collections.” 

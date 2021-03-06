Задача 1 
Создайте запрос, чтобы показать текущую дату. Отобразите поле Дата. 
 
SELECT CURDATE(); 
SELECT GETDATE() 'Current Date and Time using GETDATE()' 
 
 
 
Задача 2 
Отдел  нуждается в отчете, который показывает номер сотрудника, фамилию, зарплату, и увеличение зарплаты на 15.5 % (выраженная в целом числе) для каждого сотрудника. Озаглавьте поле New Salary. Сохраните запрос как  lab_03_02.sql. 
 
SELECT  
 
 
Задача 3 
Измените свой запрос lab_03_02.sql, чтобы добавить поле, которое вычитает старую зарплату из новой зарплаты. Озаглавьте поле Increase. Сохраните файл как lab_03_04.sql. Выполните запрос. 
 
Задача 4.1 
Напишите запрос, который показывает фамилию (с первыми прописными буквами и всеми другими строчными буквами) и длину фамилии для всех сотрудников, фамилия которых начинается с букв J, A, или М. Дайте каждому полю соответствующую метку. Отсортируйте результаты по фамилии сотрудников. 
 
 
SELECT initcap(last_name) "Фамилия", length(last_name) "Длина" 
FROM employees 
WHERE last_name LIKE 'A%' OR last_name LIKE 'J%'OR last_name LIKE 'M%' 
ORDER BY last_name; 
 
 
Задача 4.2 
Перепишите запрос так, чтобы пользователь был вынужден ввести букву, с которой начинается фамилия. Например, если пользователь вводит H, то результат должен показать всех сотрудников, фамилия которых начинается с буквы H. 
 
Задача 4.3 
Перепишите запрос так, чтобы пользователь был вынужден ввести букву, с которой начинается фамилия. Например, если пользователь вводит h, то результат должен показать всех сотрудников, фамилия которых начинается с буквы H. 
 
Задача 5 
Отдел кадров хочет найти время работы каждого сотрудника. Для каждого сотрудника, покажите фамилию и вычислите число месяцев между сегодня и датой приема на работу. Озаглавьте поле MONTHS_WORKED. Отсортируйте результат по количеству рабочих месяцев. Округлите количество месяцев до самого близкого целого числа.  
 
Задача 6 
Создайте отчет, который отображает следующее сообщение для каждого сотрудника: <employee last name> earns <salary> monthly but wants <3 times salary>. Озаглавьте поле Dream Salaries. 
 
Задача 7 
Отобразите фамилию каждого сотрудника, дату приема на работу, и дату выплаты зарплаты, которая является первым понедельником после шести месяцев работы. Озаглавьте поле REVIEW. Отформатируйте даты, чтобы дата отображалась в формате, подобном “понедельник, тридцать первого июля 2000.” 
 
Задача 8 
Отобразите фамилию, дату приема на работу, и день недели, в которую начал работу сотрудник. Озаглавьте поле DAY. Отсортируйте результаты по дням недели, начиная с понедельника.  
 
Задача 9 
Создайте запрос, который показывает фамилии сотрудников и процент комиссионных. Если сотрудник не получает комиссионные, отобразите “No Commission.” Озаглавьте поле COMM. 
 
Задача 10 
Создайте запрос, который показывает первые восемь символов фамилий сотрудников и указывает количество их зарплат со звездочками. Каждая звездочка показывает тысячу долларов. Отсортируйте данные в порядке убывания зарплаты. Озаглавьте поле EMPLOYEES_AND_THEIR_SALARIES. 
 
Задача 11 
Используя функцию DECODE, напишите запрос, который отображает уровень всех сотрудников, основанных на значениях поля JOB_ID, используя следующие данные: 
 
Job 
 
Grade 
AD_PRES 
 
A 
ST_MAN 
 
B 
IT_PROG 
 
C 
SA_REP 
 
D 
ST_CLERK 
 
E 
None of the above     
 
0 
 
 

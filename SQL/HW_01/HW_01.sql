 --1. Вывести все поля и все строки.

SELECT *
FROM students s;
-- проверить количество строк в таблице
SELECT count(id)
FROM students s ;

-- 2. Вывести всех студентов в таблице

SELECT s.name AS student
FROM students s ;

-- 3. Вывести только Id пользователей 

SELECT  s.id  AS student_id
FROM  students s ;

--4. Вывести только имя пользователей

SELECT  s."name"  AS student_name
FROM  students s ;

-- 5. Вывести только email пользователей

SELECT s.email AS email_of_student
FROM students s ;

-- 6. Вывести имя и email пользователей

SELECT s.name AS student_name, s.email AS email_of_students
FROM students s ;

--  7. Вывести id, имя, email и дату создания пользователей

SELECT s.id AS id_of_student, s.name AS student_name, s.email AS email_of_students, s.created_on AS date_of_creation
FROM students s ;

--  8. Вывести пользователей где password 12333

SELECT  s."name"  AS student_name
FROM  students s 
WHERE s."password" = '12333';

--9. Вывести пользователей которые были созданы 2021-03-26 00:00:00

SELECT *
FROM  students s 
WHERE s.created_on = '2021-03-26 00:00:00';

--10. Вывести пользователей где в имени есть слово Анна

SELECT  s."name"  AS student_name
FROM  students s 
WHERE s."name" LIKE '%Anna%';

--11. Вывести пользователей где в имени в конце есть 8

SELECT  s."name"  AS student_name
FROM  students s 
WHERE s."name" LIKE '%Anna%';

 --12. Вывести пользователей где в имени в есть буква а

SELECT  s."name"  AS student_name
FROM  students s 
WHERE s."name" LIKE '%a%';

-- количество таких записей
SELECT  count(s."name") AS student_name
FROM  students s 
WHERE s."name" LIKE '%a%';


-- 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00

SELECT s."name" AS student
FROM  students s 
WHERE s.created_on = '2021-07-12 00:00:00';


--14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313


SELECT s."name" AS student
FROM students s 
WHERE s.created_on = '2021-07-12 00:00:00' AND s."password" = '1m313';


-- 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey

SELECT s."name" AS student
FROM students s 
WHERE s.created_on = '2021-07-12 00:00:00' AND s."name" LIKE '%Andrey%';


-- 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8

SELECT s."name" AS student
FROM students s 
WHERE s.created_on = '2021-07-12 00:00:00' AND s."name" LIKE '%8%';

--17. Вывести пользователя у которых id равен 110

SELECT s."name" AS student, s.id
FROM students s 
WHERE s.id = 110;


--18. Вывести пользователя у которых id равен 153

SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id = 153;


--19. Вывести пользователя у которых id больше 140


SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id > 140;

--- количество таких записей

SELECT count(s."name")
FROM students s 
WHERE s.id > 140;

-- 20. Вывести пользователя у которых id меньше 130

SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id < 130;

--количество таких записей

SELECT count(s."name")
FROM students s 
WHERE s.id < 130;


--21. Вывести пользователя у которых id меньше 127 или больше 188

SELECT s."name"
FROM students s 
WHERE s.id>= 127 AND s.id <=188;



 --22. Вывести пользователя у которых id меньше либо равно 137

SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id <= 137;


 --23. Вывести пользователя у которых id больше либо равно 137

SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id >= 137;

 --24. Вывести пользователя у которых id больше 180 но меньше 190


SELECT s."name", s.id 
FROM students s 
WHERE s.id >=180 AND s.id <=190;


 --25. Вывести пользователя у которых id между 180 и 190
SELECT s."name", s.id 
FROM students s 
WHERE s.id>= 180 AND s.id <=190;

--26. Вывести пользователей где password равен 12333, 1m313, 123313

SELECT s."password", s."name"
FROM students s 
WHERE s."password"  IN ('12333', '1m313','123313')
GROUP BY s."password", s."name" ;

 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
 
 SELECT s."name", s.created_on
FROM students s 
WHERE s.created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
 
 
 28. Вывести минимальный id 
 
 SELECT min(s.id) 
FROM students s ;

---проверка всех id в таблице упорядоченая по возрастанию
SELECT * 
FROM students s
ORDER BY s.id ;

 
 29. Вывести максимальный.
  SELECT max(s.id) 
FROM students s ;

---проверка всех id в таблице упорядоченая по возрастанию
SELECT * 
FROM students s
ORDER BY s.id DESC ;
 
 30. Вывести количество пользователей
 
 SELECT count(s.id)
FROM students s;

 
 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 
 SELECT s.id AS ID, s."name" AS STUDENT , s.created_on AS CREATE_ON
FROM students s
ORDER BY s.created_on  ;
 
 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
 
  SELECT s.id AS ID, s."name" AS STUDENT , s.created_on AS CREATE_ON
FROM students s
ORDER BY s.created_on DESC ;
 
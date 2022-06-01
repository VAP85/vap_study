 --1. ������� ��� ���� � ��� ������.

SELECT *
FROM students s;
-- ��������� ���������� ����� � �������
SELECT count(id)
FROM students s ;

-- 2. ������� ���� ��������� � �������

SELECT s.name AS student
FROM students s ;

-- 3. ������� ������ Id ������������� 

SELECT  s.id  AS student_id
FROM  students s ;

--4. ������� ������ ��� �������������

SELECT  s."name"  AS student_name
FROM  students s ;

-- 5. ������� ������ email �������������

SELECT s.email AS email_of_student
FROM students s ;

-- 6. ������� ��� � email �������������

SELECT s.name AS student_name, s.email AS email_of_students
FROM students s ;

--  7. ������� id, ���, email � ���� �������� �������������

SELECT s.id AS id_of_student, s.name AS student_name, s.email AS email_of_students, s.created_on AS date_of_creation
FROM students s ;

--  8. ������� ������������� ��� password 12333

SELECT  s."name"  AS student_name
FROM  students s 
WHERE s."password" = '12333';

--9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00

SELECT *
FROM  students s 
WHERE s.created_on = '2021-03-26 00:00:00';

--10. ������� ������������� ��� � ����� ���� ����� ����

SELECT  s."name"  AS student_name
FROM  students s 
WHERE s."name" LIKE '%Anna%';

--11. ������� ������������� ��� � ����� � ����� ���� 8

SELECT  s."name"  AS student_name
FROM  students s 
WHERE s."name" LIKE '%Anna%';

 --12. ������� ������������� ��� � ����� � ���� ����� �

SELECT  s."name"  AS student_name
FROM  students s 
WHERE s."name" LIKE '%a%';

-- ���������� ����� �������
SELECT  count(s."name") AS student_name
FROM  students s 
WHERE s."name" LIKE '%a%';


-- 13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00

SELECT s."name" AS student
FROM  students s 
WHERE s.created_on = '2021-07-12 00:00:00';


--14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313


SELECT s."name" AS student
FROM students s 
WHERE s.created_on = '2021-07-12 00:00:00' AND s."password" = '1m313';


-- 15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey

SELECT s."name" AS student
FROM students s 
WHERE s.created_on = '2021-07-12 00:00:00' AND s."name" LIKE '%Andrey%';


-- 16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8

SELECT s."name" AS student
FROM students s 
WHERE s.created_on = '2021-07-12 00:00:00' AND s."name" LIKE '%8%';

--17. ������� ������������ � ������� id ����� 110

SELECT s."name" AS student, s.id
FROM students s 
WHERE s.id = 110;


--18. ������� ������������ � ������� id ����� 153

SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id = 153;


--19. ������� ������������ � ������� id ������ 140


SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id > 140;

--- ���������� ����� �������

SELECT count(s."name")
FROM students s 
WHERE s.id > 140;

-- 20. ������� ������������ � ������� id ������ 130

SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id < 130;

--���������� ����� �������

SELECT count(s."name")
FROM students s 
WHERE s.id < 130;


--21. ������� ������������ � ������� id ������ 127 ��� ������ 188

SELECT s."name"
FROM students s 
WHERE s.id>= 127 AND s.id <=188;



 --22. ������� ������������ � ������� id ������ ���� ����� 137

SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id <= 137;


 --23. ������� ������������ � ������� id ������ ���� ����� 137

SELECT s."name" AS student, s.id AS ID
FROM students s 
WHERE s.id >= 137;

 --24. ������� ������������ � ������� id ������ 180 �� ������ 190


SELECT s."name", s.id 
FROM students s 
WHERE s.id >=180 AND s.id <=190;


 --25. ������� ������������ � ������� id ����� 180 � 190
SELECT s."name", s.id 
FROM students s 
WHERE s.id>= 180 AND s.id <=190;

--26. ������� ������������� ��� password ����� 12333, 1m313, 123313

SELECT s."password", s."name"
FROM students s 
WHERE s."password"  IN ('12333', '1m313','123313')
GROUP BY s."password", s."name" ;

 27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
 
 SELECT s."name", s.created_on
FROM students s 
WHERE s.created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
 
 
 28. ������� ����������� id 
 
 SELECT min(s.id) 
FROM students s ;

---�������� ���� id � ������� ������������ �� �����������
SELECT * 
FROM students s
ORDER BY s.id ;

 
 29. ������� ������������.
  SELECT max(s.id) 
FROM students s ;

---�������� ���� id � ������� ������������ �� �����������
SELECT * 
FROM students s
ORDER BY s.id DESC ;
 
 30. ������� ���������� �������������
 
 SELECT count(s.id)
FROM students s;

 
 31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
 
 SELECT s.id AS ID, s."name" AS STUDENT , s.created_on AS CREATE_ON
FROM students s
ORDER BY s.created_on  ;
 
 32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
 
  SELECT s.id AS ID, s."name" AS STUDENT , s.created_on AS CREATE_ON
FROM students s
ORDER BY s.created_on DESC ;
 
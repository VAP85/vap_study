-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

SELECT e.employee_name, s.monthly_salary 
FROM employees e 
JOIN employee_salary es 
ON es.employee_id =e.id 
JOIN salary s 
ON s.id= es.salary_id 

--2. ������� ���� ���������� � ������� �� ������ 2000.

SELECT e.employee_name
FROM employees e 
JOIN employee_salary es 
ON es.employee_id =e.id 
JOIN salary s 
ON s.id= es.salary_id 
WHERE s.monthly_salary <2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

SELECT s.monthly_salary  AS salary
FROM salary s
LEFT JOIN employee_salary es 
ON es.salary_id = s.id 
WHERE es.employee_id  IS NULL;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

SELECT  s.monthly_salary AS salary
FROM salary s
LEFT JOIN employee_salary es 
ON es.salary_id = s.id 
WHERE monthly_salary <2000
AND  es.employee_id  IS NULL;


--5. ����� ���� ���������� ���� �� ��������� ��.

SELECT employee_name
FROM employees e 
LEFT JOIN employee_salary es 
ON es.employee_id = e.id 
LEFT JOIN salary s 
ON s.id = es.salary_id 
WHERE s.monthly_salary IS NULL;

--6. ������� ���� ���������� � ���������� �� ���������.


SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id ;


--7. ������� ����� � ��������� ������ Java �������������.

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Java%';

-- 8. ������� ����� � ��������� ������ Python �������������.

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Python%';

--9. ������� ����� � ��������� ���� QA ���������.


SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%QA%';


--10. ������� ����� � ��������� ������ QA ���������.

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Manual QA%';


--11. ������� ����� � ��������� ��������������� QA

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Automation QA%';

-- 12. ������� ����� � �������� Junior ������������


SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Junior%';


--13. ������� ����� � �������� Middle ������������

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Middle%';

--14. ������� ����� � �������� Senior ������������

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Senior%';


--15. ������� �������� Java �������������


SELECT employee_name , s.monthly_salary 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%Java%';

--16. ������� �������� Python �������������


SELECT employee_name , s.monthly_salary 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%Python%';


--17. ������� ����� � �������� Junior Python �������������

SELECT employee_name , s.monthly_salary 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%Junior Python%';


--18. ������� ����� � �������� Middle JS �������������

SELECT employee_name , s.monthly_salary 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%Middle JavaScript%';


--19. ������� ����� � �������� Senior Java �������������

SELECT employee_name , s.monthly_salary 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%Senior JavaScript%';

--20. ������� �������� Junior QA ���������

SELECT employee_name , s.monthly_salary , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%Junior%QA%';


--21. ������� ������� �������� ���� Junior ������������

SELECT avg(s.monthly_salary)
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%Junior%';


--22. ������� ����� ������� JS �������������

SELECT sum(s.monthly_salary)
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%JavaScript%';

--23. ������� ����������� �� QA ���������

SELECT min(s.monthly_salary)
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%QA%';

--  24. ������� ������������ �� QA ���������

SELECT max(s.monthly_salary)
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%QA%';


-- 25. ������� ���������� QA ���������

SELECT count(re.employee_id)
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%QA%';

--26. ������� ���������� Middle ������������.

SELECT count(re.employee_id)
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%Middle%';


--27. ������� ���������� �������������

SELECT count(re.employee_id)

FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%developer%';


-- 28. ������� ���� (�����) �������� �������������.


SELECT sum(s.monthly_salary)

FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE r.role_name  LIKE '%developer%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

SELECT e.employee_name, r.role_name, s.monthly_salary 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
ORDER BY s.monthly_salary ;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300


SELECT e.employee_name, r.role_name, s.monthly_salary 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE s.monthly_salary >= 1700 AND s.monthly_salary <=2300
ORDER BY s.monthly_salary ;

--- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300


SELECT e.employee_name, r.role_name, s.monthly_salary 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE s.monthly_salary <=2300
ORDER BY s.monthly_salary ;


-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

SELECT e.employee_name, r.role_name, s.monthly_salary 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = e.id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE s.monthly_salary IN (1100, 1500, 2000)
ORDER BY s.monthly_salary ;



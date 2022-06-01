-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

SELECT e.employee_name, s.monthly_salary 
FROM employees e 
JOIN employee_salary es 
ON es.employee_id =e.id 
JOIN salary s 
ON s.id= es.salary_id 

--2. Вывести всех работников у которых ЗП меньше 2000.

SELECT e.employee_name
FROM employees e 
JOIN employee_salary es 
ON es.employee_id =e.id 
JOIN salary s 
ON s.id= es.salary_id 
WHERE s.monthly_salary <2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT s.monthly_salary  AS salary
FROM salary s
LEFT JOIN employee_salary es 
ON es.salary_id = s.id 
WHERE es.employee_id  IS NULL;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT  s.monthly_salary AS salary
FROM salary s
LEFT JOIN employee_salary es 
ON es.salary_id = s.id 
WHERE monthly_salary <2000
AND  es.employee_id  IS NULL;


--5. Найти всех работников кому не начислена ЗП.

SELECT employee_name
FROM employees e 
LEFT JOIN employee_salary es 
ON es.employee_id = e.id 
LEFT JOIN salary s 
ON s.id = es.salary_id 
WHERE s.monthly_salary IS NULL;

--6. Вывести всех работников с названиями их должности.


SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id ;


--7. Вывести имена и должность только Java разработчиков.

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Java%';

-- 8. Вывести имена и должность только Python разработчиков.

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Python%';

--9. Вывести имена и должность всех QA инженеров.


SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%QA%';


--10. Вывести имена и должность ручных QA инженеров.

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Manual QA%';


--11. Вывести имена и должность автоматизаторов QA

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов


SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Junior%';


--13. Вывести имена и зарплаты Middle специалистов

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов

SELECT employee_name , r.role_name 
FROM employees e 
JOIN roles_employee re 
ON re.employee_id = e.id 
JOIN roles r 
ON r.id = re.role_id 
WHERE r.role_name  LIKE '%Senior%';


--15. Вывести зарплаты Java разработчиков


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

--16. Вывести зарплаты Python разработчиков


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


--17. Вывести имена и зарплаты Junior Python разработчиков

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


--18. Вывести имена и зарплаты Middle JS разработчиков

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


--19. Вывести имена и зарплаты Senior Java разработчиков

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

--20. Вывести зарплаты Junior QA инженеров

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


--21. Вывести среднюю зарплату всех Junior специалистов

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


--22. Вывести сумму зарплат JS разработчиков

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

--23. Вывести минимальную ЗП QA инженеров

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

--  24. Вывести максимальную ЗП QA инженеров

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


-- 25. Вывести количество QA инженеров

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

--26. Вывести количество Middle специалистов.

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


--27. Вывести количество разработчиков

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


-- 28. Вывести фонд (сумму) зарплаты разработчиков.


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

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию

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

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300


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

--- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300


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


-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

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



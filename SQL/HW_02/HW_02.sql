--1.Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null


CREATE TABLE employees
(
id serial PRIMARY KEY,
employee_name varchar(50) NOT NULL
);

--- проверка есть ли таблица и данные в ней
SELECT *
FROM employees ;



---2. добавление данны в таблицу

INSERT INTO employees (employee_name)
VALUES ('Ted Jons'),
		('Donald Holman'),
		('Shirley Reece'),
		('Terry Frey'),
		('Kevin Schwartz'),
		('Keith Arrington'),
		('Teddy Drake'),
		('Wallace Hopkins'),
		('Matthew Mercer'),
		('Brian Shepard'),
		('Rosalinda Kelley'),
		('Francis Martinez'),
		('Tammy Haworth'),
		('Alex Coleman'),
		('Andrea Waterman'),
		('Ronald Barth'),
		('Henry Vogel'),
		('Michael Lopez'),
		('Terry Sweetman'),
		('Eric Smith'),
		('Edward Hendricks'),
		('Mike Laws'),
		('Scott Plowman'),
		('Walter Henshaw'),
		('Donald Parker'),
		('Heath Horton'),
		('Tyler Massey'),
		('Dennis Thompson'),
		('Charles Williams'),
		('Keith Havens'),
		('George Ortiz'),
		('Jack Connor'),
		('Joel Jensen'),
		('Ryan Bartlett'),
		('Thomas Drummond'),
		('Charles Mitchell'),
		('Peter Cottrell'),
		('Loretta Schubert'),
		('Larry Colon'),
		('Greg Wood'),
		('Anthony Dancy'),
		('Stephen Taveras'),
		('Leroy Turner'),
		('Morgan Casey'),
		('Anthony Gardner'),
		('Jerry Vandergriff'),
		('Alton Viator'),
		('Charlotte Culp'),
		('Jesse Robinson'),
		('Jeffrey Ramsey'),
		('Monique Dickson'),
		('William Berry'),
		('Courtney Sanchez'),
		('Walter Wozniak'),
		('Julio Rudolph'),
		('Alfred Husband'),
		('Charles Lay'),
		('Adam Suazo'),
		('Eugene Crowley'),
		('Scott Heinen'),
		('Juana Higginbotham'),
		('Thomas Cruss'),
		('Maria Alvarez'),
		('George Lyles'),
		('Eugene Price'),
		('Kevin Wiles'),
		('Armando Johnson'),
		('Tony Rutherford'),
		('Clarence Sheehan')
		
RETURNING *;

--TRUNCATE TABLE employees;
--DELETE FROM employees;
--VACUUM employees;

SELECT *
FROM employees ;


---3.Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null 

CREATE TABLE salary
(
id serial PRIMARY KEY,
monthly_salary  int  NOT NULL
);

--- проверка есть ли таблица и данные в ней
SELECT *
FROM salary ;

----4.Наполнить таблицу salary 15 строками:

INSERT INTO salary (monthly_salary)
VALUES   (1000),
		 (1100),
		 (1200),
		 (1300),
		 (1400),
		 (1500),
		 (1600),
		 (1700),
		 (1800),
		 (1900),
		 (2000),
		 (2100),
		 (2200),
		 (2300),
		 (2400),
		 (2500)
		 ;


---5.Таблица employee_salary

---Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
 
CREATE TABLE employee_salary

(
id serial PRIMARY KEY,
employee_id int NOT NULL UNIQUE,
salary_id int NOT null
);



---6.Наполнить таблицу employee_salary 40 строками:


INSERT INTO employee_salary (employee_id, salary_id)
VALUES  (153, 7),
		(161, 4),
		(157, 9),
		(154, 13),
		(163, 4),
		(170, 2),
		(152, 10),
		(155, 13),
		(176, 4),
		(186, 1),
		(183, 7),
		(193, 7),
		(185, 7),
		(203, 7),
		(205, 7),
		(220, 7),
		(215, 7),
		(15, 7),
		(16, 4),
		(17, 9),
		(14, 13),
		(13, 4),
		(10, 2),
		(12, 10),
		(195, 7),
		(188, 7),
		(209, 7),
		(177, 2),
		(159, 10),
		(156, 13),
		(178, 4),
		(190, 1),
		(192, 7)
		RETURNING *
	;
		
--- проверка есть ли таблица и данные в ней
SELECT *
FROM employee_salary ;


--7.Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--8.Поменять тип столба role_name с int на varchar(30)
--9.Наполнить таблицу roles 20 строками:


CREATE TABLE roles
(
id serial  primary key,
role_name int not NULL  unique
);


--8.Поменять тип столба role_name с int на varchar(30)

ALTER TABLE roles
ALTER COLUMN role_name TYPE varchar(30);

---проверить данные в таблице

SELECT *
FROM roles ;

--9. заполнить таблицу данными

INSERT INTO roles (role_name)
values 
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer')
RETURNING *
;



--10.Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

CREATE TABLE roles_employee
(
id serial  PRIMARY KEY,
employee_id Int NOT NULL UNIQUE,
role_id Int NOT NULL,
FOREIGN KEY (role_id) REFERENCES roles (id),
FOREIGN KEY (employee_id) REFERENCES employees (id)
);



--11.Наполнить таблицу roles_employee 40 строками:

INSERT INTO roles_employee (employee_id, role_id)
VALUES 		(148,2),
			(201,4),
			(150,13),
			(155,4),
			(160,2),
			(170,9),
			(177,13),
			(211,3),
			(195,4),
			(199,7),
			(200,10),
			(205,5),
			(202,8),
			(149,9),
			(188,20),
			(182,18),
			(179,15),
			(175,14),
			(159,12),
			(153,10),
			(152,5),
			(163,7),
			(164,8),
			(162,1),
			(167,11),
			(172,2),
			(173,4),
			(174,13),
			(184,4),
			(180,2),
			(166,9),
			(189,13),
			(214,3),
			(210,4),
			(212,7),
			(208,10),
			(209,5),
			(216,8),
			(191,9),
			(198,20);

-- проверить количество записей в таблице roles_employee

SELECT *
FROM roles_employee ;






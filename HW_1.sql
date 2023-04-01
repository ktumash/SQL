create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

create table salary(
	id serial primary key,
	monthly_salary int not null
);

create table employee_salary(
	id serial primary key,
	employee_id Int unique not null, 
	salary_id Int not null
);

drop table employee_salary cascade

drop table roles_employee cascade

create table roles(
	id serial primary key,
	role_name int unique not null
);
		
alter table roles
alter column role_name type varchar(30);

create table roles_employee(
 id serial primary key,
 employee_id int unique not null,  
 role_id int not null,
 foreign key(employee_id)
		references employees(id),
	foreign key(role_id)
		references roles(id)
);

select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;

insert into employees(employee_name)
values('Мельникова_Ксения '),
		('Иванова София'),
		('Буракшаева Юлия'), 
		('Фурсова Елизавета'),
		('Сапсай Иван'),
		('Богословский Артем'), 
		('Самбикина Юлия'),
		('Шпак Ангелина'),
		('Пименов Максим'),
		('Сигида Валерия'), 
		('Миронова Елизавета'),
		('Безуглова Анастасия'),
		('Сергеева Мария'), 
		('Перфильева Милена'), 
		('Химич Елена'), 
		('Бондина Анастасия'), 
		('Лебедева Екатерина'), 
		('Мощева Алина'), 
		('Моругина Ирина'), 
		('Прокопенко Алина'),
		('Ардаков Игорь'),
		('Шепелев Алексей'),
		('Карсева Полина'),
		('Галкин Алексей'),
		('Беляев Михаил'),
		('Апоян Давид'),
		('Шутова Светлана'),
		('Тарасеева Галина'),
		('Шалдыбин Дмитрий'),
		('Оганезов Валерий'),
		('Оленникова Медея'),
		('Оленников Михаил'),
		('Тер-Аракелян Елена'),
		('Герасимов Александр '),
		('Шкадова Татьяна'),
		('Загрекова Дина'),
		('Полторак Матвей'),
		('Коньшина Марина'),
		('Бреева Светлана'),
		('Тюгаева Альфия'),
		('Кормакова Юлия'),
		('Семенова Светлана'),
		('Пчелинцева Наталья'),
		('Киселева Клавдия'),
		('Модаркина Ольга '),
		('Железнова Ольга '),
		('Архангельская Мария'),
		('Логинова Екатерина'),
		('Коваль Лариса'),
		('Косолапкина Елена'),
		('Шахова Вероника'),
		('Донченко Иван'),
		('Бирюков Евгений'),
		('Дылдин Алексей'),
		('Угаров Виктор'),
		('Зюлькин Григорий'),
		('Рыбас Роман'),
		('Миронов Михаил'),
		('Герасимов Александр'),
		('Савицкий Никита'),
		('Соломеин Андрей'),
		('Букреев Михаил'),
		('Петухов Алексей'),
		('Александров Андрей'),
		('Крупников Владислав'),
		('Лебедев Алексей'),
		('Павлов Дмитрий'),
		('Степанов Егор'),
		('Морозов Кирилл'),
		('Попов Леонид');
		
insert into salary(monthly_salary)
values(1000),
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
(2400);

insert into employee_salary(employee_id,salary_id)
values(3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(16,1),
(33,7),
(2,10),
(4,8),
(6,15),
(10,8),
(22,5),
(24,9),
(27,6),
(28,11),
(31,12),
(25,6),
(35,11),
(18,14),
(37,11),
(68,15),
(53,11),
(44,8),
(63,13),
(51,10),
(47,7),
(39,8),
(34,7),
(55,8),
(21,11),
(66,11),
(58,7),
(14,10),
(61,7),
(50,5),
(67,2),
(49,5);


insert into roles(role_name)
values('Junior Python developer'),
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
('Senior Automation QA engineer');

insert into roles_employee(employee_id,role_id)
values(7,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(22,13),
(21,3),
(34,4),
(6,7),
(4,15),
(9,8),
(13,1),
(14,5),
(15,9),
(18,11),
(19,20),
(24,15),
(25,17),
(27,14),
(29,12),
(30,11),
(37,10),
(38,13),
(41,16),
(44,18),
(47,19),
(51,4),
(52,6),
(53,8),
(60,9),
(54,10),
(63,9),
(65,1),
(57,3),
(67,8),
(69,11),
(70,9),
(55,10);


CREATE TABLE public.students(
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);
 drop table employee_salary;

 create table employee_salary(
	id serial primary key,
	employee_id Int unique not null, 
	salary_id Int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(salary_id)
		references salary(id)
);


-- Вывести все поля и все строки

select * from students;

-- Вывести всех студентов в таблице

select name from students;

-- Вывести только Id пользователей

select id from students;

--Вывести только email пользователей

select email from students;

-- Вывести имя и email пользователей

select name, email from students;

-- Вывести id, имя, email и дату создания пользователей

select id, name, email, created_on from students;

-- Вывести пользователей где password 12333

select name from students where password = '12333';

-- Вывести пользователей которые были созданы 2021-03-26 00:00:00

select name from students where created_on = '2021-03-26 00:00:00';

-- Вывести пользователей где в имени есть слово Анна

select name from students where name like '%Anna%';

--Вывести пользователей где в имени в конце есть 8

select name from students where name like '%8';

--Вывести пользователей где в имени в есть буква а

select name from students where name like '%a%';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00

select name from students where created_on = '2021-07-12 00:00:00';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313

select name from students where created_on = '2021-07-12 00:00:00' and password = '1m313';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey

select name from students where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8

select name from students where created_on = '2021-07-12 00:00:00' and name like '%8%';

--Вывести пользователя у которых id равен 110

select name from students where id = '110';


--Вывести пользователя у которых id равен 153

select name, id from students where id = '153';

--Вывести пользователя у которых id больше 140

select name, id from students where id > '140';

--Вывести пользователя у которых id меньше 130

select id, name from students where id < '130';

--Вывести пользователя у которых id меньше 127 или больше 188

select id, name from students where id < '127' or id > '188';

--Вывести пользователя у которых id меньше либо равно 137

select id, name from students where id <='137';

--Вывести пользователя у которых id больше либо равно 137

select id, name from students where id >= '137';

--Вывести пользователя у которых id больше 180 но меньше 190

select id, name from students where id > '180' and id < '190';

--Вывести пользователя у которых id между 180 и 190

select id, name from students where id >='180' and id <= '190'; 

--  или

select id, name from students where id between '180' and '190';

--Вывести пользователей где password равен 12333, 1m313, 123313

select name, password from students where password = '12333' or password = '1m313' or password = '123313';


--Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

select name from students where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00';

--Вывести минимальный id 

select min (id) from students;

--Вывести максимальный.

select max (id) from students;



--Вывести количество пользователей

select count (id) from students;

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

select id, name, created_on from students order by created_on asc;

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

select id, name, created_on from students order by created_on desc;


--Создание таблиц и работа с ними:

create table salary(
id serial primary key,
monthly_salary int not null
);

select * from salary;
select * from roles;

insert into salary(monthly_salary)
values  (1900),
		(2000);
	
insert into salary(id, monthly_salary)
values (7, 1700);

create table roles (
	id serial primary key,
	role_title varchar (50) unique not null

);



insert into roles(role_title)
	values ('Junior_QA'),
		('Middle_QA'),
		('Senior_QA'),
		('Junior_JS_developer'),
		('Middle_JS_developer'),
		('Senior_JS_developer');
	
create table roles_salary
(
		id serial primary key,
		id_role int not null,
		id_salary int not null,
		foreign key  (id_role)
			references roles (id),
		foreign key (id_salary)
			references salary (id)
)

select * from roles_salary;

insert into roles_salary (id_role, id_salary)
	values (1,1),
			(2,3),
			(3,7);

update salary set monthly_salary=1800 where id = 7;

delete from salary where id = 9;

alter table roles add column parking int
;

alter table roles rename column parking to taxi;

alter table roles drop column taxi;




create table salary(
id serial primary key,
monthly_salary int not null
);

select * from salary;
select * from roles;

insert into salary(monthly_salary)
values  (1900),
		(2000);
	
insert into salary(id, monthly_salary)
values (7, 1700);

create table roles (
	id serial primary key,
	role_title varchar (50) unique not null

);



insert into roles(role_title)
	values ('Trainee_QA'),
		('Lead_QA'),
		('Trainee_JS_developer'),
		('Lead_JS_developer');
	
create table roles_salary
(
		id serial primary key,
		id_role int not null,
		id_salary int not null,
		foreign key  (id_role)
			references roles (id),
		foreign key (id_salary)
			references salary (id)
);

select * from roles_salary;

insert into roles_salary (id_role, id_salary)
	values (4,5);

update salary set monthly_salary=1800 where id = 7;

delete from salary where id = 9;

alter table roles add column parking int;

alter table roles rename column parking to taxi;

alter table roles drop column taxi;

alter table roles drop column name;
	
alter table roles drop column namename;

create table staff (
id_staff serial primary key,
name_staff varchar (60),
age_staff int,
foreign key  (id_staff)
			references roles (id)
		);
	
select * from staff;

insert into staff (id_staff, name_staff, age_staff)
	values (1,('Maria'),34),
			(2,('Lena'),25),
			(3,('Kirill'),46);
		
insert into staff (id_staff, name_staff, age_staff)
	values (4,('Anya'),20),
			(5,('Lana'),25),
			(6,('Mikl'),30),
			(7,('Poly'),35),
			(8,('Den'),40),
			(9,('Igor'),45);


insert into roles_salary (id_role, id_salary)
	values (1,1),
			(2,3),
			(3,7);

-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select roles.role_title, salary.monthly_salary from roles join salary 
	on salary.id = roles.id;

-- Вывести всех работников у которых ЗП меньше 1000.

select roles.role_title, salary.monthly_salary from roles join salary 
	on salary.id = roles.id where salary.monthly_salary<1000 ;

-- Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary from salary;

-- Вывести все зарплатные позиции  меньше 1000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary from salary where monthly_salary<1000;


-- Найти всех работников кому не начислена ЗП.

select roles.role_title, salary.monthly_salary from roles left join salary 
	on salary.id = roles.id;

 -- Вывести всех работников с названиями их должности.

select staff.name_staff, roles.role_title from staff left join roles 
on id_staff=roles.id;


 -- Вывести имена и должность только Java разработчиков.

select staff.name_staff, roles.role_title from staff right join roles on 
id_staff=roles.id where roles.role_title like '%JS%';

 -- Вывести имена и должность всех QA инженеров.

select staff.name_staff, roles.role_title from staff right join roles on 
id_staff=roles.id where roles.role_title like '%QA%';

--Вывести имена и должность только Python разработчиков.

select staff.name_staff, roles.role_title from staff right join roles on 
id_staff=roles.id where roles.role_title like '%Python%';

-- Вывести имена и должность всех ручных QA инженеров.


select staff.name_staff, roles.role_title from staff right join roles on 
id_staff=roles.id where roles.role_title like '%manualQA%';


--Вывести имена и должность автоматизаторов QA


select staff.name_staff, roles.role_title from staff right join roles on 
id_staff=roles.id where roles.role_title like 'AQA';








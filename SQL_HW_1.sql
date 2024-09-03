create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert
	into
	employees(employee_name)
values ('Alexander'),
       ('Alexey'),
       ('Albert'),
       ('Anatoliy'),
       ('Anna'),
       ('Artem'),
       ('Artur'),
       ('Arina'),
       ('Alina'),
       ('Anton'),
       ('Boris'),
       ('Barbara'),
       ('Bronislav'),
       ('Vladislav'),
       ('Vadim'),
       ('Valentin'),
       ('Valeriy'),
       ('Vasiliy'),
       ('Victor'),
       ('Vladimir'),
       ('Gennadiy'),
       ('Georgiy'),
       ('Galina'),
       ('Gulfia'),
       ('Dmitriy'),
       ('Denis'),
       ('Danila'),
       ('Yevgeniy'),
       ('Yegor'),
       ('Zakhar'),
       ('Ivan'),
       ('Inna'),
       ('Irina'),
       ('Isabelle'),
       ('Igor'),
       ('Ilia'),
       ('Kirill'),
       ('Konstantin'),
       ('Leonid'),
       ('Makar'),
       ('Maria'),
       ('Malena'),
       ('Miron'),
       ('Maxim'),
       ('Marta'),
       ('Nina'),
       ('Nikolai'),
       ('Oleg'),
       ('Olga'),
       ('Oksana'),
       ('Pavel'),
       ('Petr'),
       ('Polina'),
       ('Rodion'),
       ('Roman'),
       ('Svetlana'),
       ('Sergei'),
       ('Stepan'),
       ('Tatiana'),
       ('Timur'),
       ('Timofei'),
       ('Tamara'),
       ('Fedor'),
       ('Faina'),
       ('Eduard'),
       ('Elina'),
       ('Yury'),
       ('Yan'),
       ('Yaroslav'),
       ('Yulia');

create table salary(
      id serial primary key,
      monthly_salary int not null
      );

insert
	into
	salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);

create table employee_salary(
     id serial primary key,
     employee_id int not null unique,
     salary_id int not null);

insert
	into
	employee_salary(employee_id,
	salary_id)
values (2,10),
       (3,4),
       (4,5),
       (1,1),
       (5,3),
       (20,2),
       (25,6),
       (43,9),
       (34,2),
       (39,7),
       (67,14),
       (53,8),
       (50,15),
       (66,9),
       (70,6),
       (40,11),
       (61,4),
       (51,12),
       (31,1),
       (33,2),
       (38,1),
       (75,3),
       (29,7),
       (83,4),
       (13,5),
       (80,2),
       (7,4),
       (85,3),
       (12,8),
       (90,14),
       (18,8),
       (93,4),
       (26,13),
       (88,12),
       (19,13),
       (69,9),
       (14,15),
       (91,5),
       (44,6),
       (77,11);

create table roles(
          id serial primary key,
          role_name int not null unique);

alter table roles
         alter column role_name type varchar(30);

insert
	into
	roles(role_name)
values ('Junior Python developer'),
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

create table roles_employee(
        id serial primary key,
        employee_id int not null unique,
        role_id int not null,
        foreign key(employee_id)
           references employees(id),
        foreign key(role_id)  
           references roles(id)
        );

insert
	into
	roles_employee(employee_id,
	role_id)
values (5,3),
       (10,3),
       (15,2),
       (16,1),
       (11,5),
       (18,1),
       (21,6),
       (20,18),
       (8,4),
       (13,2),
       (30,7),
       (35,19),
       (45,20),
       (40,8),
       (42,4),
       (50,14),
       (51,9),
       (69,9),
       (61,10),
       (67,13),
       (55,7),
       (58,7),
       (62,15),
       (4,11),
       (9,12),
       (1,13),
       (22,10),
       (19,5),
       (33,14),
       (26,12),
       (28,15),
       (41,17),
       (66,16),
       (44,17),
       (57,6),
       (63,16),
       (48,18),
       (29,20),
       (49,19),
       (17,5);
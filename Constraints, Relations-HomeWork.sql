create database Course
use Course
create table Teachers(
 [Id] int primary key identity(1,1),
 [Name] nvarchar(50) not null,
 [Surname] nvarchar (50),
 [Email] nvarchar(100) unique,
 [Age] int check (Age >= 25)
)

create table Students(
[Id] int primary key identity(1,1),
[FullName] nvarchar(100) not null,
[Age] int check (Age >= 17),
[Address] nvarchar (100)
)

insert into Teachers([Name],[Surname],[Email],[Age])
values('Cavid','Bashirov','cavid@gmail.com',29),
      ('Elchin','Aliyev','elchin@gmail.com',38),
	  ('Aydin','Qasimov','aydin@gmail.com',29)


insert into Students([FullName],[Age],[Address])
values('Reshad Aghayev',29,'Nefchiler'),
      ('Aykhan Aghayev',24,'Bineqedi'),
	  ('Kamran Muradov',25,'Sumqayit'),
	  ('Ilqar Shiriyev',28,'Yasamal')
	  
select * from Teachers

select * from Students

select Count(*) as 'Students count' from Students

select * from Teachers where [Age]>27

select * from Teachers where [Email] like'%c%'


update Teachers
 set[Age] = 26
 where [Id] = 3

update Teachers
set[Email]='elhin@outlook.az'
where[Id] = 2
create database CARS
create table chinacar (carid int,name varchar(10),town varchar(10),birth_year date)
select* from chinacar
insert into chinacar (carid,name,town,birth_year) values
(1,'BYD','CHINA','2015')
,(2,'KIA','CHINA','2005')
,(3,'BMW','GERMANY','1924')
,(4,'CHEVROLET','USA','1914')
select *from chinacar


create database TELEPHONS
create table telefon(telephonid int,name varchar(20),town varchar(10),birth_date date,models char(10))

select *from telefon
insert into telefon(telephonid,name,town,birt_date,models) values
(1,'APPLE','USA','2000','IPHONE 3')
,(2,'SAMSUNG','CHINA','2001','SAMSUNG GALAXY')
,(3,'HUAWEI','KOREA','2015','HUAWEI Y2')
,(4,'OPPO','CHINA','2022','OPPO A16')


select*from telefon

create database water
create database water  (waterid int,name varchar (10),town varchar (10),birth_year year,color char(10))
select *from water
insert into water  (waterid,name,town,birty_year,color) values

(1,'COCO COLA','USA','1911','BLACK')
,(2,'PEPSI','USA','1912','BLACK')
,(3,'HYDORLIFE','UZB','2004','WHITE')
,(4,'REDBULL','AUSTRIA','1988','YELLOW')


SELECT*FROM water





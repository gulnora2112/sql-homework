create Database Homework_1
select 5001 as [salesman_id], 'James Hong' as name, 'New York' as [city], '0,15' as 'comission' 
union all
select 5002 as [salesman_id], 'Nail Knite' as name, 'Paris' as [city], '0,13' as 'comission' 
union all
select 5005 as [salesman_id], 'Pit Alex' as name, 'London' as [city], '0,11' as 'comission' 
union all
select 5006 as [salesman_id], 'Mc Lyon' as name, 'Paris' as [city], '0,14' as 'comission' 
union all
select 5007 as [salesman_id], 'Paul Adam' as name, 'Rome' as [city], '0,13' as 'comission' 
union all
select 5003 as [salesman_id], 'Lausen Hen' as name, 'San Jose	' as [city], '0,12' as 'comission'



/*CREATE DATABASE Salesman
Select from Salesman
SELECT 5001 as 'salesman_id', 'name', 'city', 'commission'*/
CREATE TABLE Salesman (Salesman_id varchar(10), name varchar(20), city varchar(15), comission float)
Insert into Salesman values
(5001, 'James Hong','New York',    0.15),
(5002, 'Nail Knite', 'Paris',       0.13),
(5005, 'Pit Alex','London',      0.11), 
(5006, 'Mc Lyon','Paris',       0.14),
(5007, 'Paul Adam','Rome',        0.13),
(5003, 'Lausen Hen','San Jose',    0.12);
select * from Salesman

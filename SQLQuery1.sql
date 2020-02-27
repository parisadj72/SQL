create database dbep2
---------------------
use dbep2
------------------------
create table std
(
	s# int primary key clustered check(s# like '[1-9]%'),
	name varchar(16),
	Family varchar(20),
	field tinyint check(field like '[1-9][0-9]'),
	sex char(1) check(sex='m' or sex='f'),
	Gpa dec(5,2) null,
	addresss varchar(40) null,
	CityCode int,
	TelNo int null check(TelNo like '[1-9]%'),
	Ssno bigint check(Ssno like '[1-9]%'),
	Birthday dateTime ,
)
------------------------------
alter table std add constraint un unique(ssno)
-------------------------------
create table preReq
(
	c# char(7) constraint fk_1 foreign key(c#) references crs(c#),
	cp# char(7),
	seqno tinyint check(seqno between 1 and 5)
	constraint pk primary key(c#,cp#,seqNo)
)
-----------------------------------
create table coreq
(
	c# char(7) constraint fk_10 foreign key(c#) references crs(c#),
	cc# char(7),
	seqno tinyint check(seqno between 1 and 5)	
	constraint pk_8 primary key(c#,cc#,seqno)
)
-------------------------------------
create table codeFile
(
	field varchar(8),
	Typee varchar(4),
	Descc varchar(30),
	constraint pk_1 primary key(field,Typee,descc)
)
------------------------------------------
create table crs
(
	c# char(7) primary key check(c# like '[1-9]%'),
	cname varchar(30),
	unit dec(2,1),
	passgrade dec(5,2) check(passgrade between 1 and 20),
	crsType char(1) check(crsType='p' or crsType='t'),
)
-------------------------------------------------
create table stdtrm
(
	trmNo char(4) check(trmNo like '[3-9][0-9][0-9][1-3]'),
	s# int constraint fk_3 foreign key(s#) references std(s#),
	trmGpa dec(5,2) null
	constraint pk_4 primary key (trmNo,s#)
)
--------------------------------------------
create table reg
(
	trmNo char(4)check(trmNo like '[1-9][0-9][0-9][1-3]') ,
	s# int constraint fk_5 foreign key(s#) references std(s#),
	c# char(7) constraint fk_6 foreign key(c#) references crs(c#),
	grade dec(5,2) check(grade between 0 and 20) null
	constraint pk_2 primary key (trmNo,s#,c#)
)
--------------------------------
alter table reg add constraint fk_4 foreign key(trmNo,s#) references stdtrm(trmNo,s#)
--------------------------------------------------------------
--insert into std values(21,'ali','najar',10,'m',18.54,'a',50,19,123,'1391/01/01')
--insert into std values(11,'ali1','najar1',11,'m',19,'b',50,22,124,'01-01-1391')
--insert into std values(12,'ali2','najar2',12,'m',20,'c',51,03,125,'03-01-1391')
---insert into std values(01,'reza','dayijavad',12,'m',11,'d',52,45,126,'01-01-1391')
--insert into std values(34,'parisa','javdani',01,'f',10,'e',52,93,127,'05-01-1391')
--insert into std values(42,'delaram','rad',25,'salam',15,'f',53,75,128,'01-01-1391')
-----------------------------------------------------------------
--insert into reg values(3131,1,1076358,15)
--insert into reg values(2003,2,2434093,16)
--insert into reg values(3002,3,3423456,18)
--insert into reg values(4562,4,7234568,13)
--insert into reg values(123,5,3423456,19)
--insert into reg values(5702,6,7234567,20)
--insert into reg values(1294,7,1076358,15)
--insert into reg values(1234,8,3423456,0)
---------------------------------------------------------------------
--insert into crs values(1076358,'al',12,18,'T')
--insert into crs values(2434093,'me',13,19,'P')
--insert into crs values(3423456,'na',5,20,'P')
--insert into crs values(7234568,'pa',23,13,'T')
--insert into crs values(0134588,'en',4,17,'P')
--insert into crs values(92,'ry',19,16,'T')
--insert into crs values(3423456,'mo',6,12,'P')
--insert into crs values(7234567,'as',15,10,'T')
------------------------------------------------------------------------
--insert into coreq values(7234568,3423456,4)
--insert into coreq values(3423456,2434093,2)
--insert into coreq values(7234567,1076358,3)
--------------------------------------------------------------------------
--insert into preReq values(3423456,1076358,4)
--insert into preReq values(2434093,7234567,3)
-----------------------------------------------------------------------
--insert into codeFile values('a','b','c')
--insert into codeFile values('d','e','f')
------------------------------------------------------------------------
--insert into stdtrm values(3123,10,19)
--insert into stdtrm values(4021,11,17)
--insert into stdtrm values(6722,12,13)

------------------alef-------------------------------
select std.name,std.s#,crs.cname,crs.c# from std,crs
where std.s# in
(
	select reg.s# from reg 
	where reg.c# 
	not in
	(
		select preReq.cp# from preReq where preReq.c#=reg.c#
	)
)
and crs.c# in
(
	select crs.c# from reg 
	where reg.c# 
	not in
	(
		select preReq.cp# from preReq where preReq.c#=reg.c#
	)
)
--------------------------------------
select std.name,std.s#,crs.cname,crs.c# from std,crs
where std.s# in
(
	select reg.s# from reg 
	where reg.c# 
	not in
	(
		select coreq.cc# from coreq where coreq.c#=reg.c#
	)
)
and crs.c# in
(
	select crs.c# from reg 
	where reg.c# 
	not in
	(
		select coreq.cc# from coreq where coreq.c#=reg.c#
	)
)
-----------------soal 5-----------------
create function dbo.fn2_stdGpa(@sno int)
returns int
as
begin
declare @sum int
declare @tedad int
declare @gpa int
set @sum=(select sum(grade) from reg where reg.s#=@sno )
set @tedad=(select COUNT(unit) from crs,reg where crs.c#=reg.c# )
set @gpa=@sum/@tedad
if @sum is null set @gpa=-1
return @gpa
end
-----------------soal 6 ???!!!!----------------------
update std 
set Gpa=dbo.fn2_stdGpa(std.s#)
------------------soal 7----------------
create function dbo.fn_toppassunit(@n int)
returns int 
as 
begin
declare @sum int
set @sum=(select SUM(unit) from reg,crs where crs.c#=reg.c# and reg.s#=@n and grade>0)
if @sum is null set @sum=-1
return @sum
end
------------------soal 10--------------------------------
create function dbo.fn_regctrl(@n int)
returns int
as 
begin 
declare @natije int
if 
@n in
(
	select reg.s# from reg 
	where reg.c# 
	in
	(
		select preReq.cp# from preReq where preReq.c#=reg.c#
	)
) 
set @natije=1
else
if @n in
(
	select reg.s# from reg 
	where reg.c# 
	in
	(
		select coreq.cc# from coreq where coreq.c#=reg.c#
	)
)
set @natije=2
else 
if @n in
(
	(
		select reg.s# from reg 
		where reg.c# 
		in
		(
			select preReq.cp# from preReq where preReq.c#=reg.c#
		)
	)
	intersect
	(
		select reg.s# from reg 
		where reg.c# 
		in
		(
			select coreq.cc# from coreq where coreq.c#=reg.c#
		)
	)
)
set @natije=3
else set @natije=0
return @natije
end
------------------soal 11--------------------------
exec sp_helptext 'dbo.fn_regctrl'
-------------------soal 12 -----------------------------
select crs.cname from crs
where c# in 
(
	select c# from crs where c# like ('1122%') or c# like('2233%')
)
---------------------------------------------------------
create database dbp
-------------------------------------------------------------------
use dbp
-----------------------------------------------------------------
create table customers
(
	cust_code char(5) primary key,
	first_name nvarchar(50),
	last_name nvarchar(100),
	adress nvarchar(max),
	country varchar(100),
	zip_code char(10),
	phone_no int
)
------------------------------------------------------------------
create table products
(
	prod_code char(5) primary key,
	prod_name nvarchar(50),
	descriptionn nvarchar(max),
	Unit_price int
)
-----------------------------------------------------------------------
create table employees
(
	emp_code char(5) primary key,
	first_name nvarchar(50),
	last_name nvarchar(100),
	title nvarchar(max),
	phone_no int
)
--------------------------------------------------------------------
create table shipment_Methods
(
	ship_Method_ID char(5) primary key,
	ship_method char(100)
)
---------------------------------------------------------------------
create table orders
(
	order_code char(5) primary key,
	cust_code char(5) 
constraint fk_cust_code foreign key (cust_code) references customers(cust_code), 
	emp_code char(5) 
constraint fk_emp_code foreign key (emp_code) references employees(emp_code),
	order_Dt datetime,
	ship_name nvarchar(50),
	ship_address nvarchar(max),
	ship_country nvarchar(100),
	ship_phone int,
	ship_Dt datetime,
	ship_Method_ID char(5) 
constraint fk_ship_Method_ID foreign key (ship_Method_ID) references shipment_Methods(ship_Method_ID),
	Freight_Charge int,
	sales_tax int
)
--------------------------------------------------------------------------
create table order_Details
(
	order_detail_ID char(5) primary key,
	order_code char(5)
constraint fk_order_code1 foreign key (order_code) references orders(order_code),
	prod_code char(5) 
constraint fk_prod_code foreign key (prod_code) references products(prod_code),
	quantity int,
	Discound int,
	Total_cost int
)
----------------------------------------------------------------------
create table payment_mode
(
	payment_Mode_ID char(5) primary key,
	payment_Mode char(50)
)
---------------------------------------------------------------------
create table payments
(
	payment_code char(5) primary key,
	order_code char(5) 
constraint fk_order_code foreign key (order_code) references orders(order_code),
	payment_Amount int,
	payment_Dt datetime,
	payment_Mode_ID char(5)
constraint fk_payment_Mode_ID foreign key (payment_Mode_ID) references payment_mode(payment_Mode_ID),
	creditCard_no int,
	cardHolders_name nvarchar(50),
	creditCardExpiry_Dt datetime
)

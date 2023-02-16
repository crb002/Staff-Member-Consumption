create database empman;

use empman;

create table admin(id int primary key, username varchar(20) collate latin1_general_cs, password varchar(20) collate latin1_general_cs, division varchar(20));
insert into admin values(137, "admin", "admin", "Admin");

create table users(id int primary key, username varchar(20), password varchar(20), dividion varchar(30));

create table Staff_information(id int primary key not null, first_name varchar(20), last_name varchar(20), Dob int default null, Email varchar(20), Telephone varchar(20), Address varchar(20), Department varchar(20), Image varchar(50), Gender varchar(10), Salary float(10,3), Address2 varchar(30), Apartment varchar(20), Post_code int, Designation varchar(20), Status varchar(20), Date_hired date, Job_title varchar(20));

create table Allowance(id int primary key not null unique, overtime varchar(30), medical varchar(20), bonus varchar(20), other varchar(20), emp_id int, salary varchar(20) default null, rate float(10,3) default null, total_allowance varchar(20), fisrtname varchar(20), surname varchar(20), created_by varchar(30));

create table Deductions(id int primary key not null unique, firstname varchar(20), surname varchar(20), salary varchar(20), deduction_amount varchar(20), deduction_reason varchar(100), emp_id int, made_by varchar(20));

create table audit(id int, date varchar(30), status varchar(30));

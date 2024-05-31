create database zoho;
use zoho;
create table Emp
( 
Emp_ID int,
First_name varchar(50),
Last_name varchar(50),
Salary int,
Email varchar(50),
dept_ID int,
foreign key (dept_id) references dept (dept_id)
);
desc emp;
show tables;
insert into emp values(1,"pavi","d",10000,"pavi@gmail.com",1);
select * from emp;
select first_name,salary from emp;
insert into emp(first_name,last_name) values("dinesh","raj");
insert into emp values(2,"kalai","devan",20000,"kalai@gmail.com",2);
insert into emp values(3,"sahana","santhosh",30000,"sahu@gmail.com",3);
insert into emp values(4,"snega","ram",30000,"snega@gmail.com",4);
insert into emp values(5,"wesline","rinisha",40000,"wes@gmail.com",5);
insert into emp values(2,"nive","jay",50000,"nive@gmail.com",6);
insert into emp values(7,"steven","king",70000,"king@gmail.com",7);
insert into emp values(8,"neena","grant",80000,"neena@gmail.com",8);
insert into emp values(9,"john","mathew",90000,"john@gmail.com",9);
insert into emp values(10,"jim","jack",100000,"jim@gmail.com",10);
insert into emp values(11,"parker","ran",110000,"ran@gmail.com",11);
insert into emp values(12,"rick","novak",120000,"rick@gmail.com",12);
insert into emp values(13,"susan","connor",130000,"sussan@gmail.com",13);
insert into emp values(14,"bobby","baker",140000,"bobby@gmail.com",14);
insert into emp values(15,"fred","roy",150000,"roy@gmail.com",15);
insert into emp values(16,"will","jack",160000,"jack@gmail.com",16);
insert into emp values(17,"elsa","dana",170000,"dana@gmail.com",17);
insert into emp values(18,"erin","green",180000,"erin@gmail.com",18);
insert into emp values(19,"anna","hart",190000,"hart@gmail.com",19);
insert into emp values(20,"laura","jeff",200000,"jeff@gmail.com",20);
select * from emp where emp_ID > 7;
select * from emp where emp_ID > 7;
delete from emp where first_name = "dinesh";
update emp set emp_id=6 where dept_id=6;
create table dept
(
dept_id int primary key,
d_name varchar(50),
manager varchar(50)
);
show tables;
desc emp;
desc dept;
update emp set dept_id=2 where emp_id>=19;
insert into dept values(5,"developer","aryan");
select*from dept;
delete from dept where dept_id=null and d_name=null and manager=null;
truncate dept;
insert into dept values(1,"hr","aryan");
insert into dept values(2,"sales","rayan");
insert into dept values(3,"developer","john");
insert into dept values(4,"tester","ram");
insert into dept values(5,"acc","suresh");
create table employee 
(
Emp_ID int,
First_name varchar(50),
Last_name varchar(50),
Salary int,
Email varchar(50),
dept_ID int,
foreign key (dept_id) references dept (dept_id)
);
insert into employee values(1,"pavi","d",10000,"pavi@gmail.com",1);
insert into employee values(2,"kalai","devan",20000,"kalai@gmail.com",2);
insert into employee values(3,"sahana","santhosh",30000,"sahu@gmail.com",3);
insert into employee values(4,"snega","ram",30000,"snega@gmail.com",4);
insert into employee values(5,"wesline","rinisha",40000,"wes@gmail.com",5);
insert into employee values(6,"nive","jay",50000,"nive@gmail.com",1);
insert into employee values(7,"steven","king",70000,"king@gmail.com",1);
insert into employee values(8,"neena","grant",80000,"neena@gmail.com",4);
insert into employee values(9,"john","mathew",90000,"john@gmail.com",3);
insert into employee values(10,"jim","jack",100000,"jim@gmail.com",1);
insert into employee values(11,"parker","ran",110000,"ran@gmail.com",5);
insert into employee values(12,"rick","novak",120000,"rick@gmail.com",2);
insert into employee values(13,"susan","connor",130000,"sussan@gmail.com",3);
insert into employee values(14,"bobby","baker",140000,"bobby@gmail.com",4);
insert into employee values(15,"fred","roy",150000,"roy@gmail.com",5);
insert into employee values(16,"will","jack",160000,"jack@gmail.com",1);
insert into employee values(17,"elsa","dana",170000,"dana@gmail.com",5);
insert into employee values(18,"erin","green",180000,"erin@gmail.com",3);
insert into employee values(19,"anna","hart",190000,"hart@gmail.com",5);
insert into employee values(20,"laura","jeff",200000,"jeff@gmail.com",2);
select *from employee;
truncate employee;
update employee set dept_id=7 where emp_id=10;
select employee.emp_id,employee.first_name,employee.dept_id,dept.dept_id,dept.d_name,dept.manager from employee,dept where employee.dept_id=dept.dept_id;
select employee.emp_id,employee.first_name,employee.dept_id,dept.dept_id,dept.d_name,dept.manager from employee inner join dept on employee.dept_id=dept.dept_id;
select employee.emp_id,employee.first_name,employee.dept_id,dept.dept_id,dept.d_name,dept.manager from employee right join dept on employee.dept_id = 4 and dept.dept_id = 4;
select employee.emp_id,employee.first_name,employee.dept_id,dept.dept_id,dept.d_name,dept.manager from employee left join dept on employee.dept_id = 5  and dept.dept_id = 5;
select employee.emp_id,employee.first_name,employee.dept_id,dept.dept_id,dept.d_name,dept.manager from employee full join dept on employee.dept_id = dept.dept_id;
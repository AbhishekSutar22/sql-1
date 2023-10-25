use abhishek
go

select name,city from student where trainerid between 1 and 3

--non clustered index on trainerid column
create index Ix_student_trainerid_1
on student(trainerid desc)

-- create separate index table
--trainerid | Row_Addresses

--covering index
create index Ix_student_trainerid_2
on student(trainerid desc,name,city)

-- create separate index table
--trainerid | name | city | Row_Addresses

select name,city from student where trainerid between 1 and 3

select * from student order by name

-- can we creat multiple clustered index?
--NO
--in our project we have a query used multiple times and we are filtering records another column except PK column
-- can we create clustered index on other column than pk column?
--YES

create table Flipkart
(
id int not null,
name varchar(50),
Unitprice int
)
go
insert into Flipkart values
(1,'Shirt',499),(2,'T-Shirt',199),(3,'shoes',999)

select * from Flipkart

-- creating primary
alter table Flipkart
add constraint pk_Customer_Id
primary key(Id)

go

-- drop index pk_Customer_Id on Flipkart







































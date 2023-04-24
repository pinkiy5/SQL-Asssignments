use customer_data;
#Create a table EMP1 with following structure. ID Name Basic Designation Age Column Description: 
#- ID Number (2) Name Varchar2 (10) Basic Number (6, 2) Designation Varchar2 (10) Age Number (2)
create table EMP1( ID int (2),
                    `Name` Varchar (10),
                    Basic float(6, 2),
                    Designation Varchar (10) ,
                    Age int (2));
#Change the field size of Name column of the EMP1 table from 10 to 15. 
alter table EMP1 modify `Name`  varchar(15);
#Create another table EMP_trainee with the same (changed) structure.
# The column ID to be renamed as Emp_id in the EMP_trainee table.
create table EMP_trainee(ID int (2),
                    `Name` Varchar (10),
                    Basic float(6, 2),
                    Designation Varchar (10) ,
                    Age int (2));
alter table EMP_trainee  rename column  ID to Emp_id;  
# Insert following data in EMP1 table: - (1, Rohit, 6700, Manager, 24)
# (2, Sunil, 6200, Engineer, 27) (3, Payal, 6300, Engineer, 25) 
#(4, Kunal, 6700, Trainee, 28) (5, Sunita, 6230, Trainee, 26) (6, Bimal, 7000, Trainee, 25) 
insert into EMP1 values(1, 'Rohit', 6700, 'Manager', 24); 
insert into EMP1 values(2, 'Sunil', 6200, 'Engineer', 27);
insert into EMP1 values (3, 'Payal', 6300, 'Engineer', 25);
 insert into EMP1 values(4, 'Kunal', 6700, 'Trainee', 28) ;
 insert into EMP1 values(5, 'Sunita', 6230, 'Trainee', 26);
 insert into EMP1 values(6, 'Bimal', 7000, 'Trainee', 25);
 #  Display the structure of both the tables.
 select * from EMP1;
 select * from EMP_trainee;
 #Add columns Skills (data type-varchar2 and size-10) and DOJ (data type-date) 
 #to the EMP1 table and add data for the Skills and DOJ columns according to your own wish. 
alter table EMP1 add Skills varchar(10);
alter table EMP1 add DOJ date;
insert into EMP1(Skills, DOJ)values('html','2011-03-4'),('c','2001-05-2'),('java','2002-04-6'),('web','2003-04-1'),('c++','2001-09-1'),('html','2002-12-3');
#Change the designation of all trainees in EMP_trainee table to ‘Programmer _Trainee’
update EMP_trainee set Designation = 'Programmer_Trainee' where Emp_id = 4;
update EMP_trainee set Designation = 'Programmer_Trainee' where Emp_id = 5;
update EMP_trainee set Designation = 'Programmer_Trainee' where Emp_id = 6;

#Update more than one row in one query in EMP1 table. 
update EMP1 set Basic = 6500 and Age = 23 where ID = 3;
#Change the data type of ID in EMP1 table to varchar2 and increase the data size to 5. 
alter table EMP1 modify ID  int(5);
#Display both the tables EMP1 and EMP_trainee. 
select * from EMP1;
select * from EMP_trainee;
#Rename the column Age of EMP1 table to Age_in_Years.
alter table EMP1  rename column  Age to Age_in_Years;  









 
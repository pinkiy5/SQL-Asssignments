use customer_data;
#Create table EMPLOYEE with the following details. FIELD NAME TYPE EMPLOYEE_ID NUMBER (6) LAST_NAME VARCHAR2(25) 
#JOB_ID VARCHAR2(10) SALARY NUMBER (8,2) COMM_PCT NUMBER (4,2) MGR_ID NUMBER (6) DEPARTMENT_ID NUMBER (4) 
create table employee(EMPLOYEE_ID int (6),
LAST_NAME VARCHAR(25),
JOB_ID VARCHAR(10),
SALARY float (8,2),
COMM_PCT float(4,2),
MGR_ID int (6),
DEPARTMENT_ID int (4));
#Fill the 5 records
insert into employee values(198, 'Connell','SH_CLERK', 2600, 2.5, 124, 50); 
insert into employee values(199, 'Grant', 'SH_CLERK', 2600, 2.2, 124, 50);
insert into employee values (200, 'Whalen', 'AD_ASST', 4400, 1.3, 101, 10);
insert into employee values(201, 'Hartstein', 'IT_PROG', 6000, null, 100, 20) ;
insert into employee values(202, 'Fay', 'AC_MGR', 6500, null, 210, 20);
#Display last_name, job_id, employee_id for each employee with employee_id appearing first. 
select EMPLOYEE_ID,LAST_NAME,JOB_ID FROM employee;
#Display the employee details of the employee who’s last_name is Fay.
select * from employee where LAST_NAME = 'Fay';
#Display unique job_id from EMPLOYEE table. Give alias name to the column as JOB_TITLE. 
select distinct(JOB_ID) from employee as JOB_TITLE;
#Display last_name, salary and salary increase of Rs300. Give the new column name as ‘Increased Salary’.
select LAST_NAME,SALARY as Increased_salary FROM employee where SALARY = SALARY+300 ;
#Display the Employee_id, Department_id and Salary all employees whose salary is greater than 5000.
select EMPLOYEE_ID,DEPARTMENT_ID, SALARY from employee where SALARY>5000;
#Display the Last_Name and Salary of all employees whose salary is between 4000 and 7000. 
select LAST_NAME, SALARY from employee where SALARY between 4000 and 7000;



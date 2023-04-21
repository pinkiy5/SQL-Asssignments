create database customer_data;
# assignment 1
use customer_data;
#Create the following table CUSTOMER
create table customer(Cust_id Varchar (5),
                      Fname Varchar(15),      
                      Lname Varchar(15),
                      Area Char (2),
                      Phone int(10), 
                      DOB date, 
                      Payment float(6,2) );   
# entering data into table
insert into customer values('A01','Ivan','Ross','SA',6125467,'1986-01-15',800.50);
insert into customer values('A02','Vandana','Ray','MU',5560379,'1987-12-20',1000.75);
insert into customer values('A03','Pramada','Jauguste','DA',4560389,'1967-07-25',500.00);
insert into customer values('A04','Basu','Navindi','BA',6125401,'1989-02-30',860.00);
insert into customer values('A05','Ravi','Shridhar','NA',null,'1989-02-15',500.50);
insert into customer values('A06','Rukmini','Aiyer','GH',5125274,'1987-07-23',1500.50);                      
#Display the structure of the table you have created.
desc customer;   
#Display the data of the created table. 
select * from customer; 
#Insert a row which will accept system date.
insert into customer_data(Cust_id, Fname, Lname, Area, Phone, DOB, Payment) 
values(7,'aasha','Bhosle','Bhiwadi',35267687,'9999-7-13',9134.34,current_date()); 
# Display the data in the table.  
select * from customer;
#Update the phone numbers of customer A02 and A04
update customer set Phone = 88776655 where Cust_id = 'A02';
update customer set Phone = 88432156 where Cust_id = 'A04';
#Update the date of birth of customer A03 and A05
update customer set DOB = '2003-4-21' where Cust_id = 'A03';
update customer set DOB = '2004-5-23' where Cust_id = 'A05';
#Display the updated table
select * from customer;
#Delete 2 rows from the table for customers A01 and A05
delete from customer where Cust_id = 'A01';
delete from customer where Cust_id = 'A05';
#Delete all the rows from the table.
truncate table customer;
#Insert 5 records according to your own wish.
insert into customer values(1,'Shifa','Das','Hooghly',98265277,'9999-03-23',2425.45);
insert into customer values(2,'Abhishek','Sarkar','Kolkata',76543816,'9999-05-4',7813.45);
insert into customer values(3,'sourav','Chakrabarty','Patuli',76123458,'9999-7-21',5643.89);
insert into customer values(4,'Atif','Mondal','Nadia',982436784,'9999-7-30',6721.23);
insert into customer values(5,'soumya','Poddar','New town',96413276,'9999-10-12',7845.12);
#Update one record based on any criteria according to your own wish.
update customer set Area = 'rewari' where Cust_id = 3;
#Delete any 1 record from the table based on particular criteria. 
delete from customer where Cust_id = 5;

 







                  

use addressbook_serviceDB;
select DB_NAME();

create table address_book
(
ID int identity(1,1) primary key,
firstname varchar(100) NOT NULL,
lastnane varchar(100) NOT NULL,
address varchar(250) NOT NULL,
city varchar(100) NOT NULL,
state varchar(100) NOT NULL,
zip varchar(6) NOT NULL,
phone varchar(12) NOT NULL,
email varchar(100) NOT NULL
);

select * from address_book;

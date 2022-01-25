
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

insert into address_book values
('Ismael ','Whitlatch','2319  Burton Avenue','Memphis','Tennessee','38117','901-765-8987','sa5bxlla2e@temporary-mail.net'),
('Christopher ','Forst','2846  Tori Lane','Salt Lake City','Utah','84113','801-587-0002','ctmgz50esj@temporary-mail.net'),
('David ','Washington','3379  Echo Lane','TULAROSA','New Mexico','88352','269-962-6511','wkephpw9q2@temporary-mail.net'),
('Byron ','Daniels','4385  West Street','Grand Rapids','Michigan','49546','616-575-8233','6y4ug4knmib@temporary-mail.net'),
('James ','Juarez','12564  Clay Street','Indianapolis','Indiana','46214','317-410-3617','penlzpd00f@temporary-mail.net')

update address_book
SET city='Frankfurt', state = 'Ohio'
WHERE firstname = 'Ismael';

select * from address_book

DELETE from address_book
WHERE firstname = 'David'

select * from address_book
WHERE city = 'Frankfurt' OR state = 'Ohio';

select COUNT(firstname) from address_book where city = 'Frankfurt' or state = 'Ohio';

select * from address_book
WHERE city = 'Indianapolis' 
ORDER BY firstname

ALTER table address_book
ADD type varchar(150), name varchar(100);
update address_book set type = 'Friend', name = 'FriendsBook' where firstname in ('Christopher','David','Tyler','Janice','Liam');
update address_book set type = 'Family', name = 'FamilyBook' where firstname in ('Ismael','Byron');
update address_book set type = 'Colleague', name = 'Office' where firstname = 'James'

select  COUNT(firstname) from address_book where type = 'Family';
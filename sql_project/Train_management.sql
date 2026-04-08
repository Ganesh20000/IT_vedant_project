use salesdb;
use project;
show DATABASEs;
use t367;
select * from orders;

create table course
(
    c_id int PRIMARY key,
    coursename varchar(255)

);

insert into course values(101,"dbms"),(102,"os"),(103,"css"),(104,"da");

select * from course;

create table student(
    stud_id int,
    name varchar(255),
    city varchar(255),
    c_id int,
    constraint ct FOREIGN key(c_id) REFERENCES course(c_id)
);

insert into student values(1,"alice","nyc",101);
insert into student values(3,"bob","nyc",102);

insert into student values(2,"eva","nyc",103);

select * from student;

show create table student;
desc student;

desc course;

create table cust(
    cust_id int PRIMARY key,
    cust_name varchar(255),
    city varchar(255)
);

create table product1(
    product_name  varchar(255) not null,
    cust_id int,
    CONSTRAINT cust FOREIGN key (cust_id) REFERENCES cust(cust_id)
);

INSERT into cust values (1,"alice","nyc"),(2,"bob","ohio"),(3,"mark","ca");

insert into product1 values("laptop",1),("phone",2),("bike",3)

desc product1;

create table dept(
    dept_id int PRIMARY key,
    dept varchar(25)

);

create table e(
    e_id int PRIMARY key,
    e_name varchar(20),
    dept_id INT,
    constraint depts FOREIGN key (dept_id) REFERENCES dept(dept_id)
    );


    -- alter table for foreign key connection

    create table person(
        person_id int PRIMARY key,
        name varchar(255),
        city varchar(255)
        
    );

    create table contact(
        c_id int,
        person_id INT,
        info varchar(25),
        type varchar(25)
    );


    alter table contact add constraint foreign_key
    Foreign Key (person_id) REFERENCES person(person_id);

show create table student;

-- droping the constrains

alter table student drop FOREIGN key ct;
alter table student drop key ct;



-- creating the copilet example
//
-- Design two tables for a Library Management System:
-- Library
-- lib_id (Primary Key)
-- lib_name (VARCHAR(30))
-- city (VARCHAR(20))
-- Book
-- book_id (Primary Key)
-- title (VARCHAR(40))
-- author (VARCHAR(30))
-- lib_id (Foreign Key referencing Library);

drop table library;
create table library(
    lib_id int PRIMARY key,
    lib_name char(20),
    city varchar(20)
);

create table book
(
    book_id int PRIMARY key,
    title varchar(255),
    author varchar(255),
    lib_id int
)

alter table book add constraint fore
Foreign Key (lib_id) REFERENCES library(lib_id);


insert into values 


use t366;

select * from passenger;


alter table passenger 
add column  station_id int;
select * from station;
select * from shop;

alter table passenger add constraint station_fks
Foreign Key (station_id) REFERENCES station(station_id);


 
desc shop;

desc passenger;
desc station; 



create table train(
    train_no int  PRIMARY key,
    name varchar(255),
    passenger_id int,
    constraint passenger_fk Foreign Key (passenger_id) REFERENCES passenger(passenger_id),
    station_id int,
    constraint station_fk FOREIGN key (station_id) REFERENCES station(station_id)
);


create table ticket(
    ticket_id int PRIMARY key,
    fare int,
    platform_no int,
    train_no INT,
    constraint train_fk Foreign Key (train_no) REFERENCES train(train_no));

    desc ticket;
    desc train;
    desc passenger;
    desc shop;
    desc station;



    use t366;

create DATABASE project;
use project;
show tables;

create table train(
    train_id int PRIMARY key,
    train_name VARCHAR(255),
    train_type varchar(255)
);

create table passenger(
    passenger_id int PRIMARY key,
    name varchar(255),
    boarding_station VARCHAR(255),
    age DATE
)

create table station(
    station_id int PRIMARY key,
    platform_no int,
    station_name varchar(255)
);


create table coach(
    coach_id int PRIMARY key,
    train_id int,
    coach_type varchar(255),
    constraint train_fk FOREIGN key (train_id) REFERENCES train(train_id)
);


create table ticket(
    ticket_id int PRIMARY key,
    passenger_Id int,
    fare int,
    train_id int,
    station_id int,
    constraint passenger_fk FOREIGN key (passenger_id) REFERENCES passenger(passenger_id),
    constraint train_fkk FOREIGN key (train_id) REFERENCES train(train_id),
    constraint station_fk FOREIGN key (station_id) REFERENCES station(station_id)
)

desc coach;

desc ticket;

desc passenger;
desc train;


use project;


INSERT INTO train (train_id, train_name, train_type) VALUES
(1,'Rajdhani Express','Superfast'),
(2,'Shatabdi Express','Superfast'),
(3,'Duronto Express','Superfast'),
(4,'Garib Rath','AC Express'),
(5,'Konkan Kanya Express','Express'),
(6,'Deccan Queen','Superfast'),
(7,'Mumbai Mail','Express'),
(8,'Punjab Mail','Express'),
(9,'Golden Temple Mail','Express'),
(10,'Udyan Express','Express'),
(11,'Howrah Mail','Superfast'),
(12,'Chennai Express','Express'),
(13,'Gujarat Mail','Express'),
(14,'Karnataka Express','Superfast'),
(15,'Humsafar Express','AC'),
(16,'Tejas Express','Premium'),
(17,'Jan Shatabdi','Superfast'),
(18,'Vande Bharat','Semi High Speed'),
(19,'Lifeline Express','Special'),
(20,'Sampark Kranti','Superfast');


INSERT INTO station (station_id, platform_no, station_name) VALUES
(1,1,'Mumbai Central'),
(2,2,'Delhi Junction'),
(3,3,'Pune'),
(4,4,'Nagpur'),
(5,5,'Ahmedabad'),
(6,1,'Surat'),
(7,2,'Bhopal'),
(8,3,'Jaipur'),
(9,4,'Lucknow'),
(10,5,'Kanpur'),
(11,2,'Varanasi'),
(12,3,'Patna'),
(13,4,'Kolkata'),
(14,1,'Chennai'),
(15,2,'Bangalore'),
(16,3,'Hyderabad'),
(17,4,'Goa'),
(18,5,'Indore'),
(19,2,'Raipur'),
(20,3,'Trivandrum');

INSERT INTO coach (coach_id, train_id, coach_type) VALUES
(1,1,'AC First Class'),
(2,1,'AC 2 Tier'),
(3,2,'AC Chair Car'),
(4,2,'Executive Chair Car'),
(5,3,'AC 3 Tier'),
(6,3,'Sleeper'),
(7,4,'AC 3 Tier'),
(8,5,'Sleeper'),
(9,6,'AC Chair Car'),
(10,7,'Sleeper'),
(11,8,'Sleeper'),
(12,9,'AC 3 Tier'),
(13,10,'Sleeper'),
(14,11,'AC 2 Tier'),
(15,12,'AC 3 Tier'),
(16,13,'Sleeper'),
(17,14,'AC 2 Tier'),
(18,15,'AC 3 Tier'),
(19,16,'Executive Chair Car'),
(20,17,'Chair Car');



INSERT INTO passenger (passenger_id, name, boarding_station, age) VALUES
(1,'Rahul Sharma','Mumbai Central','1995-06-10'),
(2,'Amit Verma','Pune','1998-02-21'),
(3,'Neha Singh','Delhi Junction','1997-09-12'),
(4,'Priya Patel','Ahmedabad','1996-05-03'),
(5,'Arjun Mehta','Surat','1994-12-18'),
(6,'Rohit Gupta','Bhopal','1993-11-25'),
(7,'Sneha Joshi','Nagpur','1999-01-11'),
(8,'Vikas Yadav','Lucknow','1992-07-19'),
(9,'Karan Shah','Jaipur','1996-04-14'),
(10,'Pooja Nair','Chennai','1998-10-08'),
(11,'Anjali Desai','Bangalore','1995-03-22'),
(12,'Raj Malhotra','Hyderabad','1993-06-30'),
(13,'Suresh Reddy','Goa','1994-09-09'),
(14,'Manish Kumar','Patna','1992-01-17'),
(15,'Kavita Mishra','Varanasi','1997-07-27'),
(16,'Deepak Singh','Kanpur','1995-08-05'),
(17,'Nikhil Jain','Indore','1998-12-12'),
(18,'Riya Kapoor','Raipur','1999-05-15'),
(19,'Sanjay Gupta','Kolkata','1991-11-11'),
(20,'Meera Iyer','Trivandrum','1996-02-02');

show create table ticket;
INSERT INTO ticket (ticket_id, passenger_id, fare, train_id, station_id) VALUES
(1,1,1200,1,1),
(2,2,800,2,3),
(3,3,1500,3,2),
(4,4,900,4,5),
(5,5,700,5,6),
(6,6,1100,6,7),
(7,7,950,7,4),
(8,8,600,8,9),
(9,9,750,9,8),
(10,10,1400,10,14),
(11,11,1300,11,15),
(12,12,1250,12,16),
(13,13,500,13,17),
(14,14,650,14,12),
(15,15,700,15,11),
(16,16,800,16,10),
(17,17,900,17,18),
(18,18,950,18,19),
(19,19,1600,19,13),
(20,20,1700,20,20);


select * from ticket;

select * from train;
use project;


select * from train;

--join 

--Display passenger name and train name for each ticket booked.
use project;
select p.name,t1.train_name,t.fare from passenger p
inner join ticket t
on p.passenger_id=t.passenger_id
inner join train t1
on t.train_id=t1.train_Id ;


--Display passenger name and station name where the passenger boarded the train.


select p.name,p.boarding_station,s.station_name from ticket t
join passenger p
on t.passenger_id=p.passenger_id
join station s
on s.station_id=t.station_id;



-- List train name and coach type available for each train.

select t.train_name,c.coach_type from train t
inner join coach c
on t.train_id=c.train_id;


-- Display passenger name, train name,coach type and station name only for passengers whose fare is greater than 1000.

select p.name,t1.train_name,s.station_name,c.coach_type,t.fare from passenger p
join ticket t
on p.passenger_id=t.passenger_id
join train t1
on t.train_id=t1.train_id
join station s
on s.station_id=t.station_id
join coach c
on t1.train_id=c.train_id
where t.fare>1000

-- Display passenger name and train name for passengers traveling in Superfast ,ac express  trains only.
use project;
select p1.name,t.train_name,t.train_type  from train t
inner join ticket t2
on t.train_id=t2.train_id
inner join passenger p1
on p1.passenger_id=t2.passenger_id
where t.train_type in ('superfast','ac express');


-- List train name and total number of coaches available for each train.
SELECT t.train_name, COUNT(c.coach_id) AS total_coaches
FROM train t
JOIN coach c
ON t.train_id = c.train_id
GROUP BY t.train_name;




-- Show passenger name, train name, station name, coach type, and fare, where the fare is higher than the average fare of all tickets.

select p.name,t1.train_name,s.station_name,c.coach_type,t.fare from passenger p
join ticket t
on p.passenger_id=t.passenger_id
join train t1
on t.train_id=t1.train_id
join station s
on s.station_id=t.station_id
join coach c
on t1.train_id=c.train_id
where t.fare>(select avg(fare) from ticket);

select avg(fare) from ticket;

use project;

-- Show station name and number of passengers boarding from each station.
select * from 

select s.station_name,count(p.passenger_id)as total_no_passenger from passenger p
join ticket t
on p.passenger_id=t.passenger_id
join station s
on s.station_id=t.station_id
group by s.station_name;






use project;


-- subqueries






use project;



select p.name,t.fare from passenger p
inner join ticket t
on p.passenger_id=t.passenger_id
where t.fare >(
select min(fare) from ticket);

select min(fare) from ticket;


select * from passenger;
select * from ticket;


-- - find passengers whose age is greater than the average age of all passengers.

SELECT name,age,TIMESTAMPDIFF(year,age,SYSDATE())
FROM Passenger
WHERE age
 > (
    SELECT AVG(age)
    FROM Passenger
);

SELECT TIMESTAMPDIFF(YEAR, '2003-03-25', CURDATE()) AS age;
select avg(TIMESTAMPDIFF(year,age,SYSDATE())) from passenger;




-- Find passengers who paid the maximum fare for each train.

select  t.fare,t1.train_name,p.name from passenger p
join ticket t
on p.passenger_id=t.passenger_id
join train t1
on t.train_id=t1.train_id
where (t1.train_id,t.fare) in (select t1.train_id, max(t.fare) from ticket t
join train t1
on t.train_id=t1.train_id
group by t1.train_id);


-- Find passengers who paid the maximum fare for each train

SELECT tr.train_name, p.name, t.fare
FROM passenger p
JOIN ticket t 
    ON p.passenger_id = t.passenger_id
JOIN train tr 
    ON t.train_id = tr.train_id
WHERE (t.train_id, t.fare) IN (
        SELECT train_id, MAX(fare)
        FROM ticket
        GROUP BY train_id
);






-- Find passengers who paid more fare than the average fare of all passengers.
select t.ticket_id, p.name,t.fare from passenger p
join ticket t
on p.passenger_id=t.passenger_id
where t.fare > (select avg(fare) from ticket);

select avg(fare) from ticket;



-- Find passengers who paid the second highest fare.
select  t.fare, p.name from passenger p
join ticket t
on p.passenger_id=t.passenger_id
where t.fare =
(select max(fare) from ticket 
where fare< (select max(fare) from ticket) );

-- second highest 
select max(fare) from ticket
where fare =(select max(fare) from ticket);


use project;
--Find train names where fare is greater than the average fare of that train.
select  * from train p
join ticket t
on p.train_id=t.train_id
where (p.train_name,t.fare) in (
    select p.train_name,avg(t.fare)   from train p
    join ticket t
    on p.train_id=t.train_id
    group by p.train_name
);

--Find train names where fare is greater than the average fare of that train.

select * from train t
join ticket t1
on t.train_id=t1.train_id
where fare >(select avg(fare) from ticket t3 where t1.train_id=t3.train_id);


SELECT train_id, AVG(fare) AS avg_fare
FROM ticket
GROUP BY train_id;

SELECT train_id, fare
FROM ticket
ORDER BY train_id, fare;

   select p.train_name,avg(t.fare)   from train p
    join ticket t
    on p.train_id=t.train_id
    group by p.train_name;

INSERT INTO train (train_id, train_name) VALUES (1, 'Express A');
INSERT INTO ticket (ticket_id, train_id, fare) VALUES
(101, 1, 100),
(102, 1, 200),
(103, 1, 300);

desc train;

desc passenger;

desc ticket;
desc station;


use project;

-- - Show passengers who are older than the youngest passenger.


select * from train;


select * from passenger 
where age >(
select min(age) from passenger);


select * from passenger
where age>(
select min(FLOOR(datediff(SYSDATE(),age)/365)) from passenger);



-- - Display train names that have more coaches than the average number of coaches per train.

select t.train_id,t.train_name from train t
join coach c
on t.train_id=c.train_id
group by t.train_id,t.train_name
having count(c.coach_id)>(
select avg(avg_couch) from (
select count(coach_id) as avg_couch from coach
group by train_id) 
as sub);


select count(coach_id) from coach
group by train_id;


-- - List passengers who boarded from a station located in the same state as the station with station_id = 101.
use project;


select * from passenger p;
select * from station;

select * from passenger;

-- Find tickets where the fare is greater than the maximum fare paid by passengers under 18 years old.


select name,
min(FLOOR(datediff(SYSDATE(),age)/365)) from passenger
group by name;
-- where 
SELECT name,
       MIN(FLOOR(DATEDIFF(SYSDATE(), age) / 365))
FROM passenger
GROUP BY name;


select * from ticket t
join passenger p
on t.passenger_id=p.passenger_id
where p.age >(

    select 

min(FLOOR(datediff(SYSDATE(),age)/365)) from passenger
);
select * from ticket t
join passenger p 
on t.passenger_id=p.passenger_id
where p.age>(
select 
min(floor(datediff(SYSDATE(),age)/365)) from passenger
where floor(datediff(SYSDATE(),age)/365)<25)


select * from passenger;

insert into passenger values(
    22,'karan aujla','chandigarh','2005-08-20'
);

select * from passenger;

select * from ticket t
join passenger p 
on t.passenger_id=p.passenger_id
where floor(datediff(SYSDATE(),p.age)/365)>(
select 
min(floor(datediff(SYSDATE(),age)/365)) from passenger
where floor(datediff(SYSDATE(),age)/365)<25);

SELECT t.*, p.*, 
       FLOOR(DATEDIFF(SYSDATE(), p.age) / 365) AS passenger_age
FROM ticket t
JOIN passenger p ON t.passenger_id = p.passenger_id
WHERE t.fare > (
    SELECT MAX(t2.fare)
    FROM ticket t2
    JOIN passenger p2 ON t2.passenger_id = p2.passenger_id
    WHERE FLOOR(DATEDIFF(SYSDATE(), p2.age) / 365) < 28
);


-- find the name, fare, station  of passengers who booked tickets at stations of type “Junction”.


-- select * from station;
-- select * from passenger;
-- select * from ticket;


select p.name,t.fare,s.station_name from station s
join ticket t
on s.station_id=t.station_id
join passenger p
on p.passenger_id=t.passenger_id
where s.station_type in (


    select station_type from station
where station_Type="central"
);



-- Show train names along with their coach types.

select t.train_name,c.coach_type from train t
left join coach c
on c.train_id=t.train_id;

select * from coach;

use project;


select * from passenger;


-- Find the names of passengers who have booked tickets for trains that stop at more than one station in the same state.

-- Find the names of passengers who paid a fare greater than the maximum fare paid by any passenger boarding from the station named “Mumbai Central”.


select p.passenger_id,p.name,p.boarding_station,t.fare from passenger p
inner join ticket t
on p.passenger_id=t.passenger_id
where t.fare>(
select avg(t.fare) from ticket t
join station s
on t.station_id=s.station_id
where s.station_name="Mumbai Central");

select * from passenger p
join ticket t
on p.passenger_id=t.passenger_id
where t.fare > (


select avg(s.fare) from passenger p
inner join ticket s
on p.passenger_id=s.passenger_id
inner join station s1
on s.station_id=s1.station_id
where s1.station_name="Mumbai Central");

select * from station;

-- - Write a query to list all passengers who have booked more than 3 tickets.


SELECT p.passenger_id, p.name, COUNT(t.ticket_id) AS total_tickets
FROM passenger p
JOIN ticket t ON p.passenger_id = t.passenger_id
GROUP BY p.passenger_id, p.name
HAVING COUNT(t.ticket_id) > 3;

select * from ticket; 

-- - Find the total fare collected from tickets for each train.

select t2.train_name, sum(t.fare) from ticket t
join train t2 
on t.train_id=t2.train_Id
group by t2.train_name;

select * from ticket;
select * from train;

-- - Find the station with the maximum number of tickets issued.

select s.station_id,s.station_name,count(t.ticket_id) from station s
join ticket t
on t.station_id=s.station_id
group by s.station_id,s.station_name
HAVING count(t.ticket_id)>1;



select * from station;
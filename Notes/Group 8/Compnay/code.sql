create table company (
	user_name varchar, 
	last_name varchar,
	national_id int,
	address text,
	age smallint,
	salary int,
	user_id serial,
	primary key (user_id)
);

insert into company (user_name,last_name,national_id,address,age,salary) values
('Quentin', 'Tarantino', 101, 'Rasht', 59, 100),
('Christopher', 'Nolan', 117, 'Lahijan', 52, 75),
('Ali', 'Hadinejad', 21, 'Rasht', 24, 25),
('Asqar', 'Farhadi', 35, 'Tehran', 50, 26),
('Aref', 'Ghanbari', 21, 'Lahijan', 22, 25),
('Taqi', 'Asadi', 19, 'Rasht', 52, 25),
('Martin', 'Scorsese', 10, 'Tehran', 79, 75);


select address as ad, count(user_name) as cnt from staff group by address;

select address as ad, count(user_name) as cnt from staff group by address having count(user_name) > 2;

select address as ad, count(user_name) as cnt from staff group by address having sum(salary)/count(user_name) > 50;


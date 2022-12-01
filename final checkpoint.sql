create table producer (
	NumP int constraint ppkey primary key,
	first_name varchar(100),
	last_name varchar(100),
	region varchar(100)
);

create table wine (
	NumW int constraint wpkey primary key,
	category varchar(100),
	years int,
	degrees float
)

create table harvrest (
	Nump int,
	Numw int,
	quantity int,
	constraint hfkey1 foreign key(NumP) references producer(NumP),
	constraint hfkey2 foreign key(NumW) references wine(NumW)
)

select * from producer

select * from producer order by last_name

select* from producer where region = 'Sousse'

select sum(quantity) from harvest where NumW = 12

select sum(quantity), category from harvrest inner join wine on harvrest.NumW = wine.NumW  group by category

select first_name, last_name from producers inner join harvrest on producer.Nump = harvrest.NumP 
where region = 'Sousse' and NumW >= 1 and quantity > 300 order by first_name


select NumP, degrees from wine inner join harvrest on wine.NumW = harvrest.NumW 
where degrees >12 and NumP = 24



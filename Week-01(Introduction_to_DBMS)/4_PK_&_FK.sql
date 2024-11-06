use versity;
create table library(
	book_name varchar(40) primary key,
    roll int,
    constraint who_hired foreign key(roll) references students(Roll)
);
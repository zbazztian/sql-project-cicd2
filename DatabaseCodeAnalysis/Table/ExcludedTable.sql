create table dbo.abc
(
	id int identity(1,1) not null,
	name varchar(20) not null,
	reg_time datetime,
	delete_flag tinyint
)
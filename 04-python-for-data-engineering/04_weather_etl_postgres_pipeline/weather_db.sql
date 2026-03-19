create database weather_db

create table weather_data(
	city varchar(50),
	temperature float,
	wind_speed float,
	wind_direction float,
	time timestamp
)
select * from weather_data
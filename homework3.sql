create table passengers (
id bigint primary key,
first_name varchar(50),
last_name varchar(50),
date_of_birth date,
country_of_citizenship varchar(50),
country_of_residence varchar(50),
passport_number varchar(20),
created_at timestamp,
updated_at varchar(20)
)
select * from passengers


create table security_check (
id bigint primary key,
check_result varchar(50),
comments varchar(8000),
created_at timestamp,
updated_at varchar(50),
passenger_id bigint,
CONSTRAINT FK_id FOREIGN KEY (id)
REFERENCES passengers(id)
)
select * from security_check


create table booking (
booking_id bigint primary key,
flight_id bigint,
status varchar(20),
booking_platform varchar(20),
created_at timestamp,
passenger_id bigint
CONSTRAINT FK_passenger_id FOREIGN KEY (passenger_id)
REFERENCES passengers (id)
)
select * from booking


create table baggage (
id bigint primary key,
weight_in_kg decimal(4,2),
created_date date,
booking_id bigint,
CONSTRAINT FK_booking_id FOREIGN KEY (booking_id)
REFERENCES booking (booking_id)
)
select * from baggage


CREATE TABLE baggage_check (
ID bigint Primary key,
check_result bigint,
created_at bigint,
updated_at date,
booking_id bigint,
passenger_id bigint,


CONSTRAINT FK_book1 Foreign key (booking_id)
REFERENCES booking(booking_id),

CONSTRAINT FK_passenger1 FOREIGN KEY (passenger_id)
REFERENCES passengers(id)
)
select * from baggage_check


create table airport (
id bigint primary key,
airport_name varchar(50),
country varchar(50),
state varchar(50),
city varchar(50),
created_at date,
updated_at date
)
select * from airport



create table airline (
id bigint primary key,
airline_code varchar(20),
airline_name bigint,
airline_country varchar(50),
created_at date,
updated_at date
)
select * from airline

CREATE TABLE flights (
    flight_id BIGINT PRIMARY KEY,
    departing_gate VARCHAR(20),
    arriving_gate VARCHAR(20),
    created_at DATE,
    updated_at DATE,
    airline_id BIGINT,
    departing_airport_id BIGINT,
    arriving_airport_id BIGINT,

    CONSTRAINT FK_airline FOREIGN KEY (airline_id)
        REFERENCES airline(id),

    CONSTRAINT FK_departing_airport FOREIGN KEY (departing_airport_id)
        REFERENCES airport(id),

    CONSTRAINT FK_arriving_airport FOREIGN KEY (arriving_airport_id)
    REFERENCES airport(id)
)
select * from flights


create table flight_manifest (
id bigint primary key,
created_at date,
booking_id bigint,
flight_id bigint,

CONSTRAINT FK_book2 FOREIGN KEY (booking_id)
REFERENCES booking(booking_id),

CONSTRAINT FK_flight1 FOREIGN KEY (flight_id)
REFERENCES flights(flight_id)
)
select * from flight_manifest



create table boarding_pass (
id bigint primary key,
qr_code varchar (8000),
created_at timestamp,
updated_at datetime,
booking_id bigint,
CONSTRAINT FK_book3 FOREIGN KEY (booking_id)
REFERENCES booking(booking_id)
)
select * from boarding_pass


create table no_fly_list (
id bigint primary key,
active_from date,
active_to date,
no_fly_reason varchar(25),
created_at date,
updated_at date,
psngr_id bigint,
CONSTRAINT FK_psngr FOREIGN KEY (id)
REFERENCES passengers(id)
)
select * from no_fly_list
	




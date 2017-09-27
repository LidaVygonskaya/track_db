CREATE DATABASE parking OWNER lida;

/* Creating table for car. Table Cars is slave of Clients */

CREATE TABLE cars (
	car_number CHAR(20) PRIMARY KEY,
	model VARCHAR(250),
	colour VARCHAR(100),
	defects TEXT
	/*owner_id SERIAL REFERENCES clients (id)*/
	
);


/* Creating table for Parking Place */

CREATE TABLE parking_place (
	number CHAR(10) PRIMARY KEY,
	occupated BOOLEAN DEFAULT FALSE,
	arrival_date TIMESTAMP,
	departure_date TIMESTAMP,
	tariff VARCHAR(100)
	
		
);

/* Creating table for client */

CREATE TABLE clients (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	last_name VARCHAR(50),
	surname VARCHAR(50),
	phone_number VARCHAR(20)
	/*parking_place_number CHAR(10) REFERENCES parking_place (number)*/
	
);



/* Creating table for staff */

CREATE TABLE staff (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	last_name VARCHAR(50),
	surname VARCHAR(50),
	phone_number VARCHAR(20),
	adress TEXT,
	position TEXT
);

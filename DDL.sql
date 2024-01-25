-- Salesperson Table
CREATE TABLE IF NOT EXISTS salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    phone INT
);

SELECT *
FROM salesperson;

-- Customer Table
CREATE TABLE IF NOT EXISTS customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(50)
);

SELECT *
FROM customer;


-- Car Table
CREATE TABLE IF NOT EXISTS car (
    carserialnumber VARCHAR(50) PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    caryear INT NOT NULL,
    isnew BOOLEAN NOT NULL
);


SELECT *
FROM car;



-- Invoice Table
CREATE TABLE IF NOT EXISTS invoice (
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    customer_id INT,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    carserialnumber VARCHAR(50) NOT NULL,
    FOREIGN KEY (carserialnumber) REFERENCES car(carserialnumber),
    saledate DATE,
    totalprice DECIMAL(10, 2)
);


SELECT *
FROM invoice;


-- Service Ticket Table
CREATE TABLE IF NOT EXISTS serviceticket (
    serviceticket_id SERIAL PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    carserialnumber VARCHAR(50) NOT NULL,
    FOREIGN KEY (carserialnumber) REFERENCES car(carserialnumber),
    dateofservice DATE,
    description TEXT
);


SELECT *
FROM serviceticket;


-- Service History Table
CREATE TABLE IF NOT EXISTS servicehistory (
    carserialnumber VARCHAR(50),
    servicedetails TEXT,
    PRIMARY KEY (carserialnumber),
    FOREIGN KEY (carserialnumber) REFERENCES car(carserialnumber)
);


SELECT *
FROM servicehistory;



-- Mechanic Table
CREATE TABLE IF NOT EXISTS mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100)
);


SELECT *
FROM mechanic;


-- Mechanic_Car_Service Table (Associative table for many-to-many relationship)
CREATE TABLE IF NOT EXISTS mechanic_car_service (
    mechanic_id INT,
    carserialnumber VARCHAR(50),
    serviceticket_id INT,
    PRIMARY KEY (mechanic_id, carserialnumber),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (carserialnumber) REFERENCES car(carserialnumber),
    FOREIGN KEY (serviceticket_id) REFERENCES serviceticket(serviceticket_id)
);

SELECT *
FROM mechanic_car_service;


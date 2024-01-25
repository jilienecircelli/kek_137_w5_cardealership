
INSERT INTO salesperson (first_name, last_name) VALUES ('John', 'Doe');
INSERT INTO salesperson (first_name, last_name) VALUES ('Jane', 'Smith');

SELECT *
FROM salesperson;


INSERT INTO customer (first_name, last_name) VALUES ('Alice', 'Johnson');
INSERT INTO customer (first_name, last_name) VALUES ('Bob', 'Brown');

SELECT *
FROM customer;



INSERT INTO car (carserialnumber, make, model, caryear, isnew) VALUES ('VIN1234567890', 'Toyota', 'Corolla', 2021, TRUE);
INSERT INTO car (carserialnumber, make, model, caryear, isnew) VALUES ('VIN0987654321', 'Ford', 'Fiesta', 2019, FALSE);

SELECT *
FROM car;


INSERT INTO invoice (salesperson_id, customer_id, carserialnumber, saledate, totalprice) VALUES (1, 1, 'VIN1234567890', '2024-01-08', 20000.00);
INSERT INTO invoice (salesperson_id, customer_id, carserialnumber, saledate, totalprice) VALUES (2, 2, 'VIN0987654321', '2024-01-09', 15000.00);

SELECT *
FROM invoice;


INSERT INTO serviceticket (customer_id, carserialnumber, DateOfService, Description) VALUES (1, 'VIN1234567890', '2024-01-10', 'Oil change and tire rotation.');
INSERT INTO serviceticket (customer_id, carserialnumber, DateOfService, Description) VALUES (2, 'VIN0987654321', '2024-01-11', 'Brake inspection and pad replacement.');

SELECT *
FROM serviceticket;



INSERT INTO servicehistory (carserialnumber, servicedetails) VALUES ('VIN1234567890', 'Regular maintenance and oil changes.');
INSERT INTO servicehistory (carserialnumber, servicedetails) VALUES ('VIN0987654321', 'Replaced brake pads and repaired exhaust leak.');

SELECT *
FROM servicehistory;


INSERT INTO mechanic (first_name, last_name, specialization) VALUES ('Mike', 'Wrench', 'Engine Specialist');
INSERT INTO mechanic (first_name, last_name, specialization) VALUES ('Lucy', 'Torque', 'Transmission Expert');

SELECT *
FROM mechanic;


INSERT INTO mechanic_car_service (mechanic_id, carserialnumber, serviceticket_id) VALUES (1, 'VIN1234567890', 1);
INSERT INTO mechanic_car_service (mechanic_id, carserialnumber, serviceticket_id) VALUES (2, 'VIN0987654321', 2);

SELECT *
FROM mechanic_car_service;

CREATE DATABASE IF NOT EXISTS car_repair_workshop;
USE car_repair_workshop;

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT UNIQUE,
	first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(50),
    PRIMARY KEY (customer_id)
);

CREATE TABLE vehicles (
	vehicle_id INT AUTO_INCREMENT UNIQUE,
	customer_id INT,
    brand VARCHAR(50),
    model VARCHAR(50),
    year_of_production YEAR,
    PRIMARY KEY (vehicle_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE services (
	service_id INT AUTO_INCREMENT UNIQUE,
    vehicle_id INT,
    customer_id INT,
	name_of_service VARCHAR(50),
    description_of_service VARCHAR(200),
    price_pln NUMERIC(10,2),
    data DATE,
    PRIMARY KEY (service_id),
	FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (first_name, last_name, phone_number, email)
VALUES
  ('Artur', 'Boruc', '132476001', 'artur.boruc@example.com'),
  ('Adam', 'Malysz', '637947009', 'adam.malysz@example.com'),
  ('Andrzej', 'Golota', '874678754', 'andrzej.golota@example.com'),
  ('Mariusz', 'Pudzianowski', '333222111', 'mariusz.pudzianowski@example.com'),
  ('Robert', 'Lewandowski', '111222333', 'robert.lewandowski@example.com');

INSERT INTO vehicles (customer_id, brand, model, year_of_production)
VALUES
  (1, 'Toyota', 'Corolla', 2015),
  (1, 'Honda', 'Civic', 2013),
  (2, 'Ford', 'Mustang', 2014),
  (3, 'BMW', '3 Series', 2011),
  (4, 'Mercedes-Benz', 'C-customersClass', 2020),
  (5, 'Volkswagen', 'Golf', 2017);

INSERT INTO services (vehicle_id, customer_id, name_of_service, description_of_service, price_pln, data)
VALUES
  (1, 1, 'Periodic inspection', 'Oil and filter change', 200.00, '2023-04-01'),
  (2, 1, 'Brake repair', 'Replacement of pads and discs', 500.00, '2023-05-15'),
  (3, 2, 'Air conditioning service', 'Disinfection and refilling of coolant', 150.00, '2023-06-10'),
  (4, 3, 'Timing belt replacement', 'Replacement of timing belt and water pump', 800.00, '2023-07-20'),
  (5, 4, 'Computer diagnostics', 'Reading and clearing errors', 100.00, '2023-08-05'),
  (6, 5, 'Tire change', 'Installation of summer tires', 300.00, '2023-09-01')

	
	
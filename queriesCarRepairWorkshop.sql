-- Displaying the key information about a performed service
SELECT DISTINCT services.service_id AS "Service id",
	concat(customers.first_name," ", customers.last_name)  AS Customer, 
	concat(vehicles.brand," ", vehicles.model)  AS Vehicle, 
	services.name_of_service AS Service, services.price_pln AS "Price [PLN]", services.data AS Data
FROM customers 
INNER JOIN 
	vehicles ON customers.customer_id = vehicles.customer_id
INNER JOIN
	services ON services.vehicle_id = vehicles.vehicle_id
ORDER BY `Service id`;

-- Displaying the 5 most frequently performed services
SELECT count(services.name_of_service) AS "Number of services",
	services.name_of_service AS "Name of service"
FROM services
GROUP BY services.name_of_service
ORDER BY `Number of services` DESC LIMIT 5;

-- Displaying the 3 most expensive services
SELECT DISTINCT services.name_of_service AS Service, 
	services.price_pln AS "Price [PLN]" 
FROM services 
ORDER BY `Price [PLN]` DESC LIMIT 3;

-- Displaying the number of repaired vehicles by brand
SELECT count(vehicles.vehicle_id) AS "Numbers of vehicles", 
	vehicles.brand AS "Vehicles brand"
FROM vehicles
GROUP BY `Vehicles brand`
ORDER BY `Numbers of vehicles` DESC LIMIT 5;

-- Displaying the 5 most profitable customers
SELECT SUM(services.price_pln) AS "Total price", 
	concat(customers.first_name, " ", customers.last_name) AS Customer
FROM services
INNER JOIN
	customers ON customers.customer_id = services.customer_id
GROUP BY customers.customer_id
ORDER BY `Total price` DESC LIMIT 5;

-- Displaying customers with the highest number of vehicles
SELECT count(vehicles.vehicle_id) AS "Number of cars", 
	concat(customers.first_name, " ", customers.last_name) AS Customer
FROM customers
INNER JOIN 
	vehicles ON customers.customer_id = vehicles.customer_id
GROUP BY customers.customer_id
ORDER BY `Number of cars` DESC LIMIT 5;

-- Displaying the owner and model of vehicles of the selected brand
SELECT vehicles.model AS Model, 
	concat(customers.first_name," ", customers.last_name)  AS Customer
FROM vehicles
INNER JOIN
	customers ON vehicles.customer_id = customers.customer_id
WHERE vehicles.brand IN("Honda", "BMW");

-- Displaying all vehicles of the selected customer
SELECT concat(vehicles.brand," ", vehicles.model)  AS Vehicle,
	concat(customers.first_name," ", customers.last_name)  AS Customer
FROM vehicles
INNER JOIN
	customers ON vehicles.customer_id = customers.customer_id
WHERE customers.first_name LIKE("W%") AND customers.last_name LIKE("T%");


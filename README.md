# MySQL Database Project for a car repair shop.


<p align="center"> <img src="https://github.com/KrystianJamrogiewicz/MySQL-car_repair_workshop/assets/155767356/e859ccb1-9af0-408b-8e9e-a26a0d0b3cd6" alt="Image Description"> </p>


This database stores information about customers, their vehicles, and the services performed. It consists of 3 tables: customers, vehicles, and services. The primary keys are the id fields of each table.

<h1> Sample database queries on queriesCarRepairWorkshop.sql file </h1>
<p>
- Displaying the key information about a performed service

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
</p>

<p align="center"> <img src="https://github.com/KrystianJamrogiewicz/MySQL-car_repair_workshop/assets/155767356/29c8d62a-c869-4bd3-a1ff-41599b5d82b9" alt="Image Description"> </p>


- Displaying the 5 most frequently performed services

	SELECT count(services.name_of_service) AS "Number of services",
		services.name_of_service AS "Name of service"
	FROM services
	GROUP BY services.name_of_service
	ORDER BY `Number of services` DESC LIMIT 5;


<p align="center"> <img src="https://github.com/KrystianJamrogiewicz/MySQL-car_repair_workshop/assets/155767356/66e0d20a-2f02-4db9-af11-bca18effc9eb" alt="Image Description"> </p>


- Displaying the 3 most expensive services
  
	SELECT DISTINCT services.name_of_service AS Service, 
		services.price_pln AS "Price [PLN]" 
	FROM services 
	ORDER BY `Price [PLN]` DESC LIMIT 3;


<p align="center"> <img src="https://github.com/KrystianJamrogiewicz/MySQL-car_repair_workshop/assets/155767356/80610786-41ce-497b-9b32-56b6db8dc69c" alt="Image Description"> </p>


- Displaying the number of repaired vehicles by brand
  
	SELECT count(vehicles.vehicle_id) AS "Numbers of vehicles", 
		vehicles.brand AS "Vehicles brand"
	FROM vehicles
	GROUP BY `Vehicles brand`
	ORDER BY `Numbers of vehicles` DESC LIMIT 5;


<p align="center"> <img src="https://github.com/KrystianJamrogiewicz/MySQL-car_repair_workshop/assets/155767356/10ccc79c-2c5b-4014-ad38-c91de31b7398" alt="Image Description"> </p>


- Displaying the 5 most profitable customers
  
	SELECT SUM(services.price_pln) AS "Total price", 
		concat(customers.first_name, " ", customers.last_name) AS Customer
	FROM services
	INNER JOIN
		customers ON customers.customer_id = services.customer_id
	GROUP BY customers.customer_id
	ORDER BY `Total price` DESC LIMIT 5;


<p align="center"> <img src="https://github.com/KrystianJamrogiewicz/MySQL-car_repair_workshop/assets/155767356/95b2aede-62c6-42a9-8148-45ac5e00b349" alt="Image Description"> </p>


- Displaying customers with the highest number of vehicles
  
	SELECT count(vehicles.vehicle_id) AS "Number of cars", 
		concat(customers.first_name, " ", customers.last_name) AS Customer
	FROM customers
	INNER JOIN 
		vehicles ON customers.customer_id = vehicles.customer_id
	GROUP BY customers.customer_id
	ORDER BY `Number of cars` DESC LIMIT 5;


<p align="center"> <img src="https://github.com/KrystianJamrogiewicz/MySQL-car_repair_workshop/assets/155767356/75c7f48e-fc0e-4f0d-aa16-d67d962b6147" alt="Image Description"> </p>


- Displaying the owner and model of vehicles of the selected brand
  
	SELECT vehicles.model AS Model, 
		concat(customers.first_name," ", customers.last_name)  AS Customer
	FROM vehicles
	INNER JOIN
		customers ON vehicles.customer_id = customers.customer_id
	WHERE vehicles.brand IN("Honda", "BMW");


<p align="center"> <img src="https://github.com/KrystianJamrogiewicz/MySQL-car_repair_workshop/assets/155767356/e92af813-e9d4-4f75-bba9-bafe29426dc3" alt="Image Description"> </p>


- Displaying all vehicles of the selected customer
  
	SELECT concat(vehicles.brand," ", vehicles.model)  AS Vehicle,
		concat(customers.first_name," ", customers.last_name)  AS Customer
	FROM vehicles
	INNER JOIN
		customers ON vehicles.customer_id = customers.customer_id
	WHERE customers.first_name LIKE("W%") AND customers.last_name LIKE("T%");


<p align="center"> <img src="https://github.com/KrystianJamrogiewicz/MySQL-car_repair_workshop/assets/155767356/9ed2dc52-3e30-44eb-9e1e-918532ab27ea" alt="Image Description"> </p>






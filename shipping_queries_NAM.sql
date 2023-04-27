SELECT name, displacement, captain, crew, home_port
FROM shipping;

SELECT city, country
FROM ports;

SELECT container_id, height, length, weight, ship_id
FROM containers;

SELECT shipping.name, displacement, captain, crew, home_port, year, ports.name
FROM shipping
JOIN ports ON shipping.home_port = ports.name;

SELECT shipping.name, displacement, captain, crew, home_port, year, ports.name
FROM shipping
JOIN ports ON shipping.home_port = ports.name
WHERE ports.country = "United States";

SELECT shipping.name, displacement, captain, crew, home_port, year, ports.name
FROM shipping
JOIN ports ON shipping.home_port = ports.name
WHERE ports.country = "United States"
AND ports.city = "Savannah";

SELECT container_id, height, width, length, weight, ship_id, shipping.name
FROM containers
JOIN shipping ON containers.ship_id = shipping.name;

SELECT container_id, height, width, length, weight, ship_id
FROM containers
JOIN shipping ON containers.ship_id = shipping.name
WHERE shipping.captain = "Amy Ortega";

SELECT container_id, height, width, length, weight, ship_id
FROM containers
JOIN shipping ON containers.ship_id = shipping.name
WHERE shipping.captain = "Andre Reynolds"
AND shipping.name = "Providence";

SELECT name, displacement, captain, crew, home_port, year, COUNT(container_id) AS "Number of Containers"
FROM shipping
JOIN containers ON shipping.name = containers.ship_id
GROUP BY name;

SELECT name, displacement, captain, crew, home_port, year, COUNT(container_id) AS "Number of Containers"
FROM shipping
JOIN containers ON shipping.name = containers.ship_id
GROUP BY name
HAVING COUNT(container_id) > 1;

SELECT ship_id, COUNT(container_id) AS "Number of Containers"
FROM containers
GROUP BY ship_id
ORDER BY COUNT(container_id);

SELECT SUM(height*width*length) AS "Volume"
FROM containers;

SELECT AVG(height*width*length) AS "Average Volume"
FROM containers;

SELECT height*width*length AS "Volume"
FROM containers
WHERE ship_id = "Henrietta";
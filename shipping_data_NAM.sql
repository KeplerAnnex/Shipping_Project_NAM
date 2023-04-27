use project;

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO shipping (name, displacement, captain, crew, home_port, year)
VALUES 
("Viceroy", 234700, "Aaron Smith", 420, "Newark", 1984),
("Henrietta", 75870, "Byron Sanders", 160, "Los Angeles", 2004),
("Eagle", 32700, "Stephen Whitman", 160, "Long Beach", 2015),
("Voyager", 80000, "Roger Clark", 168, "Savannah", 2011),
("Brethren", 87930, "Julia Frank", 1000, "Houston", 1991),
("Longshoreman", 87930, "Amy Ortega", 1000, "Houston", 1999),
("Cresh", 25690, "Scott Baron", 345, "Long Beach", 2001),
("Bounty", 95012, "Summer Kincaid", 560, "Newark", 2020),
("Providence", 22019, "Andre Reynolds", 1050, "Newark", 2003),
("Propsero", 90040, "Sanjay Shepherd", 450, "Savannah", 2009);

INSERT INTO ports (name, city, country)
VALUES
("Los Angeles", "Los Angeles", "United States"),
("Newark", "Newark", "United States"),
("Long Beach", "Long Beach", "United States"),
("Savannah", "Savannah", "United States"),
("Houston", "Houston", "United States");

INSERT INTO containers (container_id, height, width, length, weight, ship_id)
VALUES 
(1, 10, 10, 10, 1000, "Viceroy"),
(2, 20, 20, 20, 2000, "Viceroy"),
(3, 30, 30, 30, 3000, "Henrietta"),
(4, 40, 40, 40, 4000, "Henrietta"),
(5, 50, 50, 50, 5000, "Eagle"),
(6, 60, 60, 60, 6000, "Eagle"),
(7, 70, 70, 70, 7000, "Voyager"),
(8, 80, 80, 80, 8000, "Voyager"),
(9, 90, 90, 90, 9000, "Brethren"),
(10, 100, 100, 100, 10000, "Brethren"),
(11, 110, 110, 110, 11000, "Longshoreman"),
(12, 120, 120, 120, 12000, "Longshoreman"),
(13, 130, 130, 130, 13000, "Cresh"),
(14, 140, 140, 140, 14000, "Cresh"),
(15, 150, 150, 150, 15000, "Bounty"),
(16, 160, 160, 160, 16000, "Bounty"),
(17, 170, 170, 170, 17000, "Providence"),
(18, 180, 180, 180, 18000, "Providence"),
(19, 190, 190, 190, 19000, "Prospero"),
(20, 200, 200, 200, 20000, "Prospero");

DROP DATABASE IF EXISTS project;

CREATE DATABASE project;

USE project;

CREATE TABLE shipping(
name VARCHAR(255) NOT NULL,
displacement INT NOT NULL,
captain VARCHAR(255) NOT NULL,
crew INT NOT NULL,
home_port VARCHAR(255) NOT NULL,
year INT NOT NULL,

PRIMARY KEY (name)
);

CREATE TABLE ports(
name VARCHAR(255) NOT NULL,
city VARCHAR(255) NOT NULL,
country VARCHAR(255) NOT NULL,

PRIMARY KEY (name)
);

CREATE TABLE containers(
container_id INT NOT NULL,
height INT NOT NULL,
width INT NOT NULL,
length INT NOT NULL,
weight INT NOT NULL,
ship_id VARCHAR(255),

PRIMARY KEY (container_id),
FOREIGN KEY (ship_id) REFERENCES shipping(name)
);


CREATE DATABASE ng_coffee_db;

USE ng_coffee_db;

CREATE TABLE drink(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    description VARCHAR(255),
    img VARCHAR(200),
    created_at TIMESTAMP DEFOULT CURRENT_TIMESTAMP,
);

CREATE TABLE drinkFlavor(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    drink_id INT(11) NOT NULL,
    name VARCHAR(30),
    description VARCHAR(255),
    img VARCHAR(200),
    created_at TIMESTAMP DEFOULT CURRENT_TIMESTAMP,
    FOREIGN KEY (drink_id) REFERENCES drink (id),
);

CREATE TABLE breackfest(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    description VARCHAR(255),
    img VARCHAR(200),
    created_at TIMESTAMP DEFOULT CURRENT_TIMESTAMP,
);

CREATE TABLE lunch(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    description VARCHAR(255),
    img VARCHAR(200),
    created_at TIMESTAMP DEFOULT CURRENT_TIMESTAMP,
);

CREATE TABLE dessert(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    description VARCHAR(255),
    img VARCHAR(200),
    created_at TIMESTAMP DEFOULT CURRENT_TIMESTAMP,
);

CREATE TABLE detailOrder(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    drink_id INT(11),
    breackfest_id INT(11),
    lunch_id INT(11),
    dessert_id INT(11),
    FOREIGN KEY (drink_id) REFERENCES drinkFlavor(id),
    FOREIGN KEY (breackfest_id) REFERENCES breackfest(id),
    FOREIGN KEY (lunch_id) REFERENCES lunch(id),
    FOREIGN KEY (dessert_id) REFERENCES dessert(id),

);

CREATE TABLE order(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    detail_id INT(11) NOT NULL,
    FOREIGN KEY (detail_id) REFERENCES detailOrder (id)
);
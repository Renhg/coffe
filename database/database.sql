CREATE DATABASE ng_coffee_db;

USE ng_coffee_db;

CREATE TABLE FD(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id INT(11) NOT NULL,
    name VARCHAR(30),
    description VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE type_FD(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    price INT(11),
    ingredients VARCHAR(255),
    img VARCHAR(255),
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE detailOrder(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_id NOT NULL,
    fd_id INT(11),
    amount INT(11),
    precio INT(11),
    FOREIGN KEY (fd_id) REFERENCES FD(id),
    FOREIGN KEY (order_id) REFERENCES order(id),
);

CREATE TABLE order(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    detail_id INT(11) NOT NULL,
    name varchar(30),
    note varchar(255)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);
DROP DATABASE IF EXISTS staff_db;
CREATE DATABASE staff_db;

USE staff_db;

CREATE TABLE department (
    id INT PRIMARY KEY,
    name VARCHAR(30),
);

CREATE TABLE role (
    id INT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
)

CREATE TABLE employee (
    id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
)

-- CREATE TABLE customer_order (
--   id INT,
--   customer_id INT,
--   order_details TEXT,
--   FOREIGN KEY (customer_id)
--   REFERENCES customers(id)
--   ON DELETE SET NULL
-- );
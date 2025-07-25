CREATE TABLE employee (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE department (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO
    employee
VALUES (1, 'John Doe', 101),
    (2, 'Jane Doe', 102),
    (3, 'Bob Smith', 103),
    (4, 'Alice Johnson', 104);

INSERT INTO
    department
VALUES (101, 'Human Resources'),
    (102, 'Marketing');

SELECT * FROM employee

SELECT * FROM department

-- CROSS JOIN
SELECT * FROM employee CROSS JOIN department

-- NATURAL JOIN
SELECT * FROM employee NATURAL JOIN department
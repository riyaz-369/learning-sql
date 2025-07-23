CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hired_date DATE
);

INSERT INTO
    employees (
        emp_name,
        dept_name,
        salary,
        hired_date
    )
VALUES (
        'Alice Smith',
        'Engineering',
        75000.00,
        '2022-01-15'
    ),
    (
        'Bob Johnson',
        'Marketing',
        160000.00,
        '2023-03-20'
    ),
    (
        'Charlie Brown',
        'Sales',
        55000.00,
        '2021-07-10'
    ),
    (
        'Diana Prince',
        'Engineering',
        80000.00,
        '2020-05-25'
    ),
    (
        'Ethan Hunt',
        'Marketing',
        90000.00,
        '2019-11-30'
    ),
    (
        'Fiona Apple',
        'Sales',
        65000.00,
        '2022-08-05'
    ),
    (
        'Gandalf Grey',
        'HR',
        95000.00,
        '2018-04-01'
    ),
    (
        'George Lucas',
        'Engineering',
        190000.00,
        '2021-02-14'
    ),
    (
        'Hannah Montana',
        'HR',
        72000.00,
        '2023-06-18'
    ),
    (
        'Isaac Newton',
        'Sales',
        267000.00,
        '2018-09-22'
    ),
    (
        'Jack Sparrow',
        'Engineering',
        85000.00,
        '2020-12-07'
    ),
    (
        'Katherine Johnson',
        'HR',
        100000.00,
        '2022-10-15'
    ),
    (
        'Leonardo DiCaprio',
        'Marketing',
        178000.00,
        '2021-03-30'
    ),
    (
        'Mia Wallace',
        'HR',
        62000.00,
        '2019-08-19'
    ),
    (
        'Nina Simone',
        'HR',
        90000.00,
        '2020-06-11'
    );

DROP TABLE employees;

--? Problem 1: Find all employees whose salary is greater then the highest salary in the HR department.

SELECT max(salary) FROM employees WHERE dept_name = 'HR'

SELECT *
FROM employees
WHERE
    salary > (
        SELECT max(salary)
        FROM employees
        WHERE
            dept_name = 'HR'
    );
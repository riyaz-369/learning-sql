CREATE Table Student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO
    student (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'Rakesh',
        'Kumar',
        22,
        'A',
        'B.Tech',
        '3dL1e@example.com',
        '1999-01-01',
        'A+',
        'India'
    ),
    (
        'John',
        'Doe',
        20,
        'B',
        'B.Tech',
        '7bV0t@example.com',
        '1999-01-01',
        'A+',
        'USA'
    ),
    (
        'Rohan',
        'Kumar',
        22,
        'A',
        'B.Tech',
        '3dL1e@example.com',
        '1999-01-01',
        'A+',
        'India'
    ),
    (
        'Abdul',
        'Kalam',
        22,
        'A',
        'B.Tech',
        '3dL1e@example.com',
        '1999-01-01',
        'A+',
        'Bangladesh'
    ),
    (
        'Hamid',
        'Khan',
        22,
        'A',
        'B.Tech',
        '3dL1e@example.com',
        '1999-01-01',
        'A+',
        'Pakistan'
    ),
    (
        'Tom',
        'Hanks',
        22,
        'A',
        'B.Tech',
        '3dL1e@example.com',
        '1999-01-01',
        'A+',
        'USA'
    )

-- to print all data
SELECT * FROM student

-- to print only first name and email
SELECT first_name, email FROM student

-- to print only email and alias
SELECT email as student_email FROM student

-- sort data in a specific order
SELECT * FROM student ORDER BY first_name ASC

-- to print only unique data
SELECT DISTINCT country FROM student

SELECT * FROM student WHERE country = 'USA'

SELECT * FROM student WHERE country = 'India' AND age > 20

SELECT * FROM student WHERE country = 'Bangladesh' OR age >= 22

SELECT *
FROM student
WHERE (
        country = 'Bangladesh'
        OR country = 'Pakistan'
    )
    AND age >= 22

SELECT * FROM student WHERE first_name LIKE 'R%'
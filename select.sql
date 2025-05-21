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

-- to print only first name which starts with R
SELECT * FROM student WHERE first_name LIKE 'R%'

-- upper case of first name (upper is a scalar func)
SELECT upper(first_name) as first_name FROM student

--! full name of student (concat is a scalar function)
SELECT concat(first_name, ' ', last_name) as full_name FROM student

/*
? Scalar functions
1. upper()
2. lower()
3. concat()
4. length()
5. substr()
6. replace()
7. trim()
8. ltrim()
9. rtrim()
*/

/*
? Aggregate functions
1. count()
2. sum()
3. avg()
4. min()
5. max()
6. round()
7. ceil()
8. floor()
9. group by()
*/

-- to print average age
SELECT avg(age) FROM student

-- to print maximum age
SELECT max(age) FROM student

-- to print minimum age
SELECT min(age) FROM student

-- to print sum of age
SELECT sum(age) FROM student

-- to print total number of student
SELECT count(*) as total FROM student

-- to print maximum length of first name
SELECT max(length(first_name)) FROM student
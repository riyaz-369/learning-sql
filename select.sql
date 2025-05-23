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
    Student (
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
        'Alice',
        'Johnson',
        20,
        'A',
        'Computer Science',
        'alice.johnson@example.com',
        '2005-04-12',
        'A+',
        'USA'
    ),
    (
        'Bob',
        'Smith',
        22,
        'B',
        'Mathematics',
        'bob.smith@example.com',
        '2003-08-19',
        'B+',
        'Canada'
    ),
    (
        'Charlie',
        'Brown',
        19,
        'A',
        'Physics',
        'charlie.brown@example.com',
        '2005-11-05',
        'O-',
        'UK'
    ),
    (
        'Diana',
        'Ross',
        21,
        'C',
        'History',
        'diana.ross@example.com',
        '2003-01-23',
        'AB+',
        'Australia'
    ),
    (
        'Ethan',
        'Clark',
        23,
        'B',
        'Economics',
        'ethan.clark@example.com',
        '2002-03-14',
        'O+',
        'Germany'
    ),
    (
        'Fiona',
        'Lewis',
        20,
        'A',
        'Biology',
        'fiona.lewis@example.com',
        '2005-09-17',
        'B-',
        'France'
    ),
    (
        'George',
        'Hall',
        22,
        'C',
        'Chemistry',
        'george.hall@example.com',
        '2003-06-25',
        'A-',
        'India'
    ),
    (
        'Hannah',
        'Allen',
        21,
        'B',
        'Engineering',
        'hannah.allen@example.com',
        '2004-02-20',
        'O+',
        'USA'
    ),
    (
        'Ian',
        'Wright',
        20,
        'A',
        'Philosophy',
        'ian.wright@example.com',
        '2005-10-11',
        'AB-',
        'New Zealand'
    ),
    (
        'Julia',
        'Adams',
        19,
        'B',
        'Literature',
        'julia.adams@example.com',
        '2006-05-06',
        'A+',
        'South Africa'
    ),
    (
        'Kevin',
        'Turner',
        23,
        'C',
        'Computer Science',
        'kevin.turner@example.com',
        '2002-12-13',
        'B+',
        'Brazil'
    ),
    (
        'Laura',
        'Hill',
        20,
        'A',
        'Physics',
        'laura.hill@example.com',
        '2005-07-29',
        'O-',
        'Japan'
    ),
    (
        'Mike',
        'Scott',
        21,
        'B',
        'Mathematics',
        'mike.scott@example.com',
        '2004-03-22',
        'A+',
        'Italy'
    ),
    (
        'Nina',
        'Ward',
        22,
        'A',
        'Economics',
        'nina.ward@example.com',
        '2003-11-30',
        'B-',
        'Netherlands'
    ),
    (
        'Oscar',
        'King',
        23,
        'C',
        'Engineering',
        'oscar.king@example.com',
        '2002-01-05',
        'AB+',
        'Mexico'
    ),
    (
        'Paula',
        'Green',
        21,
        'B',
        'Computer Science',
        'paula.green@example.com',
        '2004-08-16',
        'O+',
        'Spain'
    ),
    (
        'Quincy',
        'Baker',
        20,
        'A',
        'History',
        'quincy.baker@example.com',
        '2005-09-04',
        'A-',
        'Portugal'
    ),
    (
        'Rachel',
        'Moore',
        19,
        'B',
        'Literature',
        'rachel.moore@example.com',
        '2006-02-09',
        'O-',
        'USA'
    ),
    (
        'Steve',
        'Taylor',
        22,
        'C',
        'Biology',
        'steve.taylor@example.com',
        '2003-06-01',
        'B+',
        'Russia'
    ),
    (
        'Tina',
        'Evans',
        21,
        'A',
        'Chemistry',
        'tina.evans@example.com',
        '2004-04-18',
        'AB-',
        'Bangladesh'
    );

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

-- ---------------LIKE, ILIKE CLAUSE----------------
-- to print only first name which starts with R
SELECT * FROM student WHERE first_name LIKE 'R%'

-- to print only first name which ends with n
SELECT * FROM student WHERE first_name LIKE '%n'

-- to print only first name which contains second letter as a
SELECT * FROM student WHERE first_name LIKE '_a%'

-- case insensitive
SELECT * FROM student WHERE first_name ILIKE 'a%'

--  ---------------LIMIT, OFFSET CLAUSE----------------
-- to print only first 2 data
SELECT * FROM student LIMIT 2

-- to print data from 2nd to 4th
SELECT * FROM student OFFSET 1 LIMIT 3

-- pagination
SELECT * FROM student LIMIT 3 OFFSET 3 * 0

SELECT * FROM student LIMIT 3 OFFSET 3 * 1
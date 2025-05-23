SELECT * FROM student;

SELECT country, count(*), avg(age) FROM student GROUP BY country;

-- Filter groups using HAVING to show only countries with average age greater than 20
SELECT country, avg(age)
from student
GROUP BY
    country
HAVING
    avg(age) > 20;

-- count students born in each year
SELECT extract(
        YEAR
        FROM dob
    ) as birth_year, count(*)
FROM student
GROUP BY
    birth_year
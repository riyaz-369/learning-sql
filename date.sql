SHOW timezone;

SELECT now();

SELECT CURRENT_DATE;

-- casting function
SELECT now()::date;

SELECT now()::time;

CREATE TABLE timezone_test (
    timestamp TIMESTAMP without time zone,
    timezone TIMESTAMP with TIME zone
);

INSERT INTO timezone_test VALUES ('2025-01-01', '2025-01-01');

SELECT * FROM timezone_test;

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT to_char(now(), 'ddd')

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age (CURRENT_DATE, '2003, 1, 05');

SELECT *, age (CURRENT_DATE, dob) FROM student

SELECT extract( year from CURRENT_DATE );
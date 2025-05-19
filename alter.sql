-- Active: 1747631538897@@127.0.0.1@5432@my_database
SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person2 VALUES ( 6, 'Jane', 32, 'jane@gmail.com' );

ALTER TABLE person2 DROP COLUMN email;

ALTER TABLE person2 RENAME COLUMN age TO user_age;

ALTER TABLE person2 ALTER COLUMN user_name type VARCHAR(50);

ALTER TABLE person2 ALTER COLUMN user_age SET NOT NULL;

ALTER TABLE person2 ALTER COLUMN user_age DROP NOT NULL;

DELETE FROM "person2" WHERE id = 2;

ALTER TABLE person2
ADD constraint unique_person2_user_age UNIQUE (user_age);
-- Active: 1747631538897@@127.0.0.1@5432@my_database
SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person2 VALUES ( 6, 'Jane', 32, 'jane@gmail.com' );

ALTER TABLE person2 DROP COLUMN email;

ALTER TABLE person2 RENAME COLUMN age TO user_age;

ALTER TABLE person2 ALTER COLUMN user_name type VARCHAR(50);

ALTER TABLE person2 ALTER COLUMN user_age SET NOT NULL;

ALTER TABLE person2 ALTER COLUMN user_age DROP NOT NULL;

DELETE FROM "person2" WHERE id = 2;

ALTER TABLE person2
ADD constraint unique_person2_user_age UNIQUE (user_age);

ALTER TABLE person2 DROP constraint unique_person2_user_age;

TRUNCATE TABLE person2;

DROP TABLE person2;
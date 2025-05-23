CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) NOT NULL
);

SELECT * FROM "user";

DROP TABLE "user";

CREATE TABLE "post" (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE set DEFAULT DEFAULT 2
)

ALTER TABLE post alter COLUMN user_id set NOT NULL;

DROP TABLE post;

INSERT INTO
    "user" (user_name)
VALUES ('Akash'),
    ('Batash'),
    ('Sagor'),
    ('Nodi');

INSERT INTO
    "post" (title, user_id)
VALUES (
        'Understanding PostgreSQL Foreign Keys',
        1
    ),
    (
        'My Journey Learning Next.js',
        3
    ),
    (
        'Tips for Clean Code in JavaScript',
        2
    ),
    (
        'How to Use Tailwind CSS Effectively',
        4
    ),
    (
        'Getting Started with TypeScript in React',
        1
    ),
    (
        'Deploying a Full Stack App with Vercel',
        2
    ),
    (
        'Mastering Flexbox and Grid in CSS',
        4
    ),
    (
        'Creating Reusable Components in React',
        1
    );

SELECT * FROM "post"

INSERT INTO
    post (title, user_id)
VALUES (
        'Understanding PostgreSQL Foreign Keys',
        NULL
    )

--? Deletion constraint on DELETE user
-- 1. Cascading - ON DELETE cascade
-- 2. Restricting - ON DELETE restrict / ON DELETE no action (default)
-- 3. Setting null - set null
-- 4. set default value - ON DELETE set default

DELETE FROM "user" WHERE id = 4;

-- Inner join
SELECT post.id, title, user_id, user_name
FROM post
    JOIN "user" ON post.user_id = "user".id;

-- Left join
SELECT post.id, title, user_id, user_name
FROM post
    LEFT JOIN "user" ON post.user_id = "user".id;

INSERT INTO "user" (user_name) VALUES ('Nala');

-- Right join
SELECT post.id, title, user_id, user_name
FROM post
    RIGHT JOIN "user" ON post.user_id = "user".id;

-- Full join
SELECT * FROM post FULL JOIN "user" ON post.user_id = "user".id;
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) NOT NULL
)

CREATE TABLE "post" (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id)
)
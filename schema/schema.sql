CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT,
    admin BOOLEAN
);

CREATE TABLE IF NOT EXISTS restaurants (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    address TEXT,
    opening_hours TEXT
);

CREATE TABLE IF NOT EXISTS reviews (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users,
    restaurant_id INT REFERENCES restaurants,
    score INT,
    comment TEXT,
    created_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS restaurant_owners (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users,
    restaurant_id INT REFERENCES restaurant_id
);

CREATE TABLE IF NOT EXISTS groups (
    id SERIAL PRIMARY KEY,
    group TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS group_members (
    id SERIAL PRIMARY KEY,
    restaurant_id INT REFERENCES restaurants,
    group_id INT REFERENCES groups
);
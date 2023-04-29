CREATE DATABASE pernmovies;

CREATE TABLE movie(
    id SERIAL PRIMARY KEY,
    user_id UUID,
    title VARCHAR(255),
    summary VARCHAR(255),
    rating DECIMAL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE users(
    user_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL UNIQUE,
    user_password VARCHAR(255) NOT NULL
);

--insert fake user
INSERT INTO
    users (user_name, user_email, user_password)
VALUES
    ('jacob', 'jacob@gmail.com', 'kth18822');

--fake movies data
INSERT INTO
    movie (user_id, title, summary, rating)
values
    (
        'a0d51a93-6274-45c9-be8f-4b70c512122a',
        'smrad3',
        'dobar',
        '7'
    );
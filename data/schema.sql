DROP TABLE weathers, meetups, locations, trails;

CREATE TABLE IF NOT EXISTS locations(
    id SERIAL PRIMARY KEY,
    search_query VARCHAR(255),
    formatted_query VARCHAR(255),
    latitude NUMERIC(8,6),
    longitude NUMERIC(9,6)
);

CREATE TABLE IF NOT EXISTS weathers(
    id SERIAL PRIMARY KEY,
    forecast VARCHAR(255),
    time VARCHAR(255),
    location_id INTEGER NOT NULL,
    FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE IF NOT EXISTS meetups(
    id SERIAL PRIMARY KEY,
    link VARCHAR(255),
    name VARCHAR(255),
    creation_date CHAR(15),
    host VARCHAR(255),
    location_id INTEGER NOT NULL,
    FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE IF NOT EXISTS trails(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    summary VARCHAR(255),
    length VARCHAR(255),
    condition_date VARCHAR(255),
    stars VARCHAR(255),
    star_votes VARCHAR(255),
    conditions VARCHAR(255),
    url VARCHAR(255),
    location_id INTEGER NOT NULL,
    FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE IF NOT EXISTS movies(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    released_on VARCHAR(255),
    total_votes VARCHAR(255),
    average_votes VARCHAR(255),
    popularity VARCHAR(255),
    image_url VARCHAR(255),
    overview VARCHAR(255),
    location_id INTEGER NOT NULL,
    FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE IF NOT EXISTS yelps(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    image_url VARCHAR(255),
    rating VARCHAR(255),
    price VARCHAR(255),
    url VARCHAR(255),
    location_id INTEGER NOT NULL,
    FOREIGN KEY (location_id) REFERENCES locations (id)
);
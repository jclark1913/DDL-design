CREATE TABLE planets (
    id SERIAL PRIMARY KEY,
    planet_name TEXT NOT NULL,
    orbital_period FLOAT NOT NULL,
    star_id INT NOT NULL REFERENCES stars
)

CREATE TABLE stars (
    id SERIAL PRIMARY KEY,
    star_name TEXT NOT NULL,
    temp NUMERIC NOT NULL,
)

CREATE TABLE moons (
    id SERIAL PRIMARY KEY,
    moon_name TEXT NOT NULL,
    planet_id INT NOT NULL REFERENCES planets
)

INSERT INTO planets (planet_name, orbital_period, star_id)

INSERT INTO stars (star_name, temp)
    VALUES
        ('The Sun', 5800),
        ('Proxima Centauri', 3042),
        ('Gliese 876', 3192)

INSERT INTO moons ()
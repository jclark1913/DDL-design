CREATE TABLE stars (
    id SERIAL PRIMARY KEY,
    star_name TEXT NOT NULL UNIQUE,
    temp_kelvin FLOAT NOT NULL
);


CREATE TABLE planets (
    id SERIAL PRIMARY KEY,
    planet_name TEXT NOT NULL UNIQUE,
    orbital_period FLOAT NOT NULL,
    star_id INT NOT NULL REFERENCES stars
);


CREATE TABLE moons (
    id SERIAL PRIMARY KEY,
    moon_name TEXT NOT NULL UNIQUE,
    planet_id INT NOT NULL REFERENCES planets
);

INSERT INTO stars (star_name, temp_kelvin)
    VALUES
        ('The Sun', 5800),
        ('Proxima Centauri', 3042),
        ('Gliese 876', 3192);

INSERT INTO planets (planet_name, orbital_period, star_id)
    VALUES
        ('Earth', 1.00, 1),
        ('Mars', 1.882, 1),
        ('Venus', 0.62, 1),
        ('Proxima Centauri b', 0.03, 2),
        ('Gliese 876 b', 0.236, 3);


INSERT INTO moons (moon_name, planet_id)
    VALUES
        ('The Moon', 1),
        ('Phobos', 2),
        ('Deimos', 2);
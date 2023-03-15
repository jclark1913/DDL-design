SELECT p.planet_name AS planet, s.star_name AS star, COUNT(m) AS moon_count
    FROM planets AS p
        JOIN stars AS s
            ON (p.star_id = s.id)
        LEFT JOIN moons AS m
            ON (p.id = m.planet_id)
        GROUP BY p.id, s.star_name
        ORDER BY planet;
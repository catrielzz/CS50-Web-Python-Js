-- Devuelve los flight_id > 1
SELECT flight_id FROM passengers GROUP BY flight_id HAVING COUNT(*) > 1;
 
--  flight_id 
-- -----------
--          4
--          6

-- Devuelve los vuelos que estan dentro del grupo de ids > 1
SELECT * FROM flights WHERE id IN (SELECT flight_id FROM passengers GROUP BY flight_id HAVING COUNT(*) > 1);

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   4 | New York | Paris       |      435
--   6 | Lima     | New York    |      455



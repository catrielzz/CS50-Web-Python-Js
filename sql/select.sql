-- Trae todos los datos de la tabla
SELECT * FROM flights;

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   1 | New York | London      |      415
--   2 | Shanghai | Paris       |      760
--   3 | Istambul | Tokyo       |      700
--   4 | New York | Paris       |      435
--   5 | Moscow   | Paris       |      245
--   6 | Lima     | New York    |      455

-- Trae solo la columna de "origin" de la tabla
SELECT origin FROM flights;

--   origin  
-- ----------
--  New York
--  Shanghai
--  Istambul
--  New York
--  Moscow
--  Lima

-- Trae las columnas de "origin" y "destination" de la tabla
SELECT origin, destination FROM flights;

--   origin  | destination 
-- ----------+-------------
--  New York | London
--  Shanghai | Paris
--  Istambul | Tokyo
--  New York | Paris
--  Moscow   | Paris
--  Lima     | New York

-- Trae todos los datos de la tabla donde el "id" = 3
SELECT * FROM flights WHERE id = 3;

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   3 | Istambul | Tokyo       |      700

-- Trae todos los datos de la tabla donde el "origin" = 'New York
SELECT * FROM flights where origin = 'New York';

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   1 | New York | London      |      415
--   4 | New York | Paris       |      435

-- Trae todos los valores de la tabla siempre y cuando su duracion sea mayor que 500
SELECT * FROM flights where duration > 500;

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   2 | Shanghai | Paris       |      760
--   3 | Istambul | Tokyo       |      700

-- Trae todos los vuelos que su destino sea paris y su duracion mayor que 500
SELECT * FROM flights WHERE destination = 'Paris' AND duration > 500;

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   2 | Shanghai | Paris       |      760

-- Trae todos los vuelos que su destino sea paris o su duracion mayor que 500
SELECT * FROM flights WHERE destination = 'Paris' OR duration > 500;

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   2 | Shanghai | Paris       |      760
--   3 | Istambul | Tokyo       |      700
--   4 | New York | Paris       |      435
--   5 | Moscow   | Paris       |      245

-- Trae todos los destinos y duraciones
SELECT destination, duration FROM flights;

--  destination | duration 
-- -------------+----------
--  London      |      415
--  Paris       |      760
--  Tokyo       |      700
--  Paris       |      435
--  Paris       |      245
--  New York    |      455

-- Trae todos los vuelos con destino a Paris
SELECT * FROM flights WHERE destination = 'Paris';

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   2 | Shanghai | Paris       |      760
--   4 | New York | Paris       |      435
--   5 | Moscow   | Paris       |      245

-- Devuelve el promedio de las duraciones de todos los vuelos
SELECT AVG(duration) FROM flights;

--          avg          
-- ----------------------
--  501.6666666666666667

-- Devuelve el promedio de las duraciones de los vuelos que vienen de New York
SELECT AVG(duration) FROM flights WHERE origin = 'New York';

--          avg          
-- ----------------------
--  425.0000000000000000

-- Devuelve el numero total de filas que hay en nuestra DB
SELECT COUNT(*) FROM flights;

--  count 
-- -------
--      6

-- Devuelve el numero total de filas que hay en nuestra DB donde su origen es New York
SELECT COUNT(*) FROM flights WHERE origin = 'Moscow';

--  count 
-- -------
--      2

-- Devuelve el numero total de filas que hay en nuestra DB donde su origen es Moscow
SELECT COUNT(*) FROM flights WHERE origin = 'Moscow';

--  count 
-- -------
--      1

-- Devuelve el valor minimo de la columna duration
SELECT MIN(duration) FROM flights;

--  min 
-- -----
--  245

-- Devuelve el vuelo donde su duracion es 245
SELECT * FROM flights WHERE duration = 245;

--  id | origin | destination | duration 
-- ----+--------+-------------+----------
--   5 | Moscow | Paris       |      245

-- Devuelve los vuelos que salen desde NY o Lima
SELECT * FROM flights WHERE origin IN('New York', 'Lima');

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   1 | New York | London      |      415
--   4 | New York | Paris       |      435
--   6 | Lima     | New York    |      455

-- Devuelve todos los vuelos donde el nombre de su origen tiene 'a' 
SELECT * FROM flights WHERE origin LIKE '%a%';

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   2 | Shanghai | Paris       |      760
--   3 | Istambul | Tokyo       |      700
--   6 | Lima     | New York    |      455

-- Devuelve todos los vuelos con un limite de 2 vuelos
SELECT * FROM flights LIMIT 2;

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   2 | Shanghai | Paris       |      760
--   4 | New York | Paris       |      435

-- Devuelve todos los vuelos ordenados de menor a mayor
SELECT * FROM flights ORDER BY duration ASC;

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   5 | Moscow   | Paris       |      245
--   1 | New York | London      |      430
--   4 | New York | Paris       |      435
--   6 | Lima     | New York    |      455
--   2 | Shanghai | Paris       |      760

-- Devuelve 3 vuelos ordenados de menor a mayor
SELECT * FROM flights ORDER BY duration ASC LIMIT 3;

--  id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   5 | Moscow   | Paris       |      245
--   1 | New York | London      |      430
--   4 | New York | Paris       |      435

-- Devuelve los vuelos ordenados de mayor a menor
SELECT * FROM flights ORDER BY duration DESC;

-- id |  origin  | destination | duration 
-- ----+----------+-------------+----------
--   2 | Shanghai | Paris       |      760
--   6 | Lima     | New York    |      455
--   4 | New York | Paris       |      435
--   1 | New York | London      |      430
--   5 | Moscow   | Paris       |      245

-- Devuelve los vuelos agrupados por origen
SELECT origin, COUNT(*) FROM flights GROUP By origin;

--   origin  | count 
-- ----------+-------
--  Shanghai |     1
--  Moscow   |     1
--  New York |     2
--  Lima     |     1

-- Devuelve el grupo de vuelos que tienen mayor concurrencia
SELECT origin, COUNT(*) FROM flights GROUP By origin HAVING COUNT(*) > 1;

--   origin  | count 
-- ----------+-------
--  New York |     2


-- Devuelve los pasajeros con los vuelos mediante el JOIN(p.id = f.id)
SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id;

--   origin  | destination |  name  
-- ----------+-------------+--------
--  New York | London      | Yoel
--  Istambul | Tokyo       | Tomas
--  Shanghai | Paris       | Dario
--  New York | Paris       | Hernan
--  Lima     | New York    | Matias

-- Devuelve el pasajero con su vuelo(origen/destino) con el metodo JOIN(p.id = f.id) y where su nombre es 'Hernan'
SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id WHERE name = 'Hernan';

--   origin  | destination |  name  
-- ----------+-------------+--------
--  New York | Paris       | Hernan

-- Devuelve todos los vuelos y pasajeros aunque no tengan un id linkeado
SELECT origin, destination, name FROM flights LEFT JOIN passengers ON passengers.flight_id = flights.id;

--   origin  | destination |  name  
-- ----------+-------------+--------
--  New York | London      | Yoel
--  Istambul | Tokyo       | Tomas
--  Shanghai | Paris       | Dario
--  New York | Paris       | Hernan
--  Lima     | New York    | Matias
--  Moscow   | Paris       | 



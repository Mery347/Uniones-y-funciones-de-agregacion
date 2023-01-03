-- TP Uniones y Funciones de Agregacion

-- Microdesafío 1
-- 1
Serie SELECT. título AS titulo,géneros. name AS genero FROM movies_db. serie
UNIÓN INTERNA movies_db. géneros ON series. genre_id = géneros. identificación;

-- 2
SELECCIONAR episodios. título AS titulo,actores. first_name AS "nombre del actor", actores. last_name AS "apellido del actor" DE movies_db. actor_episode
UNIÓN INTERNA movies_db. actores ON actor_episode. actor_id = actores. identificación
UNIÓN INTERNA movies_db. episodios ON actor_episode. episode_id = episodios. identificación;


-- Microdesafío 2
SELECCIONAR ACTORES DISTINTOS. first_name AS "nombre del actor", actores. last_name AS "apellido del actor" DE movies_db. actor_movie
UNIÓN INTERNA movies_db.  películas ON películas. id = actor_movie. movie_id
UNIÓN INTERNA movies_db. actores ON actores. id = actor_movie. actor_id
DONDE películas. título LIKE 'La Guerra de las galaxias%';


-- Microdesafío 3
SELECCIONA películas. título, COALESCE(géneros. name, 'no tiene genero') AS género FROM movies_db. cine
A LA IZQUIERDA UNIRSE A movies_db. géneros ON películas. genre_id = géneros. identificación;


-- Microdesafío 4
SELECT title AS Título,(to_days(end_date) - to_days(release_date)) AS Duracion  FROM movies_db. serie;


-- Microdesafío 5
-- 1
SELECCIONE * DE movies_db. Actores
DÓNDE LONGITUD(first_name) > 6
PEDIDO POR first_name;

-- 2
SELECCIONE COUNT(id) AS 'Cantidad de episodios' DE movies_db. Episodios;

-- 3
Serie SELECT. título,COUNT(temporadas. serie_id) DE movies_db. Estaciones
UNIÓN INTERNA movies_db. serie ON. id = estaciones. serie_id
GRUPO POR temporadas. serie_id;

-- 4
SELECCIONAR géneros. nombre,COUNT(películas. genre_id) DE movies_db. cine
UNIÓN INTERNA movies_db. géneros ON géneros. id = películas. genre_id
AGRUPAR POR películas. genre_id
CONTAR (películas. genre_id) >= 3;
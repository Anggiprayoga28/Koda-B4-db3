-- Mendapatkan director, berapa genre yang di-direct
SELECT d.id, d.first_name, d.last_name, COUNT(DISTINCT dg.genre) AS total_genre
FROM directors d
LEFT JOIN directors_genres dg ON d.id = dg.director_id
GROUP BY d.id, d.first_name, d.last_name
ORDER BY total_genre DESC;

-- Mendapatkan actors yang memiliki roleh lebih dari 5
SELECT a.id, a.first_name, a.last_name, a,gender, COUNT(r.movie_id) AS total_roles
FROM actors a 
INNER JOIN roles r ON a.id = r.actor_id
GROUP BY a.id, a.first_name, a.last_name, a.gender
HAVING COUNT(r.movie_id) > 5
ORDER BY total_roles DESC;

-- Mendapatkan directors paling produktif sepanjang masa
SELECT d.id, d.first_name, d.last_name, COUNT(md.movie_id) AS total_movies 
FROM directors AS d 
INNER JOIN movies_directors AS md ON d.id = md.director_id 
GROUP BY d.id, d.first_name, d.last_name 
ORDER BY total_movies DESC
LIMIT 1 ;

-- Mendapatkan tahun tersibuk sepanjang masa
SELECT m.year, COUNT(m.id) AS total_movies
FROM movies AS m
GROUP BY m.year
ORDER BY total_movies DESC
LIMIT 1;

-- Mendapatkan movies dengan genres yang di buatkan menjadi 1 column 
SELECT m.id, m.name, STRING_AGG(mg.genre, ', ') AS genres
FROM movies AS m
LEFT JOIN movies_genres AS mg ON m.id = mg.movie_id
GROUP BY m.id, m.name
ORDER BY m.year DESC;
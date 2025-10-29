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
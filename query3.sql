SELECT d.id, d.first_name, d.last_name, COUNT(DISTINCT dg.genre) AS total_genre
FROM directors d
LEFT JOIN directors_genres dg ON d.id = dg.director_id
GROUP BY d.id, d.first_name, d.last_name
ORDER BY total_genre DESC;
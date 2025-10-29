select movies.id, movies.name, directors.first_name, dg.genre from movies
join movies_directors as md on md.movie_id = movies.id join directors on md.director_id = directors.id
join directors_genres as dg on dg.director_id = directors.id limit 50;

select actors.first_name, movies.name, roles.role from actors
left join roles on roles.actor_id = actors.id left join movies on roles.movie_id = movies.id;
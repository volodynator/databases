SELECT name FROM actor, (SELECT movie_id, genre FROM genre, movie WHERE movie_id=mid) WHERE name LIKE 'Tu%' GROUP BY name HAVING COUNT(DISTINCT genre)=1;

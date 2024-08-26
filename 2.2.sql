// Gib alle Schauspieler an, die nur in Filmen des Genres „Action“ spielen und deren Name
// mit „Tu“ beginnt.
SELECT name FROM actor, (SELECT movie_id, genre FROM genre, movie WHERE movie_id=mid) WHERE name LIKE 'Tu%' GROUP BY name HAVING COUNT(DISTINCT genre)=1;

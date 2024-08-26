// Gib alle Schauspieler an, die in mindestens einem Film des Genres „Action“ spielen und
// deren Name mit „Tu“ beginnt; sortiere aufsteigend.
SELECT DISTINCT name FROM actor, (SELECT movie_id FROM genre, movie WHERE movie_id=mid AND genre ='Action') WHERE name LIKE 'Tu%' ORDER BY name ASC;

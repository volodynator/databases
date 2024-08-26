// Gib die Namen der Schauspieler und Produzenten an, die an der Serie “Edge of Night, The“
// beteiligt waren.
(SELECT name FROM actor, movie WHERE title = 'Edge of Night, The' AND movie_id = mid) UNION (SELECT name FROM producer, movie WHERE title = 'Edge of Night, The' AND movie_id = mid);

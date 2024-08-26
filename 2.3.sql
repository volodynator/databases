// Gib die Namen aller Producer an, die im Jahr 2001 Filme in beliebten Genres gedreht haben.
// Ein „beliebtes Genre“ sei ein Genre in dem mindestens 200 Filme gedreht wurden.
SELECT name FROM producer, (SELECT mid FROM movie, genre WHERE mid=movie_id AND year = 2001 AND genre IN (SELECT genre FROM genre GROUP BY genre HAVING COUNT(movie_id) >= 200)) WHERE movie_id=mid;

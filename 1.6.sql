// Erstelle eine Top-3 Liste der Schauspieler und Schauspielerinnen mit den meisten Filmen.
// Sortiere entsprechend.
SELECT name, COUNT(title) AS anzahl FROM ((SELECT name, movie_id FROM actor) UNION (SELECT name, movie_id FROM actress)), movie WHERE movie_id=mid GROUP BY name ORDER BY anzahl DESC FETCH FIRST 3 ROWS ONLY;

// Erstelle eine Top-3 Liste der Filme mit den meisten Schauspielerinnen und Schauspielern.
// Sortiere entsprechend. 
SELECT title, COUNT(name) AS anzahl FROM movie, actor WHERE mid=movie_id GROUP BY title ORDER BY anzahl DESC FETCH FIRST 3 ROWS ONLY;

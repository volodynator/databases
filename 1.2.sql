// Gib alle Produzenten aus der Tabelle producer aus, die keine zugehörigen Einträge in der
// Filmtabelle movie haben. Das Ergebnis soll aufsteigend sortiert sein und jeden Produzenten
// nur einmal enthalten. 
SELECT DISTINCT name FROM producer LEFT JOIN movie ON movie_id=mid WHERE mid is NULL ORDER BY name ASC;

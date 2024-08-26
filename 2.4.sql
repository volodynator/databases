// Formuliere eine Anfrage, die die Jahreszahl und die Anzahl der in diesem Jahr veröffentlichten
// Filme abfragt für
// • das höchste (späteste) vorkommende Jahr und
// • das Jahr mit den meisten veröffentlichten Filmen
((SELECT year, COUNT(mid) AS anzahl FROM movie GROUP BY year ORDER BY year DESC FETCH FIRST 1 ROW ONLY) UNION (SELECT year, COUNT(mid) AS anzahl FROM movie GROUP BY year ORDER BY anzahl DESC FETCH FIRST 1 ROW ONLY)) ORDER BY year DESC;

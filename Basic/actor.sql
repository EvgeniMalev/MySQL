SELECT actor, id
FROM movies
WHERE SUBSTRING(actor, 1, 4) = 'Ivan'

UNION

SELECT actor, id
FROM plays
WHERE SUBSTRING(actor, 1, 5) = 'Peter'

ORDER BY id;

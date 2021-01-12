/*
Sorting single columns (DESC)
To order results in descending order, you can put the keyword DESC after your ORDER BY. For example, to get all the names in the people table, in reverse alphabetical order:

SELECT name
FROM people
ORDER BY name DESC;
Now practice using ORDER BY with DESC to sort single columns in descending order!
*/

/*
Instructions
- Get the IMDB score and film ID for every film from the reviews table, sorted from highest to lowest score.
- Get the title for every film, in reverse order.
- Get the title and duration for every film, in order of longest duration to shortest.
*/

select imdb_score,film_id
from reviews
order by imdb_score desc

select title 
from films
order by title desc

select title,duration
from films
order by duration desc
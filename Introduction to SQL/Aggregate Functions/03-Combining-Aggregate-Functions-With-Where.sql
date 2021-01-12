/*
Combining aggregate functions with WHERE
Aggregate functions can be combined with the WHERE clause to gain further insights from your data.

For example, to get the total budget of movies made in the year 2010 or later:

SELECT SUM(budget)
FROM films
WHERE release_year >= 2010;
Now it's your turn!
*/

/*
Instructions
- Use the SUM function to get the total amount grossed by all films made in the year 2000 or later.
- Get the average amount grossed by all films whose titles start with the letter 'A'.
- Get the amount grossed by the worst performing film in 1994.
- Get the amount grossed by the best performing film between 2000 and 2012, inclusive.
*/

SELECT SUM(GROSS)FROM FILMS
WHERE release_year>1999

SELECT AVG(GROSS)FROM FILMS
where title like 'A%'

SELECT MIN(GROSS)FROM FILMS
WHERE release_year = 1994

SELECT max(GROSS)FROM FILMS
where release_year between 2000 and 2012
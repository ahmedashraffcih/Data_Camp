/*
Aggregate functions practice
Good work. Aggregate functions are important to understand, so let's get some more practice!
*/

/*
Instructions
- Use the SUM function to get the total amount grossed by all films.
- Get the average amount grossed by all films.
- Get the amount grossed by the worst performing film.
- Get the amount grossed by the best performing film.
*/

SELECT SUM(GROSS)FROM FILMS

SELECT AVG(GROSS)FROM FILMS

SELECT MIN(GROSS)FROM FILMS

SELECT MAX(GROSS)FROM FILMS
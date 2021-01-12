/*
NULL and IS NULL
Now that you know what NULL is and what it's used for, it's time for some practice!
*/

/*
Instructions
- Get the names of people who are still alive, i.e. whose death date is missing.
- Get the title of every film which doesn't have a budget associated with it.
- Get the number of films which don't have a language associated with them.
*/

SELECT NAME FROM PEOPLE 
WHERE DEATHDATE IS NULL

SELECT TITLE FROM FILMS 
WHERE BUDGET IS NULL

SELECT COUNT(*)
FROM FILMS
WHERE LANGUAGE IS NULL
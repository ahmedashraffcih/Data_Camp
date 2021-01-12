/*
SELECT DISTINCT
Often your results will include many duplicate values. If you want to select all the unique values from a column, you can use the DISTINCT keyword.

This might be useful if, for example, you're interested in knowing which languages are represented in the films table:

SELECT DISTINCT language
FROM films;
Remember, you can check out the data in the tables by clicking on the table name!
*/

/*
Instructions 
- Get all the unique countries represented in the films table.
- Get all the different film certifications from the films table.
- Get the different types of film roles from the roles table.
*/

select distinct country from films

select distinct certification from films

select distinct role from roles
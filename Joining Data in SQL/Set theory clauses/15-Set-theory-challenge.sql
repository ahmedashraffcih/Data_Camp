/*
Set theory challenge
Congratulations! You've now made your way to the challenge problem for this third chapter. Your task here will be to incorporate two of UNION/UNION ALL/INTERSECT/EXCEPT to solve a challenge involving three tables.

In addition, you will use a subquery as you have in the last two exercises! This will be great practice as you hop into subqueries more in Chapter 4!
*/

/*
Instructions 
- Identify the country codes that are included in either economies or currencies but not in populations.
- Use that result to determine the names of cities in the countries that match the specification in the previous instruction.
*/

select name from cities AS c1
  WHERE country_code IN
(
    SELECT e.code
    FROM economies e
    UNION
    SELECT c2.code
    FROM currencies AS c2
    EXCEPT
    SELECT p.country_code
    FROM populations AS p
);
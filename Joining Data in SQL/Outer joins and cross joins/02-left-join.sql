/* 
Left Join
Now you'll explore the differences between performing an inner join and a left join using the cities and countries tables.

You'll begin by performing an inner join with the cities table on the left and the countries table on the right. Remember to alias the name of the city field as city and the name of the country field as country.

You will then change the query to a left join. Take note of how many records are in each query here!
*/

/*
Instructions
- Fill in the code based on the instructions in the code comments to complete the inner join. Note how many records are in the result of the join in the query result tab.
- Change the code to perform a LEFT JOIN instead of an INNER JOIN. After executing this query, note how many records the query result contains.
*/

SELECT c1.name AS city, code, c2.name AS country,region, city_proper_pop
FROM cities AS c1
inner JOIN countries AS c2
ON c1.country_code = c2.code
ORDER BY code desc;

SELECT c1.name AS city, code, c2.name AS country,region, city_proper_pop
FROM cities AS c1
left JOIN countries AS c2
ON c1.country_code = c2.code
ORDER BY code desc;
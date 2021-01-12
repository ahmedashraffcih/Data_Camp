/*
Subquery inside where (2)
Use your knowledge of subqueries in WHERE to get the urban area population for only capital cities.
*/

/*
Instructions
- Make use of the capital field in the countries table in your subquery.
- Select the city name, country code, and urban area population fields.
*/

SELECT city.name, city.country_code, city.urbanarea_pop
FROM cities AS city
WHERE city.name IN
  -- 1. Subquery
  (SELECT capital
   FROM countries)
ORDER BY urbanarea_pop DESC;

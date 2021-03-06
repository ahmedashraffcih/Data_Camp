/*
Nest a subquery in FROM
What's the average number of matches per season where a team scored 5 or more goals? How does this differ by country?

Let's use a nested, correlated subquery to perform this operation. In the real world, you will probably find that nesting multiple subqueries is a task you don't have to perform often. In some cases, however, you may find yourself struggling to properly group by the column you want, or to calculate information requiring multiple mathematical transformations (i.e., an AVG of a COUNT).

Nesting subqueries and performing your transformations one step at a time, adding it to a subquery, and then performing the next set of transformations is often the easiest way to yield accurate information about your data. Let's get to it!
*/


/*
Instructions 1/3
- Generate a list of matches where at least one team scored 5 or more goals.
*/

SELECT country_id, season, id
FROM match
WHERE home_goal >=5 OR away_goal >=5;


/*
Instructions 2/3
- Turn the query from the previous step into a subquery in the FROM statement.
- COUNT the match ids generated in the previous step, and group the query by country_id and season.
*/

SELECT country_id, season, COUNT(id) AS matches
FROM (
	SELECT country_id, season, id
	FROM match
	WHERE home_goal >=5 OR away_goal >=5) AS subquery
GROUP BY country_id, season;


/*
Instructions 3/3
- Finally, declare the same query from step 2 as a subquery in FROM with the alias outer_s.
- Left join it to the country table using the outer query's country_id column.
- Calculate an AVG of high scoring matches per country in the main query.
*/

SELECT c.name AS country, AVG(outer_s.matches) AS avg_seasonal_high_scores
FROM country AS c
Left join (
  SELECT country_id, season, COUNT(id) AS matches
  FROM (
        SELECT country_id, season, id
	FROM match
	WHERE home_goal >= 5 OR away_goal >= 5) AS inner_s
        GROUP BY country_id, season) AS outer_s
ON c.id = outer_s.country_id
GROUP BY country;
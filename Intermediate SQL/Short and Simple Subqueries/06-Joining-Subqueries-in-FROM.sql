/*
Joining Subqueries in FROM
The match table in the European Soccer Database does not contain country or team names. You can get this information by joining it to the country table, and use this to aggregate information, such as the number of matches played in each country.

If you're interested in filtering data from one of these tables, you can also create a subquery from one of the tables, and then join it to an existing table in the database. A subquery in FROM is an effective way of answering detailed questions that requires filtering or transforming data before including it in your final results.

Your goal in this exercise is to generate a subquery using the match table, and then join that subquery to the country table to calculate information about matches with 10 or more goals in total!
*/

/*
Instructions 1/2
- Create the subquery to be used in the next step, which selects the country ID and match ID (id) from the match table.
- Filter the query for matches with greater than or equal to 10 goals.
*/

SELECT country_id,id
FROM match
WHERE (home_goal + away_goal) >= 10;



Instructions 2/2
- Construct a subquery that selects only matches with 10 or more total goals.
- Inner join the subquery onto country in the main query.
- Select name from country and count the id column from match.
*/

SELECT c.name AS country_name, COUNT(sub.id) AS matches
FROM country AS c
Inner join (SELECT country_id, id FROM match
           WHERE (home_goal + away_goal) >=10) AS sub
ON c.id = sub.country_id
GROUP BY country_name;
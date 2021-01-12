/*
CTEs with nested subqueries
If you find yourself listing multiple subqueries in the FROM clause with nested statement, your query will likely become long, complex, and difficult to read.

Since many queries are written with the intention of being saved and re-run in the future, proper organization is key to a seamless workflow. Arranging subqueries as CTEs will save you time, space, and confusion in the long run!
*/


/*
Instructions

- Declare a CTE that calculates the total goals from matches in August of the 2013/2014 season.
- Left join the CTE onto the league table using country_id from the match_list CTE.
- Filter the list on the inner subquery to only select matches in August of the 2013/2014 season.
*/

WITH match_list AS (
    SELECT country_id,(home_goal + away_goal) AS goals
    FROM match
    WHERE id IN (
       SELECT id
       FROM match
       WHERE season = '2013/2014' AND EXTRACT(MONTH FROM date) = 08))
SELECT l.name,AVG(goals)
FROM league AS l
LEFT JOIN match_list ON l.id = match_list.country_id
GROUP BY l.name;
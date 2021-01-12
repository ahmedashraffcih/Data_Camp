/*
Building on Subqueries in FROM
In the previous exercise, you found that England, Netherlands, Germany and Spain were the only countries that had matches in the database where 10 or more goals were scored overall. Let's find out some more details about those matches -- when they were played, during which seasons, and how many of the goals were home vs. away goals.

You'll notice that in this exercise, the table alias is excluded for every column selected in the main query. This is because the main query is extracting data from the subquery, which is treated as a single table.
*/


/*
Instructions 1
- Complete the subquery inside the FROM clause. Select the country name from the country table, and the home goal, and away goal columns from the match table.
- Create a column in the subquery that adds home and away goals, called total_goals. This will be used to filter the main query.
- Select the country, date, home goals, and away goals in the main query.
- Filter the main query for games with 10 or more total goals.
*/

SELECT country, date, home_goal,away_goal
FROM 
    (SELECT name AS country, m.date, m.home_goal, m.away_goal,
            (m.home_goal + m.away_goal) AS total_goals
    FROM match AS m
    LEFT JOIN country AS c
    ON m.country_id = c.id) AS subq
WHERE total_goals >= 10;
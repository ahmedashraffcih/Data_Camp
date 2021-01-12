/*
Get team names with CTEs
You've now explored two methods for answering the question, How do you get both the home and away team names into one final query result?

Let's explore the final method - common table expressions. Common table expressions are similar to the subquery method for generating results, mainly differing in syntax and the order in which information is processed.
*/



/*
Instructions  1/3
- Select id from match and team_long_name from team. Join these two tables together on hometeam_id in match and team_api_id in team.
*/


SELECT m.id, t.team_long_name AS hometeam
FROM match AS m
LEFT JOIN team AS t 
ON m.hometeam_id = t.team_api_id;



/*
Instructions  2/3
- Declare the query from the previous step as a common table expression. SELECT everything from the CTE into the main query. Your results will not change at this step!
*/

WITH home AS (
	SELECT m.id, t.team_long_name AS hometeam
	FROM match AS m
	LEFT JOIN team AS t 
	ON m.hometeam_id = t.team_api_id)
SELECT * FROM home;



/*
Instructions  3/3
- Let's declare the second CTE, away. Join it to the first CTE on the id column.
- The date, home_goal, and away_goal columns have been added to the CTEs. SELECT them into the main query.
*/

WITH home AS (
  SELECT m.id, m.date, t.team_long_name AS hometeam, m.home_goal
  FROM match AS m
  LEFT JOIN team AS t 
  ON m.hometeam_id = t.team_api_id),
away AS (
  SELECT m.id, m.date, t.team_long_name AS awayteam, m.away_goal
  FROM match AS m
  LEFT JOIN team AS t 
  ON m.awayteam_id = t.team_api_id)
SELECT home.date, home.hometeam, away.awayteam, home.home_goal, away.away_goal
FROM home
INNER JOIN away
ON home.id = away.id;
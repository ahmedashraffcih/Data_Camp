/*
Putting the CTEs together
Now that you've created the two subqueries identifying the home and away team opponents, it's time to rearrange your query with the home and away subqueries as Common Table Expressions (CTEs). You'll notice that the main query includes the phrase, SELECT DISTINCT. Without identifying only DISTINCT matches, you will return a duplicate record for each game played.

Continue building the query to extract all matches played by Manchester United in the 2014/2015 season.
*/



/*
Instructions  
- Declare the home and away CTEs before your main query.
- Join your CTEs to the match table using a LEFT JOIN.
- Select the relevant data from the CTEs into the main query.
- Select the date from match, team names from the CTEs, and home/ away goals from match in the main query.
*/

WITH home AS (
  SELECT m.id, t.team_long_name,
	CASE WHEN m.home_goal > m.away_goal THEN 'MU Win'
	WHEN m.home_goal < m.away_goal THEN 'MU Loss' 
  	ELSE 'Tie' END AS outcome
  FROM match AS m
  LEFT JOIN team AS t ON m.hometeam_id = t.team_api_id),

away AS (
  SELECT m.id, t.team_long_name,
	CASE WHEN m.home_goal > m.away_goal THEN 'MU Win'
	WHEN m.home_goal < m.away_goal THEN 'MU Loss' 
  	ELSE 'Tie' END AS outcome
  FROM match AS m
  LEFT JOIN team AS t ON m.awayteam_id = t.team_api_id)

SELECT DISTINCT date, home.team_long_name AS home_team, away.team_long_name AS away_team, m.home_goal, m.away_goal
FROM match AS m
INNER JOIN home ON m.id = home.id
INNER JOIN away ON m.id = away.id
WHERE m.season = '2014/2015' AND (home.team_long_name = 'Manchester United' OR away.team_long_name = 'Manchester United');
/*
Add a window function
Fantastic! You now have a result set that retrieves the match date, home team, away team, and the goals scored by each team. You have one final component of the question left -- how badly did Manchester United lose in each match?

In order to determine this, let's add a window function to the main query that ranks matches by the absolute value of the difference between home_goal and away_goal. This allows us to directly compare the difference in scores without having to consider whether Manchester United played as the home or away team!

The equation is complete for you -- all you need to do is properly complete the window function!
*/

/*
Instructions
- Set up the CTEs so that the home and away teams each have a name, ID, and score associated with them.
- Select the date, home team name, away team name, home goal, and away goals scored in the main query.
- Rank the matches and order by the difference in scores in descending order.
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
	CASE WHEN m.home_goal > m.away_goal THEN 'MU Loss'
	WHEN m.home_goal < m.away_goal THEN 'MU Win' 
  	ELSE 'Tie' END AS outcome
  FROM match AS m
  LEFT JOIN team AS t ON m.awayteam_id = t.team_api_id)
SELECT DISTINCT
    m.date,
    home.team_long_name AS home_team,
    away.team_long_name AS away_team,
    m.home_goal, m.away_goal,
    RANK() OVER(ORDER BY ABS(home_goal - away_goal) DESC) as match_rank
FROM match AS m
LEFT JOIN home ON m.id = home.id
LEFT JOIN away ON m.id = away.id
WHERE m.season = '2014/2015'
      AND ((home.team_long_name = 'Manchester United' AND home.outcome = 'MU Loss')
      OR (away.team_long_name = 'Manchester United' AND away.outcome = 'MU Loss'));
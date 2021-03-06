/*
Setting up the away team CTE
Great job! Now that you have a query identifying the home team in a match, you will perform a similar set of steps to identify the away team. Just like the previous step, you will join the match and team tables. Each of these two queries will be declared as a Common Table Expression in the following step.

The primary difference in this query is that you will be joining the tables on awayteam_id, and reversing the match outcomes in the CASE statement.

When altering CASE statement logic in your own work, you can reverse either the logical condition (i.e., home_goal > away_goal) or the outcome in THEN -- just make sure you only reverse one of the two!
*/



/*
Instructions 
- Complete the CASE statement syntax.
- Fill out the logical operators identifying each match as a win, loss, or tie for Manchester United.
- Join the table on awayteam_id, and team_api_id.
*/

SELECT m.id, t.team_long_name,
	CASE WHEN m.home_goal < m.away_goal THEN 'MU Win'
	WHEN m.home_goal > m.away_goal THEN 'MU Loss'
        ELSE 'Tie' END AS outcome
FROM match AS m
LEFT JOIN team AS t 
ON m.awayteam_id = t.team_api_id
WHERE m.season = '2014/2015' AND t.team_long_name = 'Manchester United';
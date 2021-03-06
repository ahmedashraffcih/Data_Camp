/*
Setting up the home team CTE
In this course, we've covered ways in which you can use CASE statements, subqueries, common table expressions, and window functions in your queries to structure a data set that best meets your needs. For this exercise, you will be using all of these concepts to generate a list of matches in which Manchester United was defeated during the 2014/2015 English Premier League season.

Your first task is to create the first query that filters for matches where Manchester United played as the home team. This will become a common table expression in a later exercise.
*/



/*
Instructions 
- Create a CASE statement that identifies each match as a win, lose, or tie for Manchester United.
- Fill out the logical operators for each WHEN clause in the CASE statement (equals, greater than, less than).
- Join the tables on home team ID from match, and team_api_id from team.
- Filter the query to only include games from the 2014/2015 season where Manchester United was the home team.
*/

SELECT m.id, t.team_long_name,
	CASE WHEN m.home_goal > m.away_goal THEN 'MU Win'
		WHEN m.home_goal < m.away_goal THEN 'MU Loss'
        ELSE 'Tie' END AS outcome
FROM match AS m
LEFT JOIN team AS t 
ON m.hometeam_id = t.team_api_id
WHERE m.season = '2014/2015' AND t.team_long_name = 'Manchester United';
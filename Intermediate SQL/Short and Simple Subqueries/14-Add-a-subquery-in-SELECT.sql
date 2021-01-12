/*
Add a subquery in SELECT
In the previous exercise, you added a subquery to the FROM statement and selected the stages where the number of average goals in a stage exceeded the overall average number of goals in the 2012/2013 match season. In this final step, you will add a subquery in SELECT to compare the average number of goals scored in each stage to the total.
*/



/*
Instructions 
- Create a subquery in SELECT that yields the average goals scored in the 2012/2013 season. Name the new column overall_avg.
- Create a subquery in FROM that calculates the average goals scored in each stage during the 2012/2013 season.
- Filter the main query for stages where the average goals exceeds the overall average in 2012/2013. 
*/


SELECT s.stage,
    ROUND(s.avg_goals,2) AS avg_goal,
    (SELECT AVG(home_goal + away_goal) FROM match WHERE season = '2012/2013') AS overall_avg
FROM 
	(SELECT stage,
         AVG(home_goal + away_goal) AS avg_goals
	 FROM match
	 WHERE season = '2012/2013'
	 GROUP BY stage) AS s
WHERE 
	s.avg_goals > (SELECT AVG(home_goal + away_goal) 
                    FROM match WHERE season = '2012/2013');
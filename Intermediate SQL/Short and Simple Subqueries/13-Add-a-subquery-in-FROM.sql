/*
Add a subquery in FROM
In the previous exercise, you created a data set listing the average home and away goals in each match stage of the 2012/2013 match season.

In this next step, you will turn the main query into a subquery to extract a list of stages where the average home goals in a stage is higher than the overall average for home goals in a match.
*/



/*
Instructions 
- Calculate the average home goals and average away goals from the match table for each stage in the FROM clause subquery.
- Add a subquery to the WHERE clause that calculates the overall average home goals.
- Filter the main query for stages where the average home goals is higher than the overall average.
- Select the stage and avg_goals columns from the s subquery into the main query. 
*/

SELECT s.stage, ROUND(s.avg_goals,2) AS avg_goals
FROM 
	(SELECT stage,
         AVG(home_goal + away_goal) AS avg_goals
	 FROM match
	 WHERE season = '2012/2013'
	 GROUP BY stage) AS s
WHERE 
	s.avg_goals > (SELECT AVG(home_goal + away_goal) 
        FROM match WHERE season = '2012/2013');
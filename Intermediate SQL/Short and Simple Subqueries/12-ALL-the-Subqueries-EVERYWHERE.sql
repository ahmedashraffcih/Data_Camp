/*
ALL the Subqueries EVERYWHERE
In soccer leagues, games are played at different stages. Winning teams progress from one stage to the next, until they reach the final stage. In each stage, the stakes become higher than the previous one. The match table includes data about the different stages that each match took place in.

In this lesson, you will build a final query across 3 exercises that will contain three subqueries -- one in the SELECT clause, one in the FROM clause, and one in the WHERE clause. In the final exercise, your query will extract data examining the average goals scored in each stage of a match. Does the average number of goals scored change as the stakes get higher from one stage to the next?
*/



/*
Instructions 
- Extract the average number of home and away team goals in two SELECT subqueries.
- Calculate the average home and away goals for the specific stage in the main query.
- Filter both subqueries and the main query so that only data from the 2012/2013 season is included.
- Group the query by the m.stage column.
*/

SELECT m.stage,
    ROUND(AVG(m.home_goal + m.away_goal),2) AS avg_goals,
    ROUND((SELECT AVG(home_goal + away_goal) 
           FROM match 
           WHERE season = '2012/2013'),2) AS overall
FROM match AS m
WHERE season = '2012/2013'
GROUP BY m.stage;
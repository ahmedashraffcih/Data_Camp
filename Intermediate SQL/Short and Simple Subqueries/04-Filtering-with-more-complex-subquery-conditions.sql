/*
Filtering with more complex subquery conditions
In the previous exercise, you generated a list of teams that have no home matches listed in the soccer database using a subquery in WHERE. Let's do some further exploration in this database by creating a list of teams that scored 8 or more goals in a home match.

In order to do this, you will construct a subquery in the WHERE statement with its own filtering condition.
*/


/*
Instructions 
- Create a subquery in WHERE clause that retrieves all hometeam_ID values from match with a home_goal score greater than or equal to 8.
- Select the team_long_name and team_short_name from the team table. Include all values from the subquery in the main query.

*/

SELECT team_long_name, team_short_name
FROM team
WHERE team_api_id in
	  (SELECT hometeam_ID 
       FROM match
       WHERE home_goal >= 8);
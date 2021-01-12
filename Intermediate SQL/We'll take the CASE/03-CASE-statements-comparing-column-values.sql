/*
CASE statements comparing column values
Barcelona is considered one of the strongest teams in Spain's soccer league.

In this exercise, you will be creating a list of matches in the 2011/2012 season where Barcelona was the home team. You will do this using a CASE statement that compares the values of two columns to create a new group -- wins, losses, and ties.

In 3 steps, you will build a query that identifies a match's winner, identifies the identity of the opponent, and finally filters for Barcelona as the home team. Completing a query in this order will allow you to watch your results take shape with each new piece of information.

The matches_spain table currently contains Barcelona's matches from the 2011/2012 season, and has two key columns, hometeam_id and awayteam_id, that can be joined with the teams_spain table. However, you can only join teams_spain to one column at a time.
*/

/*
Instructions 1/3
- Select the date of the match and create a CASE statement to identify matches as home wins, home losses, or ties.
*/

SELECT date,
    CASE WHEN home_goal > away_goal THEN 'Home win!'
    WHEN home_goal < away_goal THEN 'Home loss :(' 
    ELSE 'Tie' END AS outcome
FROM matches_spain;


/*
Instructions 2/3
- Left join the teams_spain table team_api_id column to the matches_spain table awayteam_id. This allows us to retrieve the away team's identity.
- Select team_long_name from teams_spain as opponent and complete the CASE statement from Step 1.
*/

SELECT m.date,t.team_long_name AS opponent, 
    CASE WHEN m.home_goal > m.away_goal THEN 'Home win!'
    WHEN m.home_goal < m.away_goal THEN 'Home loss :('
    ELSE 'Tie' END AS outcome
FROM matches_spain AS m
LEFT join teams_spain AS t
ON m.awayteam_id = t.team_api_id;


/*
Instructions 3/3
- Complete the same CASE statement as the previous steps.
- Filter for matches where the home team is FC Barcelona (id = 8634).
*/

SELECT m.date,t.team_long_name AS opponent,
	CASE WHEN m.home_goal > m.away_goal THEN 'Barcelona win!'
    WHEN m.home_goal < m.away_goal THEN 'Barcelona loss :(' 
    ELSE 'Tie' END AS outcome 
FROM matches_spain AS m
LEFT JOIN teams_spain AS t 
ON m.awayteam_id = t.team_api_id
WHERE m.hometeam_id = 8634; 


/*
Filtering using a subquery with a list
Your goal in this exercise is to generate a list of teams that never played a game in their home city. Using a subquery, you will generate a list of unique hometeam_ID values from the unfiltered match table to exclude in the team table's team_api_ID column.

In addition to filtering using a single-value (scalar) subquery, you can create a list of values in a subquery to filter data based on a complex set of conditions. This type of subquery generates a one column reference list for the main query. As long as the values in your list match a column in your main query's table, you don't need to use a join -- even if the list is from a separate table.
*/

/*
Instructions 1/3
- Create a subquery in the WHERE clause that retrieves all unique hometeam_ID values from the match table.
- Select the team_long_name and team_short_name from the team table. Exclude all values from the subquery in the main query.
*/

SELECT team_long_name, team_short_name
FROM team 
WHERE team_api_id not in
     (SELECT DISTINCT hometeam_ID  FROM match);

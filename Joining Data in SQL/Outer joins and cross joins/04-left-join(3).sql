/*
Left join (3)
You'll now revisit the use of the AVG() function introduced in our Intro to SQL for Data Science course. 
You will use it in combination with left join to determine the average gross domestic product (GDP) per capita by region in 2010.
*/


/*
Instructions 1/3
- Begin with a left join with the countries table on the left and the economies table on the right.
- Focus only on records with 2010 as the year.
*/

SELECT c.name,c.region,e.gdp_percapita
FROM countries c
LEFT JOIN economies e
ON c.code = e.code
WHERE year = 2010;

/*
Instructions 2/3
- Modify your code to calculate the average GDP per capita AS avg_gdp for each region in 2010.
- Select the region and avg_gdp fields.

*/

SELECT c.region,avg(e.gdp_percapita) as avg_gdp
FROM countries c
LEFT JOIN economies e
ON c.code = e.code
where year = 2010
Group by region


/*
Instructions 3/3
Arrange this data on average GDP per capita for each region in 2010 from highest to lowest average GDP per capita.
*/

SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries c
LEFT JOIN economies e
ON c.code = e.code
where year = 2010
group by region
order by avg_gdp desc

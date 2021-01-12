/* 
Union
Near query result to the right, you will see two new tables with names economies2010 and economies2015.
*/

/*
Instructions
- Combine these two tables into one table containing all of the fields in economies2010. The economies table is also included for reference.
- Sort this resulting single table by country code and then by year, both in ascending order.
*/

Select * from economies2010
union
Select * from economies2015
ORDER BY code, year;
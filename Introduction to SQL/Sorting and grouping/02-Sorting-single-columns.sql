/*
Sorting single columns
Now that you understand how ORDER BY works, give these exercises a go!
*/

/*
Instructions 
- Get the names of people from the people table, sorted alphabetically.
- Get the names of people, sorted by birth date.
- Get the birth date and name for every person, in order of when they were born.
*/

select name from people
order by name asc

select name from people
order by birthdate asc

select name,birthdate from people
order by birthdate


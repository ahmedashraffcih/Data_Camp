/*
Sorting single columns (2)
Let's get some more practice with ORDER BY!
*/

/*
Instructions 
- Get the title of films released in 2000 or 2012, in the order they were released.
- Get all details for all films except those released in 2015 and order them by duration.
- Get the title and gross earnings for movies which begin with the letter 'M' and order the results alphabetically.
*/

select title from films
where release_year in (2000,2012)
order by release_year asc

select * from films
where release_year not in (2015)
order by duration asc

select title, gross from films
where title like 'M%' 
order by title asc
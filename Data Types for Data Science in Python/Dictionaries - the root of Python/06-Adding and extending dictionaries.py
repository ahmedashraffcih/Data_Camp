# Adding and extending dictionaries
# If you have a dictionary and you want to add data to it, you can simply create a new key and assign the data you desire to it. It's important to remember that if it's a nested dictionary, then all the keys in the data path must exist, and each key in the path must be assigned individually.

# You can also use the .update() method to update a dictionary with keys and values from another dictionary, tuples or keyword arguments.

# Here, you'll combine several techniques used in prior exercises to setup your dictionary in a way that makes it easy to find the least popular baby name for each year.

# Your job is to add data for the year 2011 to your dictionary by assignment, 2012 by update, and then find the least popular baby name for each year.

# - Instructions
# Assign the names_2011 dictionary as the value to the 2011 key of the boy_names dictionary.
# Update the 2012 key in the boy_names dictionary with the following data in a list of tuples: (1, 'Casey'), (2, 'Aiden').
# Loop over the boy_names dictionary.
# Inside the for loop, sort the data for each year of boy_names by descending rank and take the first result which will be the lowest ranked name.
# Safely print the year and least popular name or 'Not Available' if it is not found. Take advantage of the .get() method.


# Assign the names_2011 dictionary as the value to the 2011 key of boy_names
boy_names[2011] = names_2011

# Update the 2012 key in the boy_names dictionary
boy_names[2012].update([(1,'Casey'), (2,'Aiden')])

# Loop over the years in the boy_names dictionary 
for year in boy_names:
    # sort the data for each year by descending rank and get the lowest one
    lowest_ranked = sorted(boy_names[year], reverse=True)[0]
    # Safely print the year and the least popular name or 'Not Available'
    print(year, boy_names[year].get(lowest_ranked, 'Not Available'))
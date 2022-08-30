# Dealing with nested data
# A dictionary can contain another dictionary as the value of a key, and this is a very common way to deal with repeating data structures such as yearly, monthly or weekly data. All the same rules apply when creating or accessing the dictionary.

# For example, if you had a dictionary that had a ranking of my cookie consumption by year and type of cookie. It might look like cookies = {'2017': {'chocolate chip': 483, 'peanut butter': 115}, '2016': {'chocolate chip': 9513, 'peanut butter': 6792}}. I could access how many chocolate chip cookies I ate in 2016 using cookies['2016']['chocolate chip'].

# When exploring a new dictionary, it can be helpful to use the .keys() method to get an idea of what data might be available within the dictionary. You can also iterate over a dictionary and it will return each key in the dictionary for you to use inside the loop. Here, a dictionary called boy_names has been loaded into your workspace. It consists of all male names in 2013 and 2014.



#Instructions

# Print the keys of the boy_names dictionary.
# Print the keys of the boy_names dictionary for the year 2013.
# Loop over the boy_names dictionary.
# Inside the loop, safely print the year and the third ranked name. Print 'Unknown' if the third ranked name is not found.





# Print a list of keys from the boy_names dictionary
print(boy_names.keys())

# Print a list of keys from the boy_names dictionary for the year 2013
print(boy_names[2013].keys())

# Loop over the dictionary
for year in boy_names:
    # Safely print the year and the third ranked name or 'Unknown'
    print(year, boy_names[year].get(3, 'Unknown'))
# Creating and looping through dictionaries
# You'll often encounter the need to loop over some array type data, like in Chapter 1, and provide it some structure so you can find the data you desire quickly.

# You start that by creating an empty dictionary and assigning part of your array data as the key and the rest as the value.

# Previously, you used sorted() to organize your data in a list. Dictionaries can also be sorted. By default, using sorted() on a dictionary will sort by the keys of the dictionary. You can also reverse the order by passing reverse=True as a keyword argument.

# Finally, since sorted returns a list, you can use slice notation to select only part of the list. For example, [:10] will slice the first ten items off a list and return only those items.


#Instructions
# Create an empty dictionary called names_by_rank.
# Loop over female_baby_names_2012.items(), unpacking it into the variables rank and name.
# Inside the loop, add each name to the names_by_rank dictionary using the rank as the key.
# Sort the names_by_rank dictionary keys in descending order, select the first ten items. Print each item



# Create an empty dictionary: names_by_rank
names_by_rank = {}

# Loop over the girl names
for rank, name in female_baby_names_2012.items():
    # Add each name to the names_by_rank dictionary using rank as the key
    names_by_rank[rank] = name
    
# Sort the names_by_rank dict by rank in descending order and slice the first 10 items
for rank in sorted(names_by_rank,reverse=True)[:10] :
    # Print each item
    print(names_by_rank[rank])
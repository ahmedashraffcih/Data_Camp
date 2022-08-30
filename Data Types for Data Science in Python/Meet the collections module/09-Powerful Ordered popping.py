# Powerful Ordered popping
# Where OrderedDicts really shine is when you need to access the data in the dictionary in the order you added it. OrderedDict has a .popitem() method that will return items in reverse of which they were inserted. You can also pass .popitem() the last=False keyword argument and go through the items in the order of how they were added.

# Here, you'll use the ridership_date OrderedDict you created in the previous exercise.



#Instructions
# Print the first key in ridership_date (Remember to make keys a list before slicing).
# Pop the first item from ridership_date and print it.
# Print the last key in ridership_date.
# Pop the last item from ridership_date and print it.



# Print the first key in ridership_date
print(list(ridership_date)[0])

# Pop the first item from ridership_date and print it
print(ridership_date.popitem())

# Print the last key in ridership_date
print(ridership_date.popitem(last=False))

# Pop the last item from ridership_date and print it
print(ridership_date.popitem(last=False))
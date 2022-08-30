# Working with dictionaries more pythonically
# So far, you've worked a lot with the keys of a dictionary to access data, but in Python, the preferred manner for iterating over items in a dictionary is with the .items() method.

# This returns each key and value from the dictionary as a tuple, which you can unpack in a for loop. You'll now get practice doing this.


#Instructions

# Iterate over baby_names[2014], unpacking it into rank and name.
#    Print each rank and name.
# Repeat the process for baby_names[2012].


# Iterate over the 2014 nested dictionary
for rank, name in baby_names[2014].items():
    # Print rank and name
    print(rank, name)
    
# Iterate over the 2012 nested dictionary

for rank, name in baby_names[2012].items():
    # Print rank and name
    print(rank, name)
    
    
# Reading from a file using CSV reader
# Python provides a wonderful module called csv to work with CSV files. You can pass the .reader() method of csv a Python file object and use it as you would any other iterable. To create a Python file object, you use the open() function, which accepts a file name and a mode. The mode is typically 'r' for read or 'w' for write.

# Though you won't use it for this exercise, often CSV files will have a header row with field names, and you will need to use slice notation such as [1:] to skip the header row.

# You'll now use the csv module to read the baby_names.csv file and fill the baby_names dictionary with data. This baby_names dictionary has already been created for you.



#Instructions

# Import the python csv module.
# Create a Python file object in read mode for baby_names.csv called csvfile with the open function.
# Use the reader method from the csv module on the file object in a for loop. Inside the loop:
#     Print each row and add the rank (the 6th element of row) as the key and name (the 4th element of row) as the value to the existing dictionary (baby_names).
# Print the keys of baby_names.


# Import the python CSV module
import csv 

# Create a python file object in read mode for the baby_names.csv file: csvfile
csvfile = open('baby_names.csv','r')

# Loop over a csv reader on the file object
for row in csv.reader(csvfile):
    # Print each row 
    print(row)
    # Add the rank and name to the dictionary
    baby_names[row[5]] = row[3]

# Print the dictionary keys
print(baby_names.keys())
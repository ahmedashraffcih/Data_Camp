# Converting to a String
# Converting from a datetime object to a string is done with the .strftime() method on a instance of the datetime object. You pass a format string just like the ones used in the prior exercise.

# There is also a widely used string output standard called ISO-8601. It has a shortcut method named .isoformat(). I encourage you to use it anytime you write out to a file.

# All the datetimes you created for the transit data in the prior exercise are saved in the datetimes_list.



# Instructions
# Loop over the first 10 items of the datetimes_list, using item as your iterator variable.
#     Print out the item as a string in the format of 'MM/DD/YYYY'. For this, the format string is '%m/%d/%Y'.
#     Print out the item as an ISO standard string.


# Loop over the first 10 items of the datetimes_list
for item in datetimes_list[:10]:
    # Print out the record as a string in the format of 'MM/DD/YYYY'
    print(item.strftime('%m/%d/%Y'))
    
    # Print out the record as an ISO standard string
    print(item.isoformat())
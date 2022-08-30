# Finding differences in DateTimes
# Just like you were able to subtract a timedelta from a datetime to find a date in the past, you can also calculate the difference between two dates to get the timedelta between in return. Here, you'll find out how much time has elapsed between two transit dates.

# A list of tuples called date_ranges is provided for you. We took the dates from our dataset at every 30th record, and we paired up the records into tuples in a stepwise fashion.





#Instructions

# Iterate over date_ranges, unpacking it into start_date and end_date.
# Print the end_date and start_date using the same print() function.
# Print the difference between each end_date and start_date.

# Iterate over the date_ranges
for start_date, end_date in date_ranges:
    # Print the End and Start Date
    print(end_date, start_date)
    # Print the difference between each end and start date
    print(end_date-start_date)
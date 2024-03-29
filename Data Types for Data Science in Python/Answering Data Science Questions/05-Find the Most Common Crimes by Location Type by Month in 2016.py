# Find the Most Common Crimes by Location Type by Month in 2016
# Using the locations_by_month dictionary from the prior exercise, you'll now determine common crimes by month and location type. Because your dataset is so large, it's a good idea to use Counter to look at an aspect of it in an easier to manageable size and learn more about it.


#Instructions

# Import Counter from collections.
# Loop over the items from your dictionary, using tuple expansion to unpack locations_by_month.items() into month and locations.
# Make a Counter of the locations called location_count.
# Print the month.
# Print the five most common crime locations.


# Import Counter from collections
from collections import Counter

# Loop over the items from locations_by_month using tuple expansion of the month and locations
for month,locations in locations_by_month.items():
    # Make a Counter of the locations
    location_count = Counter(locations)
    # Print the month 
    print(month)
    # Print the most common location
    print(location_count.most_common(5))
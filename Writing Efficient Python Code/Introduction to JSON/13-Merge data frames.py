#Merge data frames
#In the last exercise, you built a dataset of the top 100 cafes in New York City according to Yelp. Now, you'll combine that with demographic data to investigate which neighborhood has the most good cafes per capita.

#To do this, you'll merge two datasets with the DataFrame merge() method. The first,crosswalk, is a crosswalk between ZIP codes and Public Use Micro Data Sample Areas (PUMAs), which are aggregates of census tracts and correspond roughly to NYC neighborhoods. Then, you'll merge in pop_data, which contains 2016 population estimates for each PUMA.

#pandas (as pd) has been imported, as has the cafes data frame from last exercise.



#Instructions 1/3

#Question
# - Explore the cafes and crosswalk data frames in the console. Which columns should be used as join keys?



# Answer : location_zip_code in cafes and zipcode in crosswalk




#Instructions 2/3

#Question
# - Explore the crosswalk and pop_data data frames in the console. Which columns should be used as join keys?


# Answer : puma in both



#Instructions 3/3

# - Use the DataFrame method to merge cafes and crosswalk on location_zip_code and zipcode, respectively. Assign the result to cafes_with_pumas.
# - Merge pop_data into cafes_with_pumas on their puma fields. Save the result as cafes_with_pop.


# Merge crosswalk into cafes on their zip code fields
cafes_with_pumas = cafes.merge(crosswalk,
                                left_on='location_zip_code',
                                right_on='zipcode')


# Merge pop_data into cafes_with_pumas on puma field
cafes_with_pop = cafes_with_pumas.merge(pop_data, on='puma')

# View the data
print(cafes_with_pop.head())
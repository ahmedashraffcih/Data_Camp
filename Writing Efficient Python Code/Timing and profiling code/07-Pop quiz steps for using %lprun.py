#Pop quiz: steps for using %lprun
#Below is the convert_units() function, which converts the heights and weights of our favorite superheroes from metric units to Imperial units.

def convert_units(heroes, heights, weights):

    new_hts = [ht * 0.39370  for ht in heights]
    new_wts = [wt * 2.20462  for wt in weights]

    hero_data = {}

    for i,hero in enumerate(heroes):
        hero_data[hero] = (new_hts[i], new_wts[i])

    return hero_data

#Suppose you have a list of superheroes (named heroes) along with each hero's height (in centimeters) and weight (in kilograms) loaded as NumPy arrays (named hts and wts respectively).

#What are the necessary steps you need to take in order to profile the convert_units() function acting on your superheroes data if you'd like to see line-by-line runtimes?




#Answer : The first and second options from above are necessary.
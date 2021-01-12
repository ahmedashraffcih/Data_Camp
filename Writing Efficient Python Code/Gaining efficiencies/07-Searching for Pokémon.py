#Searching for Pokémon
#Two Pokémon trainers, Ash and Brock, have a collection of ten Pokémon each. Each trainer's Pokédex (their collection of Pokémon) has been loaded into your session as lists called ash_pokedex and brock_pokedex respectively.

#You'd like to see if certain Pokémon are members of either Ash or Brock's Pokédex.

#Let's compare using a set versus using a list when performing this membership testing.


#Instructions 1/4

# - Convert Brock's Pokédex list (brock_pokedex) to a set called brock_pokedex_set.


# Convert Brock's Pokédex to a set
brock_pokedex_set = set(brock_pokedex)
print(brock_pokedex_set)



#Instructions 2/4

# - Check if 'Psyduck' is in Ash's Pokédex list (ash_pokedex) and if 'Psyduck' is in Brock's Pokédex set (brock_pokedex_set).

# Convert Brock's Pokédex to a set
brock_pokedex_set = set(brock_pokedex)
print(brock_pokedex_set)

# Check if Psyduck is in Ash's list and Brock's set
print('Psyduck' in ash_pokedex)
print('Psyduck' in brock_pokedex)



#Instructions 3/4

# - Check if 'Machop' is in Ash's Pokédex list (ash_pokedex) and if 'Machop' is in Brock's Pokédex set (brock_pokedex_set).


# Convert Brock's Pokédex to a set
brock_pokedex_set = set(brock_pokedex)
print(brock_pokedex_set)

# Check if Psyduck is in Ash's list and Brock's set
print('Psyduck' in ash_pokedex)
print('Psyduck' in brock_pokedex_set)

# Check if Machop is in Ash's list and Brock's set
print('Machop' in ash_pokedex)
print('Machop' in brock_pokedex_set)



#Instructions 4/4

# - Question
'''
Within your IPython console, use %timeit to compare membership testing for 'Psyduck' in ash_pokedex, 'Psyduck' in brock_pokedex_set, 'Machop' in ash_pokedex, and 'Machop' in brock_pokedex_set (a total of four different timings).

Don't include the print() function. Only time the commands that you wrote inside the print() function in the previous steps.

Which membership testing was faster?
'''
%timeit 'Psyduck' in ash_pokedex
%timeit 'Psyduck' in brock_pokedex_set
%timeit 'Machop' in ash_pokedex
%timeit 'Machop' in brock_pokedex_set

# Answer : Member testing using a set is faster than using a list in all four cases.


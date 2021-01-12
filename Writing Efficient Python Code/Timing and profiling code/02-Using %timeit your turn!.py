#Using %timeit: your turn!
#You'd like to create a list of integers from 0 to 50 using the range() function. However, you are unsure whether using list comprehension or unpacking the range object into a list is faster. Let's use %timeit to find the best implementation.

#For your convenience, a reference table of time orders of magnitude is provided below (faster at the top).

#	symbol		name		unit (s)
#	ns		nanosecond	10-9
#	µs (us)		microsecond	10-6
#	ms		millisecond	10-3
#	s		second	100




#Instructions 1/3

# - Use list comprehension and range() to create a list of integers from 0 to 50 called nums_list_comp.



# Create a list of integers (0-50) using list comprehension
nums_list_comp = [num for num in range(51)]
print(nums_list_comp)



#Instructions 2/3

# - Use range() to create a list of integers from 0 to 50 and unpack its contents into a list called nums_unpack.


# Create a list of integers (0-50) using list comprehension
nums_list_comp = [num for num in range(51)]
print(nums_list_comp)

# Create a list of integers (0-50) by unpacking range
nums_unpack = [*range(51)]
print(nums_unpack)



#Instructions 3/3

# - Question
# = Use %timeit within your IPython console (i.e. not within the script.py window) to compare the runtimes for creating a list of integers from 0 to 50 using list comprehension vs. unpacking the range object. Don't include the print() statements when timing.


%timeit nums_list_comp = [num for num in range(51)]
%timeit nums_unpack = [*range(51)]


#Answer : Unpacking the range object was faster than list comprehension.
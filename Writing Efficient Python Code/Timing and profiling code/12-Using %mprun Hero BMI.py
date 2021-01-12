#Using %mprun: Hero BMI
#You'd like to calculate the body mass index (BMI) for a selected sample of heroes. BMI can be calculated using the below formula:

#BMI = mass(kg) / height(m)^2

#A random sample of 25,000 superheroes has been loaded into your session as an array called sample_indices. This sample is a list of indices that corresponds to each superhero's index selected from the heroes list.

#A function named calc_bmi_lists has also been created and saved to a file titled bmi_lists.py. For convenience, it is displayed below:

def calc_bmi_lists(sample_indices, hts, wts):

    # Gather sample heights and weights as lists
    s_hts = [hts[i] for i in sample_indices]
    s_wts = [wts[i] for i in sample_indices]

    # Convert heights from cm to m and square with list comprehension
    s_hts_m_sqr = [(ht / 100) ** 2 for ht in s_hts]

    # Calculate BMIs as a list with list comprehension
    bmis = [s_wts[i] / s_hts_m_sqr[i] for i in range(len(sample_indices))]

    return bmis

#Notice that this function performs all necessary calculations using list comprehension (hence the name calc_bmi_lists()). Dig deeper into this function and analyze the memory footprint for performing your calculations using lists:

#Load the memory_profiler package into your IPython session.
#Import calc_bmi_lists from bmi_lists.
#Once you've completed the above steps, use %mprun to profile the calc_bmi_lists() function acting on your superheroes data. The hts array and wts array have already been loaded into your session.
#After you've finished coding, answer the following question:

#How much memory do the list comprehension lines of code consume in the calc_bmi_lists() function? (i.e., what is the total sum of the Increment column for these four lines of code?)



In [1]:
%load_ext memory_profiler
In [2]:
from bmi_lists import calc_bmi_lists
In [3]:
%mprun -f calc_bmi_lists calc_bmi_lists(sample_indices, hts, wts)



#Answer  : 0.1 MiB - 2.0 MiB
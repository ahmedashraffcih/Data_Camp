#Run differentials with .itertuples()
#The New York Yankees have made a trade with the San Francisco Giants for your analyst contract— you're a hot commodity! Your new boss has seen your work with the Giants and now wants you to do something similar with the Yankees data. He'd like you to calculate run differentials for the Yankees from the year 1962 to the year 2012 and find which season they had the best run differential.

#You've remembered the function you used when working with the Giants and quickly write it down:

def calc_run_diff(runs_scored, runs_allowed):

    run_diff = runs_scored - runs_allowed

    return run_diff

#Let's use .itertuples() to loop over the yankees_df DataFrame (which has been loaded into your session) and calculate run differentials.


#Instructions  1/4

# - Use .itertuples() to loop over yankees_df and grab each row's runs scored and runs allowed values.


run_diffs = []

# Loop over the DataFrame and calculate each row's run differential
for i in yankees_df.itertuples():
    
    runs_scored = i.RS
    runs_allowed = i.RA

#Instructions  2/4

# - Now, calculate each row's run differential using calc_run_diff(). Be sure to append each row's run differential to run_diffs.


run_diffs = []

# Loop over the DataFrame and calculate each row's run differential
for row in yankees_df.itertuples():
    
    runs_scored = row.RS
    runs_allowed = row.RA

    run_diff = calc_run_diff(runs_scored, runs_allowed)
    
    run_diffs.append(run_diff)


#Instructions  3/4

# - Append a new column called 'RD' to the yankees_df DataFrame that contains the run differentials you calculated.


run_diffs = []

# Loop over the DataFrame and calculate each row's run differential
for row in yankees_df.itertuples():
    
    runs_scored = row.RS
    runs_allowed = row.RA

    run_diff = calc_run_diff(runs_scored, runs_allowed)
    
    run_diffs.append(run_diff)

# Append new column
yankees_df['RD'] = run_diffs
print(yankees_df)


#Instructions  4/4

# - Question
#   In what year within your DataFrame did the New York Yankees have the highest run differential?
#   ou'll need to rerun the code that creates the 'RD' column if you'd like to analyze the DataFrame with code rather than looking at the console output.

run_diffs = []
for row in yankees_df.itertuples():
    
    runs_scored = row.RS
    runs_allowed = row.RA

    run_diff = calc_run_diff(runs_scored, runs_allowed)
    
    run_diffs.append(run_diff)

# Append new column
yankees_df['RD'] = run_diffs
print(max(yankees_df.RD))

# ANSWER :  In 1998 (with a Run Differential of 309)
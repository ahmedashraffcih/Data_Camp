# Scraping the NASDAQ
# Training deep neural nets is expensive! You might as well invest in NVIDIA stock since you're spending so much on GPUs. To pick the best time to invest, you are going to collect and analyze some data on how their stock is doing. The context manager stock('NVDA') will connect to the NASDAQ and return an object that you can use to get the latest price by calling its .price() method.

# You want to connect to stock('NVDA') and record 10 timesteps of price data by writing it to the file NVDA.txt.

# You will notice the use of an underscore when iterating over the for loop. If this is confusing to you, don't worry. It could easily be replaced with i, if we planned to do something with it, like use it as an index. Since we won't be using it, we can use a dummy operator, _, which doesn't use any additional memory.


#Instructions  
# - Use the stock('NVDA') context manager and assign the result to nvda.
# - Open a file for writing with open('NVDA.txt', 'w') and assign the file object to f_out so you can record the price over time.

# Use the "stock('NVDA')" context manager
# and assign the result to the variable "nvda"
with stock('NVDA') as nvda:
  # Open "NVDA.txt" for writing as f_out
  with open('NVDA.txt','w') as f_out:
    for _ in range(10):
      value = nvda.price()
      print('Logging ${:.2f} for NVDA'.format(value))
      f_out.write('{:.2f}\n'.format(value))
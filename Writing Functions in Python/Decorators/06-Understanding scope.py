# Understanding scope
# What four values does this script print?

x = 50

def one():
  x = 10

def two():
  global x
  x = 30

def three():
  x = 100
  print(x)

for func in [one, two, three]:
  func()
  print(x)

#Possible Answers

# 1- 50, 30, 100, 50

# 2- 10, 30, 30, 30

# 3- 50, 30, 100, 30 ---- right answer

# 4- 10, 30, 100, 50

# 5- 50, 50, 50, 50

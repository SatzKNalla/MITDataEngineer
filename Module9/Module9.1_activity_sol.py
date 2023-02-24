#Codio Coding Activity 9.1 Solution

#Q1

score = 100
def score():
    global score
    score = 0
    print(score)
score()  
score()


#Q2

def add_underscores(word):
    new_word = "_"
    for i in range(len(word)):
        # test change
        new_word = new_word + word[i] + "_"
    return new_word

word = "Python"
print(add_underscores(word))

#Q3

def average(x, y):
    result = (x+y)/2
    return result

#Q4

def buggy_function(x):
    is_even = (x % 2 == 0)

    if type(x) != int:
        return False

    if x <= 10:
        if is_even:
            return True
    if x > 10:
        if not is_even:
            return True
    return False

#Q5

def factorial(n):
   counter = 1
   total = n
   while counter < n:
       total *= (n-counter)
       counter += 1
   return total


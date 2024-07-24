=begin

PROBLEM

Using the multiply method from the "Multiplying Two Numbers" problem, write a
method that computes the square of its argument (the square is the result of
multiplying a number by itself).

TEST CASES

square(5) == 25
square(-8) == 64
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: one number as an argument to a method
    - Output: return value of computing the square of the argument

    - Rules:
      - Explicit:
        - create a method that takes one argument
        - method returns the square of the argument

      - Implicit:
        - argument should be an integer

- Examples and Test Cases:
    - square(5) == 25
      square(-8) == 64

- Data Structure:
    - method

- Algorithm:
    - Define a method called 'square' with one integer parameter
      - Return the square of the parameter

=end

def multiply(a, b)
  a * b
end

def square(a)
  multiply(a, a)
end

square(5) == 25
square(-8) == 64

=begin

PROBLEM

Create a method that takes two arguments, multiplies them together, and returns the result.

TEST CASES

multiply(5, 3) == 15
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: two numbers as arguments to a method
    - Output: return value of product of two arguments

    - Rules:
      - Explicit:
        - create a method that takes two arguments
        - method returns the product of the two arguments

      - Implicit:
        - arguments should be positive integers

- Examples and Test Cases:
    - multiply(5, 3) == 15

- Data Structure:
    - method

- Algorithm:
    - Define a method called 'multiply' with two integer parameters
      - Return the product of the two parameters

=end

def multiply(a, b)
  a * b
end

multiply(5, 3) == 15

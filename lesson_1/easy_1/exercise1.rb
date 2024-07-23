=begin

PROBLEM

Write a method that takes two arguments, a string and a positive integer, and
prints the string as many times as the integer indicates.

TEST CASES

repeat('Hello', 3)
------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: A string and a positive integer
    - Output: The same string as the input, printed as many times as the
              inputted integer indicates

    - Rules:
      - Explicit:
        - Integer input must be positive
        - Output string is the same as the input string
        - Output of the method is the input string printed as many times as
          the inputted integer indicates
      - Implicit:
        - Each time the string is printed, it will be on a newline

- Examples and Test Cases:
    - repeat('Hello', 3)

- Data Structure:
    - none

- Algorithm:
    - Define a method called 'repeat' that has two parameters:
      'str' and 'int'
    - Iterate int times ONLY IF int is positive
      - print 'str' each iteration

=end

def repeat(str, int)
  if int > 0
    int.times { puts str }
  end
end

repeat('Hello', 3)

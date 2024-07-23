=begin

PROBLEM

Write a method that takes two arguments, a positive integer and a boolean, and
calculates the bonus for a given salary. If the boolean is true, the bonus
should be half of the salary. If the boolean is false, the bonus should be 0.

TEST CASES

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: positive integer (given salary)
             boolean (true for half salary, false for 0)
    - Output: bonus for a given salary

    - Rules:
      - Explicit:
        - method takes two arguments (positive integer, and a boolean)
        - calculates the bonus for a given salary (the positive integer)
        - if the boolean is true, the bonus is half the salary
        - if the boolean is false, the bonus is 0

      - Implicit:
        - will not work with negative integers or 0 as the given salary

- Examples and Test Cases:
    - puts calculate_bonus(2800, true) == 1400
    - puts calculate_bonus(1000, false) == 0
    - puts calculate_bonus(50000, true) == 25000

- Data Structure:
    - none needed

- Algorithm:
    - Define a method called 'calculate_bonus' with two parameters:
          - an integer called 'salary'
          - a boolean called 'half'
    - Check whether 'half' is true or false
          - if true, return salary / 2
          - if false, return 0

=end

def calculate_bonus(salary, half)
  half ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

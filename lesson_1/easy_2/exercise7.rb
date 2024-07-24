=begin

PROBLEM

Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

TEST CASES

-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: None
    - Output: all even numbers from 1 to 99, inclusive

    - Rules:
      - Explicit:
        - print all even numbers from 1 to 99, inclusive
        - each number must be on a separate line

      - Implicit:
        - does not need any input

- Examples and Test Cases:
    - Output: 2
              4
              6
              ...
              96
              98

- Data Structure:
    - none needed

- Algorithm:
    - Iterate 99 times
    - If current iteration is even, print out to the console
      Otherwise, skip

=end

puts (1..99).select { |x| x.even? }

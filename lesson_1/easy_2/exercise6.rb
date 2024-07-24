=begin

PROBLEM

Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

TEST CASES

-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: None
    - Output: all odd numbers from 1 to 99, inclusive

    - Rules:
      - Explicit:
        - print all odd numbers from 1 to 99, inclusive
        - each number must be on a separate line

      - Implicit:
        - does not need any input

- Examples and Test Cases:
    - Output: 1
              3
              5
              ...
              97
              99

- Data Structure:
    - none needed

- Algorithm:
    - Iterate 99 times
    - If current iteration is odd, print out to the console
      Otherwise, skip

=end

for i in 1..99 do
  puts i if i.odd?
end

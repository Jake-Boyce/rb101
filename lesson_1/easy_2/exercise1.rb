=begin

PROBLEM

Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

TEST CASES

Teddy is 69 years old!
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: Random number generated within the program (input doesn't come
             from user)
    - Output: A string that displays Teddy's age, randomly chosen between 
              20 and 200

    - Rules:
      - Explicit:
        - Teddy's age is a randomly generated number between 20 and 200

      - Implicit:
        - Output should match the example output

- Examples and Test Cases:
    - Teddy is 69 years old!

- Data Structure:
    - none needed

- Algorithm:
    - Print out a string with a randomly generated number between 20 and 200, 
      interpolated within the string.

=end

puts "Teddy is #{rand(20..200)} years old!"

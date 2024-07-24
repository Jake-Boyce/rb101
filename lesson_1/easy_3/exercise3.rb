=begin

PROBLEM

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

TEST CASES

Please write word or multiple words: walk
There are 4 characters in "walk".

Please write word or multiple words: walk, don't run
There are 13 characters in "walk, don't run".
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: string
    - Output: number of characters in string (not including spaces)

    - Rules:
      - Explicit:
        - program will ask user for input of a word or multiple words
        - print out the number of characters in the user's input, excluding
          spaces

      - Implicit:
        - prompt and input will be on the same line
        - the resulting output will also display the original input

- Examples and Test Cases:
    - Please write word or multiple words: walk
      There are 4 characters in "walk".

      Please write word or multiple words: walk, don't run
      There are 13 characters in "walk, don't run".

- Data Structure:
    - strings

- Algorithm:
    - Prompt for input
    - Define a local variable called 'input' and assign it to user's response
    - Define a local variable called 'count' and assignt it to 0
    - Iterate/loop through 'input'
      - if current character is not a space, increment count
    - Print out message with count and original strong, formatted as per
      examples

=end

print 'Please write word or multiple words: '
input = gets.chomp

count = 0
input.each_char { |char| count += 1 if char != ' ' }

puts "There are #{count} characters in \"#{input}\"."

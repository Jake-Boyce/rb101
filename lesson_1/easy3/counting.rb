=begin

Understand the problem:
  inputs: string

  output: integer (number of characters in input string)

  requirements:
    prompt user for string
    prompt should use 'print' to keep prompt and input on the same line
    print number of characters to the console
    spaces should not be counted as characters

  mental model:
    Prompt the user for a word or multiple words, then count each
    non-space character in their response. Finally, display the number
    of characters.

Examples:
  inputs: walk
  output: There are 4 characters in "walk".

  inputs: walk, don't run
  output: There are 13 characters in "walk, don't run".

Algorithm:
  1. Prompt the user for a word or multiple words
  2. Assign a variable called input to the user's input
  3. Assign a variable called char_count to 0
  4. Iterate over each character of input
     1. If current character is a space (' '), skip to next iteration
     2. Otherwise, increment char_count
  5. Display the resulting char_count to the console

=end

print "Please write a word or multiple words: "
input = gets.chomp
char_count = 0

input.each_char do |char|
  next if char == ' '
  char_count += 1
end

puts "There are #{char_count} characters in \"#{input}\"."

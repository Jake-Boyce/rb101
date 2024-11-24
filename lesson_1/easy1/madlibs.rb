=begin

Understand the problem:
  inputs:
    noun
    verb
    adjective
    adverb

  output:
    story created from using the inputs

  requirements:
    prompt for user input for each of the required inputs
      noun, verb, adjective, adverb
      each on a separate line
      use 'print' instead of 'puts' so that user's input is on
        the same line as the prompt
    store each into their own variables
    print out a blank line to distinguish inputs from output
    print out a story utilizing each of the four inputs

  mental model:
    Prompt the user for a noun, a verb, an adjective, and an adverb.
    Using all four of the inputs, print out a story.

  examples:

    inputs:
      Enter a noun: dog
      Enter a verb: walk
      Enter an adjective: blue
      Enter an adverb: quickly

    output:
      Do you walk your blue dog quickly? That's hilarious!

  algorithm:
    1. Prompt the user for a noun and save it in a variable
    2. Prompt for a verb and save it in a variable
    3. Do the same for an adjective
    4. And finally, an adverb
    5. Print out a blank line
    6. Print out a story, using string interpolation to include each
       of the four variables

=end

print "Enter a noun: "
noun = gets.chomp
print "Enter a verb: "
verb = gets.chomp
print "Enter an adjective: "
adjective = gets.chomp
print "Enter a adverb: "
adverb = gets.chomp

puts
puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

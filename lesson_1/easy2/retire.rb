=begin

Understand the problem:
  inputs: age (integer)
          target age (integer)

  output: string that displays current year,
          target retirement year, and how many years until
          target year

  requirements:
    prompt for current age and target retirement age
    use 'print' instead of 'puts' so that input is on the same
      line as prompt
    print out a blank line to separate input/prompts from final output
    print out current year and retirement year on first line of output
    print out years until retirement on second line

  mental model:
    Prompting the user for their current age and target retirement age,
    calculate and display their target retirement year as well as how 
    many years until that target year.

Examples:
  inputs:
    What is your age? 30
    At what age would you like to retire? 70

  output:
    It's 2016. You will retire in 2056.
    You have only 40 years of work to go!

Algorithm:
  1. Print out a message prompting user for their age
  2. Convert their input into an integer and save it to a variable called
     current_age
  3. Prompt for their target retirement age, convert to integer, and save
     to a variable called retirement_age
  4. Find out current year with Time.now.year and save to variable current_year
  5. Assign variable called years_to_go to result of subtracting current_age
     from retirement_age
  6. Assign variable called retirement_year to result of adding current_year
     and years_to_go
  7. Print out blank line to separate input/prompts from output
  8. Print out current year and retirement year
  9. Print out years_to_go

=end

print "What is your age? "
current_age = gets.to_i
print "At what age would you like to retire? "
retirement_age = gets.to_i

current_year = Time.now.year
years_to_go = retirement_age - current_age
retirement_year = current_year + years_to_go

puts # blank line
puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_go} years of work to go!"

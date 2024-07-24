=begin

PROBLEM

Build a program that displays when the user will retire and how many years
she has to work till retirement.

TEST CASES

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
-------------------------------------------------------------------------------

PEDAC

- Problem:
    - Input: current age and planned retirement age
    - Output: current year, year of retirement, and how many years of work to
              go

    - Rules:
      - Explicit:
        - Print out when the user will retire
        - Print out how many years they have to work until retirement

      - Implicit:
        - Prompt for user's age
        - Prompt for planned retirement age
        - Print out current year
        - Print out planned retirement year

- Examples and Test Cases:
    - What is your age? 30
      At what age would you like to retire? 70

      It's 2016. You will retire in 2056.
      You have only 40 years of work to go!

- Data Structure:
    - none needed

- Algorithm:
    - Prompt for user's age
    - Define a local variable called 'age' and assign it to the input
    - Prompt for planned retirement age
    - Define a local variable called 'retirement_age' and assign it to the
      input
    - Define a local variable called 'work_years' and assign it to the
      difference of 'retirement_age' and 'age'
    - Define a local variable called 'current_year' and assign it to current
      year
    - Define a local variabled called 'retirement_year' and assign it to the
      sum of 'work_years' and 'current_year'
    - Print the output formatted per example above

=end

print 'What is your age? '
age = gets.to_i
print 'At what age would you like to retire? '
retirement_age = gets.to_i

work_years = retirement_age - age
current_year = Time.now.year
retirement_year = current_year + work_years

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{work_years} years of work to go!"

=begin

Understand the problem:
  inputs: bill amount (float)
          tip rate (float)

  output: tip (float)
          total bill amount (float)

  requirements:
    prompt for a bill amount and tip rate
    compute the tip
    display both the tip and total bill amount
    use 'print' instead of 'puts' so that user input is on same line
      as prompt
    use '$' when displaying the tip and total bill amount
    output should be two separate lines, one for the tip and one for
      total bill

  mental model:
    Prompting the user for a bill amount and a tip rate, calculate the
    dollar amount for the tip, as well as the total amount of the bill
    including the tip. Finally, display both the tip and the total bill.

Examples:
  inputs:
    What is the bill? 200
    What is the tip percentage? 15

  output: 
    The tip is $30.0
    The total is $230.0

Algorithm:
  1. Print a string prompting the user to enter the bill amount
  2. Save the user input to a variable called bill and convert it to
     a float
  3. Prompt the user for the tip percentage
  4. Save the input to a variabled called tip_rate, convert it to a float
     and multiply it by 0.01
  5. Multiply the bill by the tip_rate and save the result to a variable
     called tip, rounding to two decimal points
  6. Add the bill and the tip and save the result to a variable called
     total_bill, rounding to two decimal points
  7. Print out a blank line to separate user input from the output
  8. Print out the tip and the total bill, each on separate lines, formatted
     as per the example

=end

# print "What is the bill? "
# bill = gets.to_f
# print "What is the tip percentage? "
# tip_rate = gets.to_f * 0.01
#
# tip = (bill * tip_rate).round(2)
# total_bill = (tip + bill).round(2)
#
# puts # print out blank line
# puts "The tip is $#{tip}"
# puts "The total is $#{total_bill}"

# further_exploration
# format the output to always have 2 decimal places

print "What is the bill? "
bill = gets.to_f
print "What is the tip percentage? "
tip_rate = gets.to_f * 0.01

tip = (bill * tip_rate).round(2)
total_bill = (tip + bill).round(2)

puts # print out blank line
puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total_bill)}"

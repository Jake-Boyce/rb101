=begin

Understand the problem:
  inputs: two arguments (any Ruby expressions)

  output: boolean

  requirements:
    define a method called xor
    xor takes two arguments
    arguments can be any Ruby expressions (see examples)
    returns true if only one of its arguments is truthy, false otherwise
    return value must be a boolean result, and not a truthy/falsy value

  mental model:
    Given two arguments, determine the truthiness of each. Then return
    true if only one of the arguments is truthy. Return false otherwise.

Examples:
  inputs: 5.even?, 4.even?
  output: true

  inputs: 5.odd?, 4.odd?
  output: true

  inputs: 5.odd?, 4.even?
  output: false

  inputs: 5.even?, 4.odd?
  output: false

  inputs: 'abc', nil
  output: true

  inputs: nil, 'abc'
  output: true

  inputs: 'abc', 'abc'
  output: false

  inputs: nil, nil
  output: false

Algorithm:
  1. Compare arg1 && !arg2 || !arg1 && arg2
  2. Return true if true, false if false

=end

def xor?(arg1, arg2)
  (!!arg1 && !arg2) || (!arg1 && !!arg2)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?('abc', nil) == true
p xor?(nil, 'abc') == true
p xor?('abc', 'abc') == false
p xor?(nil, nil) == false

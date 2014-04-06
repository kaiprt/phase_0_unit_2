
# U2.W4: 3_solution


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# => Any number.
# Output:
# => The number with commas every three characters.
# Steps:
=begin
1. Define variable add_comma that takes a number as an argument.
2. Turn the number into a string.
3. Set a variable equal to a regular expression that finds a character every 3 characters.
4. Substitute with two arguments the regex and a backreference to swap the character with the character and a comma
5. Return the number.
6. Close the method.
=end


# 3. Initial Solution
def add_comma(number)
  number.to_s!
  comma_finder = /(\d)(?=(\d\d\d)+$)/
  number = number.gsub(comma_finder, '\1,')
  return number
end
# 4. Refactored Solution
def add_comma(number)
  return number.to_s.gsub!(/(\d)(?=(\d\d\d)+$)/, '\1,')
end

# 1. DRIVER TESTS GO BELOW THIS LINE
p add_comma(1000) == "1,000" # => Testing to see if method works with 1 comma.
p add_comma(10000) == "10,000" # => Testing to see if method works with up to 1 comma in the right position.
p add_comma(1000000) == "1,000,000" # => Testing to see if method works with up to 2 commas.
p add_comma(1000000000) == "1,000,000,000" # => Testing to see if method works with up to 3 commas.

# 5. Reflection 
=begin
This challenge was fun and took me a while to complete. The biggest issue I had was writing the right syntax for the regular expression I wanted to use. There are other ways besides regex to
solve this issue but I believe a regex would be the lightest way to solving this problem. I found it tedious to set up the regex the way I wanted but otherwise this challenge was fun! I feel
good about the learning objectives and need to study regex a little more! 
=end
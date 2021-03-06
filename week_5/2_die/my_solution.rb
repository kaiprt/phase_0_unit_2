# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself

# 2. Pseudocode

# Input: An array of strings.
# Output: Returns one of the strings in the array.
# Steps:
=begin
1. Create an if/else statement in the initialize method.
  1.1 if the labels are empty then raise an argument error.
  1.2 else set an instance variable equal to argument 1 of the initialize method.
2. Set the sides method to return length of the array which represents the sides of a die.
3. Set the roll method to return a rondom string from the array. 
=end

# 3. Initial Solution

class Die
  def initialize(labels)
    if labels.empty? == true
      raise ArgumentError.new("Labels can't be empty!")
    else
      @labels = labels
    end
  end

  def sides
    return @sides = @labels.size.to_i
  end

  def roll
    return @roll = @labels[rand(@labels.length)]
  end
end



# 4. Refactored Solution
# I believe the code I have written above can not be simplified without changing the structure.



# 1. DRIVER TESTS GO BELOW THIS LINE
print die = Die.new(["A","B","C"])
print die.sides == 3
print die.roll == "A" or "B" or "C"


# 5. Reflection 
=begin
This challeng was similiar to the first challenge except it dealt with strings instead
of integers. It was fairly easy and I felt that I understand implementing basic Ruby
class and writing instance variables, using if else statements, and using built in ruby
methods.
=end